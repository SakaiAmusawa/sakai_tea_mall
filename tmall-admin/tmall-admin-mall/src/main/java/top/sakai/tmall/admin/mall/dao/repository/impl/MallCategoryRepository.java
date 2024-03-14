package top.sakai.tmall.admin.mall.dao.repository.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import top.sakai.tmall.admin.mall.dao.mapper.MallCategoryMapper;
import top.sakai.tmall.admin.mall.dao.repository.IMallCategoryRepository;
import top.sakai.tmall.admin.mall.pojo.po.MallCategoryPO;

@Repository
public class MallCategoryRepository implements IMallCategoryRepository {

    @Autowired
    private MallCategoryMapper mallCategoryMapper;

    @Override
    public Long countCategoryByName(String name) {
        QueryWrapper queryWrapper = new QueryWrapper();
        queryWrapper.eq("name", name);
        return mallCategoryMapper.selectCount(queryWrapper);
    }

    @Override
    public Integer save(MallCategoryPO mallCategoryPO) {
        return mallCategoryMapper.insert(mallCategoryPO);
    }

    @Override
    public MallCategoryPO getCategoryById(Long id) {
        return mallCategoryMapper.selectById(id);
    }

    @Override
    public void updateCategoryById(MallCategoryPO update) {
        mallCategoryMapper.updateById(update);
    }


}
