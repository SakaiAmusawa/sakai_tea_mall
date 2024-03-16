package top.sakai.tmall.admin.mall.dao.repository;

import top.sakai.tmall.admin.mall.pojo.po.GoodsPO;

public interface IGoodsRepository {
    Integer selectGoodsByName(String name);

    Integer save(GoodsPO goodsPO);
}
