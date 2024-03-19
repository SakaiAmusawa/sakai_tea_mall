package top.sakai.tmall.admin.content.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import springfox.documentation.annotations.ApiIgnore;
import top.sakai.tmall.admin.content.pojo.param.ArticleAddParam;
import top.sakai.tmall.admin.content.pojo.vo.ArticleItemListVO;
import top.sakai.tmall.admin.content.pojo.vo.ArticleVO;
import top.sakai.tmall.admin.content.service.IArticleService;
import top.sakai.tmall.common.pojo.CurrentUser;
import top.sakai.tmall.common.pojo.PageData;
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

    @ApiOperation("文章列表")
    @PostMapping("/list")
    public JsonResult listArticle(@RequestParam Long categoryId, @RequestParam Integer pageNum, @RequestParam Integer pageSize) {
        PageData<ArticleItemListVO> articleItemListVOS = articleService.list(categoryId, pageNum, pageSize);
        return JsonResult.ok(articleItemListVOS);
    }

    @ApiOperation("文章详情")
    @PostMapping("/detail")
    public JsonResult detail(@RequestParam Long articleId) {
        ArticleVO article = articleService.detail(articleId);
        return JsonResult.ok(article);
    }

    @GetMapping("/current/user")
    @ApiOperation("识别当事人")
    public String principal(@ApiIgnore @AuthenticationPrincipal CurrentUser user) {
        return "成功处理请求：需要通过认证，且识别当事人：" + user;
    }


}
