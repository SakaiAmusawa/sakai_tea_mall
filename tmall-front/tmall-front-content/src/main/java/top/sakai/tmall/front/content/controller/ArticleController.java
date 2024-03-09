package top.sakai.tmall.front.content.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author Sakai
 */
@RestController
@RequestMapping
public class ArticleController {
    /**
     * 文章列表接口
     *
     * @param categoryId 类别id
     * @return 文章列表
     */
    @GetMapping
    public List<Object> articleList(Long categoryId) {
        return null;
    }

    /**
     * 文章详情接口
     *
     * @param articleId 文章id
     * @return 文章详情
     */
    @GetMapping
    public Object getArticleById(Long articleId) {
        return null;
    }
}
