package top.sakai.tmall.admin.content.dao.repository;

import top.sakai.tmall.admin.content.pojo.po.ArticleDetailPO;
import top.sakai.tmall.admin.content.pojo.po.ArticlePO;

public interface IArticleRepository {
    void save(ArticlePO articlePO);

    Long countArticleByTitle(String title);

    void saveDetail(ArticleDetailPO articleDetailPO);
}
