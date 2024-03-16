package top.sakai.tmall.admin.mall.dao.repository;

import top.sakai.tmall.admin.mall.pojo.po.GoodsDetailPO;
import top.sakai.tmall.admin.mall.pojo.po.GoodsPO;

import java.util.List;

public interface IGoodsRepository {
    Integer selectGoodsByName(String name);

    Integer save(GoodsPO goodsPO);

    Integer saveDetail(GoodsDetailPO goodsDetailPO);

    List<GoodsPO> selectGoodsByCategoryId(Long categoryId);
}
