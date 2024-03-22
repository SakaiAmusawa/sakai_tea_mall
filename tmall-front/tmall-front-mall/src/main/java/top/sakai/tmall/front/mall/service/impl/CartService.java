package top.sakai.tmall.front.mall.service.impl;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.sakai.tmall.common.pojo.CurrentUser;
import top.sakai.tmall.front.mall.dao.repository.ICartRepository;
import top.sakai.tmall.front.mall.pojo.po.CartPO;
import top.sakai.tmall.front.mall.service.ICartService;

@Service
@Slf4j
public class CartService implements ICartService {

    @Autowired
    private ICartRepository cartRepository;

    /**
     * 业务流程
     * <p>
     * 1.商品是否存在
     * <p>
     * 2.商品是否上架
     * <p>
     * 3.加入购物车 购物车阿德数据放到什么地方？ 数据库 or Redis
     * 高读高写 数据可以接受丢失？
     * 事务 ACID Redis 和 MySQL 的支持是不一样的
     * 考虑过后决定放入Redis
     * 使用HASH类型
     * <p>
     */
    @Override
    public void addCart(CurrentUser user, Long goodsId, Integer goodsNum) {
        CartPO cartPO = new CartPO();
        cartPO.setGoodsId(goodsId);
        cartPO.setGoodsNum(goodsNum);
        cartPO.setGoodsName("HUAWEI-P6000");
        Long addPrice = (long) (9999.99 * 100);
        cartPO.setAddPrice(addPrice);
        cartRepository.add(cartPO,user.getId());
    }
}
