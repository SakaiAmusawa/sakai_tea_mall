package top.sakai.tmall.front.mall.dao.repository;

import top.sakai.tmall.front.mall.pojo.po.CartPO;

import java.util.List;

public interface ICartRepository {
    void add(CartPO cartPO, Long userId);

    CartPO getGoodsByGoodsIdAndUserId(Long userId, Long goodsId);

    void addCartGoodsNum(Long userId, Long goodsId, Integer goodsNum);

    List<CartPO> list(Long userId);
}
