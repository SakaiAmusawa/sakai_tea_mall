package top.sakai.tmall.admin.mall.dao.repository.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import top.sakai.tmall.admin.mall.dao.mapper.GoodsDetailMapper;
import top.sakai.tmall.admin.mall.dao.mapper.GoodsMapper;
import top.sakai.tmall.admin.mall.dao.repository.IGoodsRepository;
import top.sakai.tmall.admin.mall.pojo.po.GoodsDetailPO;
import top.sakai.tmall.admin.mall.pojo.po.GoodsPO;

import java.util.List;

@Repository
public class GoodsRepository implements IGoodsRepository {

    @Autowired
    private GoodsMapper goodsMapper;
    @Autowired
    private GoodsDetailMapper goodsDetailMapper;

    //通过名称查询商品
    @Override
    public Integer selectGoodsByName(String title) {
        QueryWrapper qw = new QueryWrapper();
        qw.eq("title", title);
        return goodsMapper.selectCount(qw);
    }

    @Override
    public Integer save(GoodsPO goodsPO) {
        return goodsMapper.insert(goodsPO);
    }

    @Override
    public Integer saveDetail(GoodsDetailPO goodsDetailPO) {
        return goodsDetailMapper.insert(goodsDetailPO);
    }

    @Override
    public List<GoodsPO> selectGoodsByCategoryId(Long categoryId) {
        QueryWrapper qw = new QueryWrapper();
        qw.eq("category_id", categoryId);
        return goodsMapper.selectList(qw);

    }
}
