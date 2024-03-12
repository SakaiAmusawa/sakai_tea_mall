package top.sakai.tmall.admin.content.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.sakai.tmall.admin.content.dao.CategoryMapper;
import top.sakai.tmall.admin.content.handler.ServiceException;
import top.sakai.tmall.admin.content.pojo.param.CategoryAddParam;
import top.sakai.tmall.admin.content.pojo.po.CategoryPO;
import top.sakai.tmall.admin.content.service.ICategoryService;
import top.sakai.tmall.common.response.StatusCode;

@Service
@Slf4j
public class CategoryService implements ICategoryService {

    @Autowired
    private CategoryMapper categoryMapper;


    @Override
    public void addCategory(CategoryAddParam categoryAddParam) {
        // 1.校验数据
        // 2.判断类别名称是否存在
        String name = categoryAddParam.getName();
        QueryWrapper queryWrapper = new QueryWrapper();
        queryWrapper.eq("name", name);
        Long count = categoryMapper.selectCount(queryWrapper);
        if (count == 0) {
            //  2.2 不存在 保存类别到数据库
            CategoryPO newCategoryPO = new CategoryPO();
            BeanUtils.copyProperties(categoryAddParam, newCategoryPO);
            categoryMapper.save(newCategoryPO);
        } else {
            //  2.1.存在 抛出异常
            throw new ServiceException(StatusCode.FAIL);
        }
    }
}
