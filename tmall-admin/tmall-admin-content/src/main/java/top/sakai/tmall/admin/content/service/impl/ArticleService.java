package top.sakai.tmall.admin.content.service.impl;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.sakai.tmall.admin.content.dao.repository.IArticleRepository;
import top.sakai.tmall.admin.content.dao.repository.ICategoryRepository;
import top.sakai.tmall.admin.content.pojo.param.ArticleAddParam;
import top.sakai.tmall.admin.content.pojo.po.ArticleDetailPO;
import top.sakai.tmall.admin.content.pojo.po.ArticlePO;
import top.sakai.tmall.admin.content.pojo.po.CategoryPO;
import top.sakai.tmall.admin.content.service.IArticleService;

@Service
@Slf4j
//@Transactional 不推荐加在此处，更加推荐加在接口的方法上
public class ArticleService implements IArticleService {
    @Autowired
    private IArticleRepository articleRepository;

    @Autowired
    private ICategoryRepository categoryRepository;

    @Override
    public void save(ArticleAddParam articleAddParam) {
        /*
            业务：
                1.文章标题不能重复
                2.类别是否存在
                3。类别被禁用了，是否可以在当前类别下发文章
                4.保存文章，如果成功，返回，如果保存失败，抛出异常
         */
        Long countArticleByTitle = articleRepository.countArticleByTitle(articleAddParam.getTitle());
        if (countArticleByTitle == 0) {
            CategoryPO categoryPO = categoryRepository.getCategoryById(articleAddParam.getCategoryId());
            if (categoryPO == null) {
                throw new RuntimeException("类别不存在");
            }
            Integer enable = categoryPO.getEnable();
            if (enable == 1) {
                ArticlePO articlePO = new ArticlePO();
                BeanUtils.copyProperties(articleAddParam, articlePO);
                int save = articleRepository.save(articlePO);
                if (save != 1) {
                    throw new RuntimeException("文章发布失败");
                }
                ArticleDetailPO articleDetailPO = new ArticleDetailPO();
                articleDetailPO.setArticleId(articlePO.getId());
                articleDetailPO.setDetail(articleAddParam.getContent());
                "".substring(10);//人为地制造一个异常模拟第二条数据保存时遇到问题
                int i = articleRepository.saveDetail(articleDetailPO);
                if (i != 1) {
                    throw new RuntimeException("文章发送失败");
                }
            } else {
                throw new RuntimeException("类别已被禁用");
            }
        } else {
            throw new RuntimeException("文章标题已存在");
        }
    }
}