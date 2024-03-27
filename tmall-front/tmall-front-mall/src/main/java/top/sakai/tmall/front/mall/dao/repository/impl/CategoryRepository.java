package top.sakai.tmall.front.mall.dao.repository.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import top.sakai.tmall.front.mall.dao.mapper.MallCategoryMapper;
import top.sakai.tmall.front.mall.dao.repository.ICategoryRepository;
import top.sakai.tmall.front.mall.pojo.po.CategoryPO;

import java.util.List;

@Repository
public class CategoryRepository implements ICategoryRepository {

    @Autowired
    private MallCategoryMapper mallCategoryMapper;


    @Override
    public Integer save(CategoryPO mallCategoryPO) {
        return mallCategoryMapper.insert(mallCategoryPO);
    }

    @Override
    public CategoryPO getCategoryById(Long id) {
        return mallCategoryMapper.selectById(id);
    }

    @Override
    public void updateCategoryById(CategoryPO update) {
        mallCategoryMapper.updateById(update);
    }

    @Override
    public List<CategoryPO> getAll() {
        return mallCategoryMapper.selectList(null);
    }

    @Override
    public List<CategoryPO> getTopCategory() {
        return getChildrenCategoryByParentId(0L);
    }

    @Override
    public List<CategoryPO> getChildrenCategory(Long parentId) {
        return getChildrenCategoryByParentId(parentId);
    }

    private List<CategoryPO> getChildrenCategoryByParentId(Long parentId) {
        QueryWrapper queryWrapper = new QueryWrapper();
        queryWrapper.eq("parent_id", parentId);
        return mallCategoryMapper.selectList(queryWrapper);
    }
}
