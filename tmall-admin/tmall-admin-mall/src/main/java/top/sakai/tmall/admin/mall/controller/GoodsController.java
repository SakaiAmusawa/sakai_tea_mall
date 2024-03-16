package top.sakai.tmall.admin.mall.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import top.sakai.tmall.admin.mall.pojo.param.GoodsAddParam;
import top.sakai.tmall.admin.mall.pojo.vo.GoodsDetailVO;
import top.sakai.tmall.admin.mall.pojo.vo.GoodsVO;
import top.sakai.tmall.admin.mall.service.IGoodsService;
import top.sakai.tmall.common.response.JsonResult;

import java.util.List;

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

    @ApiOperation("商品列表")
    @GetMapping("list/{categoryId}")
    public JsonResult showGoodsByCategoryId(@PathVariable Long categoryId) {
        log.debug("入参检查：{}", categoryId);
        List<GoodsVO> goodsList = goodsService.showGoodsByCategoryId(categoryId);
        return JsonResult.ok(goodsList);
    }

    @ApiOperation("商品详情")
    @GetMapping("detail/{id}")
    public JsonResult showGoodsDetailById(@PathVariable Long id) {
        GoodsDetailVO goodsDetailVO = goodsService.showGoodsDetailById(id);
        return JsonResult.ok(goodsDetailVO);
    }

}
