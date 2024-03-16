package top.sakai.tmall.admin.mall.dao.repository.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import top.sakai.tmall.admin.mall.dao.mapper.GoodsMapper;
import top.sakai.tmall.admin.mall.dao.repository.IGoodsRepository;
import top.sakai.tmall.admin.mall.pojo.po.GoodsPO;

@Repository
public class GoodsRepository implements IGoodsRepository {

    @Autowired
    private GoodsMapper goodsMapper;

    //通过名称查询商品
    @Override
    public Integer selectGoodsByName(String name) {
        QueryWrapper qw = new QueryWrapper();
        qw.eq("name", name);
        return goodsMapper.selectCount(qw);
    }

    @Override
    public Integer save(GoodsPO goodsPO) {
        return goodsMapper.insert(goodsPO);
    }
}
