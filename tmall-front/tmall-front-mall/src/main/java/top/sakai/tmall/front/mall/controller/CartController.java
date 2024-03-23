package top.sakai.tmall.front.mall.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.hibernate.validator.constraints.Range;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import springfox.documentation.annotations.ApiIgnore;
import top.sakai.tmall.common.pojo.CurrentUser;
import top.sakai.tmall.common.response.JsonResult;
import top.sakai.tmall.front.mall.pojo.vo.CartVO;
import top.sakai.tmall.front.mall.service.ICartService;

import java.util.List;

@Api(tags = "购物车服务")
@Slf4j
@Validated
@RestController
@RequestMapping("/cart")
public class CartController {

    @Autowired
    private ICartService cartService;

    @ApiOperation("添加商品")
    @PostMapping("/add")
    @ApiImplicitParams({@ApiImplicitParam(name = "goodsId", value = "商品ID", required = true, dataType = "Long"), @ApiImplicitParam(name = "goodsNum", value = "商品数量", required = true, dataType = "Integer")})
    public JsonResult addCart(@ApiIgnore @AuthenticationPrincipal CurrentUser user, @Range(min = 1, message = "请输入合法的商品ID") Long goodsId, @Range(min = 1, max = 100, message = "商品数量必须在1~100之间") Integer goodsNum) {
        log.debug("添加商品的-入参 用户id:{},商品id:{},商品数量:{}", user.getId(), goodsId, goodsNum);
        cartService.addCart(user, goodsId, goodsNum);
        return JsonResult.ok();
    }

    @ApiOperation("修改商品数量")
    @PostMapping("/modify")
    @ApiImplicitParams({@ApiImplicitParam(name = "goodsId", value = "商品ID", required = true, dataType = "Long"), @ApiImplicitParam(name = "goodsNum", value = "商品数量", required = true, dataType = "Integer")})
    public JsonResult modify(@ApiIgnore @AuthenticationPrincipal CurrentUser user, @Range(min = 1, message = "请输入合法的商品ID") Long goodsId, @Range(min = 1, max = 100, message = "商品数量必须在1~100之间") Integer goodsNum) {
        log.debug("修改商品的-入参 用户id:{},商品id:{},商品数量:{}", user.getId(), goodsId, goodsNum);
        cartService.modify(user, goodsId, goodsNum);
        return JsonResult.ok();
    }

    @ApiOperation("增加一个或多个商品")
    @PostMapping("/incr")
    @ApiImplicitParams({@ApiImplicitParam(name = "goodsId", value = "商品ID", required = true, dataType = "Long"), @ApiImplicitParam(name = "goodsNum", value = "商品数量", required = true, dataType = "Integer")})
    public JsonResult incr(@ApiIgnore @AuthenticationPrincipal CurrentUser user, @Range(min = 1, message = "请输入合法的商品ID") Long goodsId, @Range(min = 1, max = 100, message = "商品数量必须在1~100之间") Integer goodsNum) {
        log.debug("增加商品的-入参 用户id:{},商品id:{},商品数量:{}", user.getId(), goodsId, goodsNum);
        cartService.incr(user, goodsId, goodsNum);
        return JsonResult.ok();
    }

    @ApiOperation("减少一个或多个商品")
    @PostMapping("/reduce")
    @ApiImplicitParams({@ApiImplicitParam(name = "goodsId", value = "商品ID", required = true, dataType = "Long"), @ApiImplicitParam(name = "goodsNum", value = "商品数量", required = true, dataType = "Integer")})
    public JsonResult reduce(@ApiIgnore @AuthenticationPrincipal CurrentUser user, @Range(min = 1, message = "请输入合法的商品ID") Long goodsId, @Range(min = 1, max = 100, message = "商品数量必须在1~100之间") Integer goodsNum) {
        log.debug("减少商品-入参 用户id:{},商品id:{},商品数量:{}", user.getId(), goodsId, goodsNum);
        cartService.reduce(user, goodsId, goodsNum);
        return JsonResult.ok();
    }

    @ApiOperation("我的购物车")
    @PostMapping("/list")
    public JsonResult list(@ApiIgnore @AuthenticationPrincipal CurrentUser user) {
        log.debug("减少商品-入参 用户id:{}", user.getId());
        List<CartVO> cartVOS = cartService.list(user.getId());
        return JsonResult.ok(cartVOS);
    }

}
