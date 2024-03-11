package top.sakai.tmall.admin.content.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import top.sakai.tmall.admin.content.pojo.param.CategoryAddParam;
import top.sakai.tmall.admin.content.service.ICategoryService;

/**
 * @author Sakai
 */
@Api(tags = "管理端分类接口")
@Slf4j
@RestController
@RequestMapping("/category/")
public class CategoryController {

    @Autowired
    private ICategoryService iCategoryService;

    /**
     * 添加分类接口
     *
     * @param categoryAddParam 分类详情
     */
    @ApiOperation("增加类别")
    @PostMapping("add")
    public void addCategory(@RequestBody CategoryAddParam categoryAddParam) {
    }
}
