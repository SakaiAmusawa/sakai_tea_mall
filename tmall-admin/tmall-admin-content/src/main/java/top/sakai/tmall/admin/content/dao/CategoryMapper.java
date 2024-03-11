package top.sakai.tmall.admin.content.dao;

import org.springframework.stereotype.Repository;
import top.sakai.tmall.admin.content.pojo.po.CategoryPO;

public interface CategoryMapper {
    CategoryPO getCategoryByName(String name);

    void save(CategoryPO newCategoryPO);
}
