package top.sakai.tmall.front.mall.dao.repository;

import top.sakai.tmall.front.mall.pojo.po.GoodsPO;

import java.util.List;

public interface IGoodsRepository {
    List<GoodsPO> listByGoodsIds(List<Long> goodsIds);
}
