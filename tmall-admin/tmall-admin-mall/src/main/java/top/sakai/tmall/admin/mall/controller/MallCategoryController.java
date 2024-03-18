package top.sakai.tmall.admin.mall.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import top.sakai.tmall.admin.mall.pojo.param.CategoryAddParam;
import top.sakai.tmall.admin.mall.pojo.vo.MallCategoryTreeVO;
import top.sakai.tmall.admin.mall.service.IMallCategoryService;
import top.sakai.tmall.common.response.JsonResult;

import java.util.List;

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
        log.debug("添加类别的入参检查 {}", categoryAddParam);
        mallCategoryService.save(categoryAddParam);
        return JsonResult.ok();
    }

    @ApiOperation("类别树")
    @GetMapping("tree")
    public JsonResult treeCategory() {
        List<MallCategoryTreeVO> list = mallCategoryService.showTree();
        return JsonResult.ok(list);
    }

    @ApiOperation("类别树-顶级类别")
    @GetMapping("tree/top")
    public JsonResult treeTopCategory() {
        List<MallCategoryTreeVO> tree = mallCategoryService.treeTopCategory();
        return JsonResult.ok(tree);
    }

    /**
     * 延迟加载策略
     *
     * @return 子类别树
     */
    @ApiOperation("类别树-子级类别")
    @GetMapping("tree/children/{parentId}")
    public JsonResult treeChildrenCategory(@PathVariable Long parentId) {
        List<MallCategoryTreeVO> tree = mallCategoryService.treeChildrenCategory(parentId);
        return JsonResult.ok(tree);
    }


}
