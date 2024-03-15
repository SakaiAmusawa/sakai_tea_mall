package top.sakai.tmall.admin.content.service;

import org.springframework.transaction.annotation.Transactional;
import top.sakai.tmall.admin.content.pojo.param.ArticleAddParam;
import top.sakai.tmall.admin.content.pojo.vo.ArticleItemListVO;
import top.sakai.tmall.admin.content.pojo.vo.ArticleVO;

import java.util.List;

public interface IArticleService {

    @Transactional
        //推荐加在service的接口方法上，可以明确的告诉使用者，这个方法支持事务，可以放心的使用
    void save(ArticleAddParam articleAddParam);

    List<ArticleItemListVO> list(Long categoryId, Integer pageNum, Integer pageSize);

    ArticleVO detail(Long articleId);
}
