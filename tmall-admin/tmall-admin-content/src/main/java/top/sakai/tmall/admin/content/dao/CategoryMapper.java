package top.sakai.tmall.admin.content.dao;

import org.mapstruct.Mapper;
import top.sakai.tmall.admin.content.pojo.po.CategoryPO;

public interface CategoryMapper {
    CategoryPO getCategoryByName(String name);

    void save(CategoryPO newCategoryPO);
}
