package top.sakai.tmall.admin.mall.dao.repository;

import top.sakai.tmall.admin.mall.pojo.po.MallCategoryPO;

public interface IMallCategoryRepository {
    Long countCategoryByName(String name);

    Integer save(MallCategoryPO mallCategoryPO);

    MallCategoryPO getCategoryById(Long parentId);

    void updateCategoryById(MallCategoryPO update);
}
