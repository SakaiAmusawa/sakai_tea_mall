package top.sakai.tmall.admin.content.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import top.sakai.tmall.admin.content.pojo.param.ArticleAddParam;
import top.sakai.tmall.admin.content.service.IArticleService;
import top.sakai.tmall.common.response.JsonResult;

/**
 * @author Sakai
 */
@Api(tags = "文章管理相关接口")
@Slf4j
@RestController
@RequestMapping("article/")
public class ArticleController {
    @Autowired
    private IArticleService articleService;

    /**
     * 添加文章接口
     *
     * @param articleAddParam 文章详情
     */
    @ApiOperation("增加文章")
    @PostMapping("add")
    public JsonResult addArticle(@Validated @RequestBody ArticleAddParam articleAddParam) {
        log.debug("校验通过，开始处理请求");
        log.debug("添加文章入参 {} ", articleAddParam);
        articleService.save(articleAddParam);
        log.debug("添加文章返回响应 状态码:{} 状态信息:{}", JsonResult.ok().getCode(), JsonResult.ok().getMessage());
        return JsonResult.ok();

    }
}
