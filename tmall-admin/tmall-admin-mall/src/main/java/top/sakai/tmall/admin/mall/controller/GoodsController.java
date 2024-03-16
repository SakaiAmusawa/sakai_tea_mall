package top.sakai.tmall.admin.mall.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import top.sakai.tmall.admin.mall.pojo.param.GoodsAddParam;
import top.sakai.tmall.admin.mall.service.IGoodsService;
import top.sakai.tmall.common.response.JsonResult;

@Api(tags = "商品管理功能")
@Slf4j
@RestController
@RequestMapping("mall/goods/")
public class GoodsController {

    @Autowired
    private IGoodsService goodsService;

    @ApiOperation("添加商品")
    @PostMapping("add")
    public JsonResult addGoods(@Validated @RequestBody GoodsAddParam goodsAddParam) {
        log.debug("入参检查：{}", goodsAddParam);
        goodsService.add(goodsAddParam);
        return JsonResult.ok();
    }

}
