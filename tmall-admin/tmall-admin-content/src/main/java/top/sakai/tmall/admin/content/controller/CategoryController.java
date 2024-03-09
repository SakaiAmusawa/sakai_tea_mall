package top.sakai.tmall.admin.content.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Sakai
 */
@Api(tags = "管理段分类接口")
@RestController
@RequestMapping("/category/")
public class CategoryController {
    /**
     * 添加分类接口
     *
     * @param o 分类详情
     */
    @ApiOperation("增加类别")
    @PostMapping("add")
    public void addCategory(Object o) {

    }
}
