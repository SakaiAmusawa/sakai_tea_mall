package top.sakai.tmall.front.mall.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.sakai.tmall.common.exception.ServiceException;
import top.sakai.tmall.common.pojo.CurrentUser;
import top.sakai.tmall.common.response.StatusCode;
import top.sakai.tmall.front.mall.dao.repository.IGoodsRepository;
import top.sakai.tmall.front.mall.dao.repository.IOrderItemRepository;
import top.sakai.tmall.front.mall.dao.repository.IOrderRepository;
import top.sakai.tmall.front.mall.dao.repository.IUserRepository;
import top.sakai.tmall.front.mall.pojo.param.GoodsItemParam;
import top.sakai.tmall.front.mall.pojo.param.OrderAddParam;
import top.sakai.tmall.front.mall.pojo.param.UserAddressParam;
import top.sakai.tmall.front.mall.pojo.po.GoodsPO;
import top.sakai.tmall.front.mall.pojo.po.OrderItemPO;
import top.sakai.tmall.front.mall.pojo.po.OrderPO;
import top.sakai.tmall.front.mall.pojo.po.UserAddressPO;
import top.sakai.tmall.front.mall.service.IOrderService;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.function.Function;
import java.util.stream.Collectors;

@Service
public class OrderService implements IOrderService {

    @Autowired
    private IOrderRepository orderRepository;
    @Autowired
    private IOrderItemRepository orderItemRepository;
    @Autowired
    private IGoodsRepository goodsRepository;
    @Autowired
    private IUserRepository userRepository;

    @Override
    public void createOrder(CurrentUser user, OrderAddParam orderAddParam) {

        //验证商品 商品是否存在，是否上架
        List<GoodsItemParam> goodsItemParams = orderAddParam.getGoodsItemParams();
        List<Long> goodsIds = new ArrayList<>();
        goodsItemParams.forEach(goodsItemParam -> goodsIds.add(goodsItemParam.getGoodsId()));

        //查询商品是否存在
        List<GoodsPO> goods = goodsRepository.listByGoodsIds(goodsIds);
        if (goodsIds.size() != goods.size()) {
            throw new ServiceException(StatusCode.GOODS_NOT_EXIST);
        }

        //查询商品是否上架
        goods.forEach(g -> {
            if ("0".equals(g.getIsPutOn())) {
                throw new ServiceException(StatusCode.GOODS_NOT_PUT);
            }
        });

        //判断用户信息
        UserAddressParam userAddressParam = orderAddParam.getUserAddressParam();
        Integer addressId = userAddressParam.getAddressId();
        UserAddressPO userAddressPO = userRepository.getAddressByUserIdAndAddressId(user.getId(), addressId);
        if (userAddressPO == null) {
            throw new ServiceException(StatusCode.USER_ADDRESS_ERROR);
        }

        //计算商品价格
        Map<Long, GoodsPO> goodsGroup = goods.stream().collect(Collectors.toMap(GoodsPO::getId, Function.identity()));
        BigDecimal totalPrice = BigDecimal.ZERO;
        Integer goodsNums = 0;
        List<OrderItemPO> orderItemPOS = new ArrayList<>();

        for (GoodsItemParam goodsItemParam : goodsItemParams) {
            Long goodsId = goodsItemParam.getGoodsId();
            Integer goodsNum = goodsItemParam.getGoodsNum();
            GoodsPO goodsPO = goodsGroup.get(goodsId);
            BigDecimal salePrice = goodsPO.getSalePrice();
            BigDecimal multiply = salePrice.multiply(new BigDecimal(goodsNum));
            totalPrice = totalPrice.add(multiply);
            goodsNums = goodsNums + goodsNum;
            OrderItemPO orderItemPO = new OrderItemPO();
            orderItemPO.setGoodsNum(goodsNum);
            orderItemPO.setGoodsId(goodsId);
            orderItemPO.setSaleUnitPrice(salePrice);
            //BeanUtils.copyProperties(goodsPO,orderItemPO);//copy 名称不一样导致 赋值失败
            orderItemPOS.add(orderItemPO);
        }

        OrderPO orderPO = new OrderPO();
        orderPO.setOrderNo(UUID.randomUUID().toString());//uuid 后续可以雪花算法
        orderPO.setTotalPrice(totalPrice);
        orderPO.setBuyerId(user.getId());
        orderPO.setGoodsNum(goodsNums);
        orderPO.setOrderState(0);
        Integer rows = orderRepository.save(orderPO);

        orderItemPOS.forEach(orderItemPO -> {
            orderItemPO.setOrderId(orderPO.getId());
            Integer itemRows = orderItemRepository.save(orderItemPO); //建议用批保存方式,购物商品数量较少可以循环保存
            if (itemRows != 1) {
                throw new RuntimeException();
            }
        });
    }
}