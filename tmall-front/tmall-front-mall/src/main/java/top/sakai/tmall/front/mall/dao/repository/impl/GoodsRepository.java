package top.sakai.tmall.front.mall.dao.repository.impl;

import org.springframework.stereotype.Repository;
import top.sakai.tmall.front.mall.dao.mapper.GoodsMapper;
import top.sakai.tmall.front.mall.dao.repository.IGoodsRepository;
import top.sakai.tmall.front.mall.pojo.po.GoodsPO;

import java.util.List;

@Repository
public class GoodsRepository implements IGoodsRepository {
    private final GoodsMapper goodsMapper;

    public GoodsRepository(GoodsMapper goodsMapper) {
        this.goodsMapper = goodsMapper;
    }

    @Override
    public List<GoodsPO> listByGoodsIds(List<Long> goodsIds) {
        return goodsMapper.selectBatchIds(goodsIds);
    }
}
