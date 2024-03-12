package top.sakai.tmall.admin.content.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import top.sakai.tmall.admin.content.pojo.po.CategoryPO;

public interface CategoryMapper extends BaseMapper<CategoryPO> {
    CategoryPO getCategoryByName(String name);

    void save(CategoryPO newCategoryPO);
}
