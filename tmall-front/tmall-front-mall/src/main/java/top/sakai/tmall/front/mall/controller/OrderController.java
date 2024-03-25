package top.sakai.tmall.front.mall.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import springfox.documentation.annotations.ApiIgnore;
import top.sakai.tmall.common.pojo.CurrentUser;
import top.sakai.tmall.common.web.JsonResult;
import top.sakai.tmall.front.mall.pojo.param.OrderAddParam;
import top.sakai.tmall.front.mall.service.IOrderService;

@Api(tags = "订单模块")
@Slf4j
@RestController
@RequestMapping("/order")
public class OrderController {

    @Autowired
    private IOrderService orderService;

    @ApiOperation(value = "创建订单")
    @PostMapping("/create")
    public JsonResult createOrder(@ApiIgnore @AuthenticationPrincipal CurrentUser user,
                                  @RequestBody OrderAddParam orderAddParam) {
        orderService.createOrder(user, orderAddParam);
        return JsonResult.ok();
    }

}
