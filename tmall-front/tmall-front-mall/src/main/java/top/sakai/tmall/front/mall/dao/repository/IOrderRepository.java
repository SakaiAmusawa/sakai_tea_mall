package top.sakai.tmall.front.mall.dao.repository;

import top.sakai.tmall.common.pojo.PageData;
import top.sakai.tmall.front.mall.pojo.po.OrderPO;

public interface IOrderRepository {
    Integer save(OrderPO orderPO);

    PageData<OrderPO> queryOrderByUserId(Long userId,Integer pageSize, Integer pageNum);
}
