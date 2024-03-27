package top.sakai.tmall.front.mall.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import top.sakai.tmall.common.response.JsonResult;
import top.sakai.tmall.front.mall.pojo.vo.MallCategoryTreeVO;
import top.sakai.tmall.front.mall.service.ICategoryService;

import java.util.List;

@Api(tags = "商城分类相关接口")
@Slf4j
@Validated
@RestController
@RequestMapping("")
public class CategoryController {

    @Autowired
    @Qualifier("categoryService")
    private ICategoryService mallCategoryService;


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
