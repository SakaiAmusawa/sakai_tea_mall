package top.sakai.tmall.front.mall.dao.repository.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import top.sakai.tmall.front.mall.dao.mapper.GoodsMapper;
import top.sakai.tmall.front.mall.dao.repository.IGoodsRepository;
import top.sakai.tmall.front.mall.pojo.po.GoodsPO;

import java.util.List;

@Repository
public class GoodsRepository implements IGoodsRepository {
    @Autowired
    private GoodsMapper goodsMapper;

    @Override
    public List<GoodsPO> listByGoodsIds(List<Long> goodsIds) {
        return goodsMapper.selectBatchIds(goodsIds);
    }
}
