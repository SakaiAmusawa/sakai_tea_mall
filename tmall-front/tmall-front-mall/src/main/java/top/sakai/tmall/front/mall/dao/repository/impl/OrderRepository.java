package top.sakai.tmall.front.mall.dao.repository.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import top.sakai.tmall.front.mall.dao.mapper.OrderMapper;
import top.sakai.tmall.front.mall.dao.repository.IOrderRepository;
import top.sakai.tmall.front.mall.pojo.po.OrderPO;

@Repository
public class OrderRepository implements IOrderRepository {

    @Autowired
    private OrderMapper orderMapper;

    @Override
    public Integer save(OrderPO orderPO) {
        return orderMapper.insert(orderPO);
    }
}
