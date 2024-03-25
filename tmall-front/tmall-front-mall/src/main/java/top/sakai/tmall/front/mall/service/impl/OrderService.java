package top.sakai.tmall.front.mall.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.sakai.tmall.front.mall.dao.repository.IOrderRepository;
import top.sakai.tmall.front.mall.service.IOrderService;

@Service
public class OrderService implements IOrderService {

    @Autowired
    private IOrderRepository orderRepository;

}
