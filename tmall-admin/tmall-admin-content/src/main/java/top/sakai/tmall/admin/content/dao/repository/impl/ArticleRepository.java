package top.sakai.tmall.admin.content.dao.repository.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.github.pagehelper.PageHelper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;
import top.sakai.tmall.admin.content.dao.mapper.ArticleDetailMapper;
import top.sakai.tmall.admin.content.dao.mapper.ArticleMapper;
import top.sakai.tmall.admin.content.dao.repository.IArticleRepository;
import top.sakai.tmall.admin.content.pojo.po.ArticleDetailPO;
import top.sakai.tmall.admin.content.pojo.po.ArticlePO;

import java.util.List;

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
    public int saveDetail(ArticleDetailPO articleDetailPO) {
        int insertDetail = articleDetailMapper.insert(articleDetailPO);
        return insertDetail;
    }

    @Override
    public List<ArticlePO> selectByCategoryId(@RequestParam("categoryId") Long categoryId, @RequestParam("pageNum") Integer pageNum, @RequestParam("pageSize") Integer pageSize) {
        QueryWrapper queryWrapper = new QueryWrapper();
        queryWrapper.eq("category_id", categoryId);
        //拦截SQL语句，实现分页功能
        PageHelper.startPage(pageNum, pageSize);
        return articleMapper.selectList(queryWrapper);
    }

    @Override
    public ArticlePO basic(Long articleId) {
        return articleMapper.selectById(articleId);
    }

    @Override
    public ArticleDetailPO detail(Long articleId) {
        QueryWrapper queryWrapper = new QueryWrapper();
        queryWrapper.eq("article_id", articleId);
        return articleDetailMapper.selectOne(queryWrapper);
    }

    @Override
    public int save(ArticlePO articlePO) {
        int insert = articleMapper.insert(articlePO);
        log.debug("插入是否成功 {}", insert);
        return insert;
    }


}
