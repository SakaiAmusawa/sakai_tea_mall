package top.sakai.tmall.admin.content.dao.repository.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import top.sakai.tmall.admin.content.dao.mapper.ArticleDetailMapper;
import top.sakai.tmall.admin.content.dao.mapper.ArticleMapper;
import top.sakai.tmall.admin.content.dao.repository.IArticleRepository;
import top.sakai.tmall.admin.content.pojo.po.ArticleDetailPO;
import top.sakai.tmall.admin.content.pojo.po.ArticlePO;

@Repository
@Slf4j
public class ArticleRepository implements IArticleRepository {

    @Autowired
    private ArticleMapper articleMapper;
    @Autowired
    private ArticleDetailMapper articleDetailMapper;


    @Override
    public Long countArticleByTitle(String title) {
        QueryWrapper q = new QueryWrapper();
        q.eq("title", title);
        Long count = articleMapper.selectCount(q);
        return count;
    }

    @Override
    public void saveDetail(ArticleDetailPO articleDetailPO) {
        articleDetailMapper.insert(articleDetailPO);
    }


    @Override
    public void save(ArticlePO articlePO) {
        int insert = articleMapper.insert(articlePO);
        log.debug("插入是否成功 {}", insert);
    }


}
