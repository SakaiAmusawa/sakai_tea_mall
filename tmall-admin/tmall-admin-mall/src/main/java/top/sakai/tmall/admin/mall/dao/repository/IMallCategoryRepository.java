package top.sakai.tmall.admin.mall.dao.repository;

import top.sakai.tmall.admin.mall.pojo.po.MallCategoryPO;

import java.util.List;

public interface IMallCategoryRepository {
    Integer countCategoryByName(String name);

    Integer save(MallCategoryPO mallCategoryPO);

    MallCategoryPO getCategoryById(Long parentId);

    void updateCategoryById(MallCategoryPO update);

    List<MallCategoryPO> getAll();
}
