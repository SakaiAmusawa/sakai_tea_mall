package top.sakai.tmall.front.mall.dao.repository.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Repository;
import top.sakai.tmall.front.mall.dao.mapper.OrderItemMapper;
import top.sakai.tmall.front.mall.dao.repository.IOrderItemRepository;
import top.sakai.tmall.front.mall.pojo.po.OrderItemPO;

import java.util.List;

@Repository
@Slf4j
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
    public List<OrderItemPO> queryOrderItemListByOrderId(Long orderId) {
        log.debug("入参：{}", orderId);
        QueryWrapper wrapper = new QueryWrapper();
        wrapper.eq("order_id", orderId);
        log.debug("出参：{}", orderItemMapper.selectList(wrapper));
        return orderItemMapper.selectList(wrapper);
    }

}
