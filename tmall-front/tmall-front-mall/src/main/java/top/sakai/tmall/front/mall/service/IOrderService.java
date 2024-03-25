package top.sakai.tmall.front.mall.service;

import org.springframework.transaction.annotation.Transactional;
import top.sakai.tmall.common.pojo.CurrentUser;
import top.sakai.tmall.front.mall.pojo.param.OrderAddParam;

public interface IOrderService {
    @Transactional
    void createOrder(CurrentUser user, OrderAddParam orderAddParam);
}
