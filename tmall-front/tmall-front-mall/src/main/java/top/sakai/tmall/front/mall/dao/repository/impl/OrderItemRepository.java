package top.sakai.tmall.front.mall.dao.repository.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.springframework.stereotype.Repository;
import top.sakai.tmall.front.mall.dao.mapper.OrderItemMapper;
import top.sakai.tmall.front.mall.dao.repository.IOrderItemRepository;
import top.sakai.tmall.front.mall.pojo.po.OrderItemPO;

import java.util.List;

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

    @Override
    public List<OrderItemPO> listOrderItemByOrderId(Long orderId) {
        QueryWrapper queryWrapper = new QueryWrapper();
        queryWrapper.eq("order_id", orderId);
        return orderItemMapper.selectList(queryWrapper);

    }
}
