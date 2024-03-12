package top.sakai.tmall.admin.content.service.impl;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.sakai.tmall.admin.content.dao.repository.IArticleRepository;
import top.sakai.tmall.admin.content.pojo.param.ArticleAddParam;
import top.sakai.tmall.admin.content.pojo.po.ArticlePO;
import top.sakai.tmall.admin.content.service.IArticleService;

@Service
@Slf4j
public class ArticleService implements IArticleService {
    @Autowired
    private IArticleRepository articleRepository;

    @Override
    public void save(ArticleAddParam articleAddParam) {
        ArticlePO articlePO = new ArticlePO();
        BeanUtils.copyProperties(articleAddParam, articlePO);
        articleRepository.save(articlePO);
    }
}
