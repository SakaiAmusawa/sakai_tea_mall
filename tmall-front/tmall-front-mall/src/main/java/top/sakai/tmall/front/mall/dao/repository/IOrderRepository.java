package top.sakai.tmall.front.mall.dao.repository;

import top.sakai.tmall.front.mall.pojo.po.OrderPO;

public interface IOrderRepository {
    Integer save(OrderPO orderPO);
}
