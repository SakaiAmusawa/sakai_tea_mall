package top.sakai.tmall.front.mall.dao.repository;


import top.sakai.tmall.front.mall.pojo.po.CategoryPO;

import java.util.List;

public interface ICategoryRepository {

    Integer save(CategoryPO mallCategoryPO);

    CategoryPO getCategoryById(Long parentId);

    void updateCategoryById(CategoryPO update);

    List<CategoryPO> getAll();

    List<CategoryPO> getTopCategory();

    List<CategoryPO> getChildrenCategory(Long parentId);
}
