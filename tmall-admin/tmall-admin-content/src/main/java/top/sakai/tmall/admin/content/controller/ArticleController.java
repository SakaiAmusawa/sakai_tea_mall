package top.sakai.tmall.admin.content.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import top.sakai.tmall.common.response.JsonResult;

/**
 * @author Sakai
 */
@Api(tags = "文章管理相关接口")
@RestController
@RequestMapping("article/")
public class ArticleController {
    /**
     * 添加文章接口
     *
     * @param o 文章详情
     */
    @ApiOperation("增加文章")
    @PostMapping("add")
    public JsonResult addArticle(Object o) {
        return JsonResult.ok();
    }
}
