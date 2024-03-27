package top.sakai.tmall.front.mall.dao.repository;


import top.sakai.tmall.front.mall.pojo.po.MallCategoryPO;

import java.util.List;

public interface IMallCategoryRepository {

    Integer save(MallCategoryPO mallCategoryPO);

    MallCategoryPO getCategoryById(Long parentId);

    void updateCategoryById(MallCategoryPO update);

    List<MallCategoryPO> getAll();

    List<MallCategoryPO> getTopCategory();

    List<MallCategoryPO> getChildrenCategory(Long parentId);
}
