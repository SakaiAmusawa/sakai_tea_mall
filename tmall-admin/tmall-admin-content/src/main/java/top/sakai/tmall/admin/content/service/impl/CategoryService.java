package top.sakai.tmall.admin.content.service.impl;

import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import top.sakai.tmall.admin.content.dao.CategoryMapper;
import top.sakai.tmall.admin.content.pojo.param.CategoryAddParam;
import top.sakai.tmall.admin.content.pojo.po.CategoryPO;
import top.sakai.tmall.admin.content.service.ICategoryService;

@Service
public class CategoryService implements ICategoryService {

    private final CategoryMapper categoryMapper;

    public CategoryService(CategoryMapper categoryMapper) {
        this.categoryMapper = categoryMapper;
    }

    @Override
    public void addCategory(CategoryAddParam categoryAddParam) {
        // 1.校验数据
        // 2.判断类别名称是否存在
        String name = categoryAddParam.getName();
        CategoryPO categoryPO = categoryMapper.getCategoryByName(name);
        if (categoryPO == null) {
            //  2.2 不存在 保存类别到数据库
            CategoryPO newCategoryPO = new CategoryPO();
            BeanUtils.copyProperties(categoryAddParam, newCategoryPO);
            categoryMapper.save(newCategoryPO);
        } else {
            //  2.1.存在 抛出异常
            throw new RuntimeException("类别已存在");
        }
    }
}
