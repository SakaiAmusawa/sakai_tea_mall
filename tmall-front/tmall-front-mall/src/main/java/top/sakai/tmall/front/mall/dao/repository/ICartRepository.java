package top.sakai.tmall.front.mall.dao.repository;

import top.sakai.tmall.front.mall.pojo.po.CartPO;

public interface ICartRepository {
    void add(CartPO cartPO, Long userId);

    CartPO getGoodsByGoodsIdAndUserId(Long userId, Long goodsId);

    void addCartGoodsNum(Long userId, Long goodsId, Integer goodsNum);
}
