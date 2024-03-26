package top.sakai.tmall.front.mall.dao.repository.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Repository;
import top.sakai.tmall.common.pojo.PageData;
import top.sakai.tmall.front.mall.dao.mapper.OrderMapper;
import top.sakai.tmall.front.mall.dao.repository.IOrderRepository;
import top.sakai.tmall.front.mall.pojo.po.OrderPO;

import java.util.List;

@Repository
@Slf4j
public class OrderRepository implements IOrderRepository {

    private final OrderMapper orderMapper;

    public OrderRepository(OrderMapper orderMapper) {
        this.orderMapper = orderMapper;
    }

    @Override
    public Integer save(OrderPO orderPO) {
        return orderMapper.insert(orderPO);
    }

    @Override
    public PageData<OrderPO> queryOrderByUserId(Long userId, Integer pageSize, Integer pageNum) {
        QueryWrapper wrapper = new QueryWrapper();
        wrapper.eq("buyer_id", userId);
        List<OrderPO> orderPOList = orderMapper.selectList(wrapper);
        PageHelper.startPage(pageNum, pageSize);
        PageInfo<OrderPO> pageInfo = new PageInfo<>(orderPOList);
        PageData<OrderPO> pageData = new PageData<>();
        BeanUtils.copyProperties(pageInfo, pageData);
        return pageData;
    }
}
