package top.sakai.tmall.front.mall.service;

import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestParam;
import top.sakai.tmall.common.pojo.CurrentUser;
import top.sakai.tmall.common.pojo.PageData;
import top.sakai.tmall.front.mall.pojo.param.OrderAddParam;
import top.sakai.tmall.front.mall.pojo.vo.OrderListVO;

import java.util.List;

public interface IOrderService {
    @Transactional
    void createOrder(CurrentUser user, OrderAddParam orderAddParam);

    PageData<OrderListVO> listOrder(CurrentUser user ,Integer pageSize, Integer pageNum);
}
