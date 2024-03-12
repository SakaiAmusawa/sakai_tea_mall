package top.sakai.tmall.admin.content.dao.repository.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import top.sakai.tmall.admin.content.dao.mapper.CategoryMapper;
import top.sakai.tmall.admin.content.dao.repository.ICategoryRepository;
import top.sakai.tmall.admin.content.pojo.po.CategoryPO;

@Repository
public class CategoryRepository implements ICategoryRepository {

    @Autowired
    private CategoryMapper categoryMapper;

    @Override
    public Long countCategoryByName(String name) {
        QueryWrapper queryWrapper = new QueryWrapper();
        queryWrapper.eq("name", name);
        Long count = categoryMapper.selectCount(queryWrapper);
        return count;
    }

    @Override
    public void save(CategoryPO newCategoryPO) {
        categoryMapper.save(newCategoryPO);
    }
}
