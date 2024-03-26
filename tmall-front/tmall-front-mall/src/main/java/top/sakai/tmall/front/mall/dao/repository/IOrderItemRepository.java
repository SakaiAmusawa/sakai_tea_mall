package top.sakai.tmall.front.mall.dao.repository;

import top.sakai.tmall.common.pojo.PageData;
import top.sakai.tmall.front.mall.pojo.po.OrderItemPO;

import java.util.List;

public interface IOrderItemRepository {
    Integer save(OrderItemPO orderItemPO);

    List<OrderItemPO> listOrderItemByOrderId(Long orderId);
}
