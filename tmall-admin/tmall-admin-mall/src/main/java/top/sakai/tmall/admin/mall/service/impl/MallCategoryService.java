package top.sakai.tmall.admin.mall.service.impl;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.sakai.tmall.admin.mall.dao.repository.IMallCategoryRepository;
import top.sakai.tmall.admin.mall.pojo.param.CategoryAddParam;
import top.sakai.tmall.admin.mall.pojo.po.MallCategoryPO;
import top.sakai.tmall.admin.mall.service.IMallCategoryService;

@Service
public class MallCategoryService implements IMallCategoryService {

    @Autowired
    private IMallCategoryRepository mallCategoryRepository;


    @Override
    public void save(CategoryAddParam categoryAddParam) {
        String name = categoryAddParam.getName();
        Long count = mallCategoryRepository.countCategoryByName(name);
        if (count != 0) {
            throw new RuntimeException("名称不能重复");
        }
        Long parentId = categoryAddParam.getParentId();
        Integer depth = 1;
        if (parentId == 0) {
            //如果父级ID=0，直接插入
            MallCategoryPO mallCategoryPO = new MallCategoryPO();
            BeanUtils.copyProperties(categoryAddParam, mallCategoryPO);
            mallCategoryPO.setDepth(depth);
            mallCategoryRepository.save(mallCategoryPO);
        } else {
            MallCategoryPO parentMallCategoryPO = mallCategoryRepository.getCategoryById(parentId);
            if (parentMallCategoryPO == null) {
                throw new RuntimeException("父级不存在");
            }
            depth = parentMallCategoryPO.getDepth() + 1;
            MallCategoryPO mallCategoryPO = new MallCategoryPO();
            BeanUtils.copyProperties(categoryAddParam, mallCategoryPO);
            mallCategoryPO.setDepth(depth);
            Integer rows = mallCategoryRepository.save(mallCategoryPO);
            if (rows != 0) {
                if (parentMallCategoryPO.getIsParent() == 0) {
                    MallCategoryPO update = new MallCategoryPO();
                    update.setId(parentId);
                    update.setIsParent(1);
                    mallCategoryRepository.updateCategoryById(update);
                }
            }
        }
    }
}
