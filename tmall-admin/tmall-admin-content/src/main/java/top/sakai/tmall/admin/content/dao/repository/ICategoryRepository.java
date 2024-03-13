package top.sakai.tmall.admin.content.dao.repository;

import top.sakai.tmall.admin.content.pojo.po.CategoryPO;

public interface ICategoryRepository {
    Long countCategoryByName(String name);

    void save(CategoryPO newCategoryPO);

    CategoryPO getCategoryById(Long categoryId);
}
