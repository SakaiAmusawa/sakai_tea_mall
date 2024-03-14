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
import top.sakai.tmall.admin.mall.pojo.param.CategoryAddParam;
import top.sakai.tmall.admin.mall.service.IMallCategoryService;
import top.sakai.tmall.common.response.JsonResult;

@Slf4j
@Api(tags = "商城类别管理")
@RestController
@RequestMapping("mall/category/")
public class MallCategoryController {

    @Autowired
    private IMallCategoryService mallCategoryService;

    @ApiOperation(value = "添加类别")
    @PostMapping("add")
    public JsonResult addCategory(@Validated @RequestBody CategoryAddParam categoryAddParam) {
        log.debug("添加类别的入参检查 名称:{},父级ID:{},是否启用:{},是否展示:{}", categoryAddParam.getName(), categoryAddParam.getParentId(), categoryAddParam.getEnable(), categoryAddParam.getIsDisplay());
        mallCategoryService.save(categoryAddParam);
        return JsonResult.ok();
    }

}
