package top.sakai.tmall.admin.content.dao.repository.impl;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import top.sakai.tmall.admin.content.dao.mapper.ArticleMapper;
import top.sakai.tmall.admin.content.dao.repository.IArticleRepository;
import top.sakai.tmall.admin.content.pojo.po.ArticlePO;

@Repository
@Slf4j
public class ArticleRepository implements IArticleRepository {

    @Autowired
    private ArticleMapper articleMapper;

    @Override
    public void save(ArticlePO articlePO) {
        int insert = articleMapper.insert(articlePO);
        log.debug("插入是否成功 {}", insert);
    }
}
