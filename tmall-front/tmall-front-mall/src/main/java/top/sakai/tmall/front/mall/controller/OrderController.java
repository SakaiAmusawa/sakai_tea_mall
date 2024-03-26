package top.sakai.tmall.front.mall.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;
import springfox.documentation.annotations.ApiIgnore;
import top.sakai.tmall.common.pojo.CurrentUser;
import top.sakai.tmall.common.pojo.PageData;
import top.sakai.tmall.common.web.JsonResult;
import top.sakai.tmall.front.mall.pojo.param.OrderAddParam;
import top.sakai.tmall.front.mall.pojo.vo.OrderListVO;
import top.sakai.tmall.front.mall.service.IOrderService;

@Api(tags = "订单模块")
@Slf4j
@RestController
@RequestMapping("/order")
public class OrderController {

    private final IOrderService orderService;

    public OrderController(IOrderService orderService) {
        this.orderService = orderService;
    }

    @ApiOperation(value = "创建订单")
    @PostMapping("/create")
    public JsonResult createOrder(@ApiIgnore @AuthenticationPrincipal CurrentUser user, @RequestBody OrderAddParam orderAddParam) {
        orderService.createOrder(user, orderAddParam);
        return JsonResult.ok();
    }

    @ApiOperation(value = "订单列表")
    @GetMapping("/list")
    public JsonResult listOrder(@ApiIgnore @AuthenticationPrincipal CurrentUser user, @RequestParam Integer pageSize, @RequestParam Integer pageNum) {
        PageData<OrderListVO> orders = orderService.listOrder(user, pageNum, pageSize);
        return JsonResult.ok(orders);
    }

}
