package top.sakai.tmall.admin.content.dao.repository;

import top.sakai.tmall.admin.content.pojo.po.ArticleDetailPO;
import top.sakai.tmall.admin.content.pojo.po.ArticlePO;

public interface IArticleRepository {
    int save(ArticlePO articlePO);

    Long countArticleByTitle(String title);

    int saveDetail(ArticleDetailPO articleDetailPO);
}
