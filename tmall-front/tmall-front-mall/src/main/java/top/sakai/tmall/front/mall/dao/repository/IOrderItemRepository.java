package top.sakai.tmall.front.mall.dao.repository;

import top.sakai.tmall.front.mall.pojo.po.OrderItemPO;

public interface IOrderItemRepository {
    Integer save(OrderItemPO orderItemPO);
}
