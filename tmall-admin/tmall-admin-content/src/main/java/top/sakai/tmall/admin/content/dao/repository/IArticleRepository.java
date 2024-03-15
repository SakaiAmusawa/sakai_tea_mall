package top.sakai.tmall.admin.content.dao.repository;

import top.sakai.tmall.admin.content.pojo.po.ArticleDetailPO;
import top.sakai.tmall.admin.content.pojo.po.ArticlePO;
import top.sakai.tmall.admin.content.pojo.vo.ArticleVO;

import java.util.List;

public interface IArticleRepository {
    int save(ArticlePO articlePO);

    Long countArticleByTitle(String title);

    int saveDetail(ArticleDetailPO articleDetailPO);

    List<ArticlePO> selectByCategoryId(Long categoryId, Integer pageNum, Integer pageSize);

    ArticlePO basic(Long articleId);

    ArticleDetailPO detail(Long articleId);
}
