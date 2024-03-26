package top.sakai.tmall.front.mall.dao.repository.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import top.sakai.tmall.front.mall.dao.mapper.OrderItemMapper;
import top.sakai.tmall.front.mall.dao.repository.IOrderItemRepository;
import top.sakai.tmall.front.mall.pojo.po.OrderItemPO;

@Repository
public class OrderItemRepository implements IOrderItemRepository {

    private final OrderItemMapper orderItemMapper;

    public OrderItemRepository(OrderItemMapper orderItemMapper) {
        this.orderItemMapper = orderItemMapper;
    }

    @Override
    public Integer save(OrderItemPO orderItemPO) {
        return orderItemMapper.insert(orderItemPO);
    }
}
