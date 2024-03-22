package top.sakai.tmall.front.mall.dao.repository;

import top.sakai.tmall.front.mall.pojo.po.CartPO;

public interface ICartRepository {
    void add(CartPO cartPO, Long userId);
}
