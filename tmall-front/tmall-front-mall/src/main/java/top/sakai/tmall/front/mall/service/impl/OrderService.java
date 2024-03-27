package top.sakai.tmall.front.mall.service.impl;

import lombok.extern.slf4j.Slf4j;
import org.jetbrains.annotations.NotNull;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import top.sakai.tmall.common.exception.ServiceException;
import top.sakai.tmall.common.pojo.CurrentUser;
import top.sakai.tmall.common.pojo.PageData;
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
import top.sakai.tmall.front.mall.pojo.vo.OrderGoodsItemVO;
import top.sakai.tmall.front.mall.pojo.vo.OrderListVO;
import top.sakai.tmall.front.mall.service.IOrderService;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.function.Function;
import java.util.stream.Collectors;

@Service
@Slf4j
public class OrderService implements IOrderService {

    private final IOrderRepository orderRepository;
    private final IOrderItemRepository orderItemRepository;
    private final IGoodsRepository goodsRepository;
    private final IUserRepository userRepository;

    public OrderService(IOrderRepository orderRepository, IOrderItemRepository orderItemRepository, IGoodsRepository goodsRepository, IUserRepository userRepository) {
        this.orderRepository = orderRepository;
        this.orderItemRepository = orderItemRepository;
        this.goodsRepository = goodsRepository;
        this.userRepository = userRepository;
    }

    /**
     * 构建商品详情
     *
     * @param goodsNum  商品的数量
     * @param goodsId   商品的ID
     * @param salePrice 售价
     * @return orderItemPO
     */
    @NotNull
    private static OrderItemPO buildOrderItemPO(Integer goodsNum, Long goodsId, BigDecimal salePrice) {
        OrderItemPO orderItemPO = new OrderItemPO();
        orderItemPO.setGoodsNum(goodsNum);
        orderItemPO.setGoodsId(goodsId);
        orderItemPO.setSaleUnitPrice(salePrice);
        return orderItemPO;
    }

    @NotNull
    private static OrderPO bulidOrderPO(@NotNull CurrentUser user, BigDecimal totalPrice, Integer goodsNums) {
        OrderPO orderPO = new OrderPO();
        orderPO.setOrderNo(UUID.randomUUID().toString());//uuid 后续可以雪花算法
        orderPO.setTotalPrice(totalPrice);
        orderPO.setBuyerId(user.getId());
        orderPO.setGoodsNum(goodsNums);
        orderPO.setOrderState(0);
        return orderPO;
    }

    @NotNull
    private static OrderGoodsItemVO orderGoodsItemPO2VO(OrderItemPO orderItemPO) {
        OrderGoodsItemVO orderGoodsItemVO = new OrderGoodsItemVO();
        BeanUtils.copyProperties(orderItemPO, orderGoodsItemVO);
        return orderGoodsItemVO;
    }

    @NotNull
    private static OrderListVO orderPO2VO(OrderPO orderPO) {
        OrderListVO orderListVO = new OrderListVO();
        BeanUtils.copyProperties(orderPO, orderListVO);
        return orderListVO;
    }

    @Override
    public void createOrder(CurrentUser user, @NotNull OrderAddParam orderAddParam) {

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
        List<GoodsPO> goodsPOS = goods.stream().filter(g -> ((g.getIsPutOn() != null) && 0 == g.getIsPutOn())).collect(Collectors.toList());
        for (GoodsPO goodsPO : goodsPOS) {
            Integer isPutOn = goodsPO.getIsPutOn();
            if (isPutOn == null) {
                throw new RuntimeException("商品未上架");
            }
        }

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
        int goodsNums = 0;
        List<OrderItemPO> orderItemPOS = new ArrayList<>();

        for (GoodsItemParam goodsItemParam : goodsItemParams) {
            Long goodsId = goodsItemParam.getGoodsId();
            Integer goodsNum = goodsItemParam.getGoodsNum();
            GoodsPO goodsPO = goodsGroup.get(goodsId);
            BigDecimal salePrice = goodsPO.getSalePrice();
            BigDecimal multiply = salePrice.multiply(new BigDecimal(goodsNum));
            totalPrice = totalPrice.add(multiply);
            goodsNums = goodsNums + goodsNum;
            OrderItemPO orderItemPO = buildOrderItemPO(goodsNum, goodsId, salePrice);
            //BeanUtils.copyProperties(goodsPO,orderItemPO);//copy 名称不一样导致 赋值失败
            orderItemPOS.add(orderItemPO);
        }

        OrderPO orderPO = bulidOrderPO(user, totalPrice, goodsNums);
        Integer rows = orderRepository.save(orderPO);
        if (rows != 1) {
            throw new RuntimeException("商品插入失败");
        }

        orderItemPOS.forEach(orderItemPO -> {
            orderItemPO.setOrderId(orderPO.getId());
            Integer itemRows = orderItemRepository.save(orderItemPO); //建议用批保存方式,购物商品数量较少可以循环保存
            if (itemRows != 1) {
                throw new RuntimeException();
            }
        });
    }

    @Override
    public PageData<OrderListVO> listOrder(@NotNull CurrentUser user, Integer pageSize, Integer pageNum) {
        PageData<OrderListVO> result = new PageData<>();
        PageData<OrderPO> orderPOS = orderRepository.pageOrderListByUserId(user.getId(), pageSize, pageNum);
        BeanUtils.copyProperties(orderPOS, result);
        log.debug("订单列表信息 入参{},出参:{}", user.getId(), orderPOS);
        List<OrderListVO> orderListVOS = new ArrayList<>();
        if (!CollectionUtils.isEmpty(orderPOS.getList())) {
            for (OrderPO orderPO : orderPOS.getList()) {
                OrderListVO orderListVO = orderPO2VO(orderPO);
                orderListVOS.add(orderListVO);
                List<OrderItemPO> orderItemPOS = orderItemRepository.listOrderItemByOrderId(orderPO.getId());
                log.debug("商品详情 入参：{}, 出参：{}", orderPO.getId(), orderItemPOS);
                List<OrderGoodsItemVO> orderGoodsItemVOS = new ArrayList<>();
                if (!CollectionUtils.isEmpty(orderItemPOS)) {
                    for (OrderItemPO orderItemPO : orderItemPOS) {
                        OrderGoodsItemVO orderGoodsItemVO = orderGoodsItemPO2VO(orderItemPO);
                        orderGoodsItemVOS.add(orderGoodsItemVO);
                    }
                }
                result.setList(orderListVOS);
                orderListVO.setGoodsItemVOS(orderGoodsItemVOS);
            }
        }
        return result;
    }

}