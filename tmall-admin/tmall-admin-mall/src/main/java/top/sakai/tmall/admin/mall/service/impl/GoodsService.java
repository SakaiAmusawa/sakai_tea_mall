package top.sakai.tmall.admin.mall.service.impl;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.sakai.tmall.admin.mall.dao.repository.IGoodsRepository;
import top.sakai.tmall.admin.mall.dao.repository.IMallCategoryRepository;
import top.sakai.tmall.admin.mall.pojo.param.GoodsAddParam;
import top.sakai.tmall.admin.mall.pojo.po.GoodsPO;
import top.sakai.tmall.admin.mall.pojo.po.MallCategoryPO;
import top.sakai.tmall.admin.mall.service.IGoodsService;

@Service
@Slf4j
public class GoodsService implements IGoodsService {

    private IGoodsRepository goodsRepository;
    private IMallCategoryRepository mallCategoryRepository;

    @Autowired
    public void setGoodsRepository(IGoodsRepository goodsRepository) {
        this.goodsRepository = goodsRepository;
    }

    @Autowired
    public void setCategoryRepository(IMallCategoryRepository mallCategoryRepository) {
        this.mallCategoryRepository = mallCategoryRepository;
    }


    @Override
    public void add(GoodsAddParam goodsAddParam) {
        //根据名称查询商品是否存在
        String name = goodsAddParam.getName();
        log.debug("商品名称：{}", name);
        Integer existence = goodsRepository.selectGoodsByName(name);
        if (existence != 1) {
            throw new RuntimeException("商品已存在");
        }
        //根据类别ID查询类别是否存在
        Long categoryId = goodsAddParam.getCategoryId();
        log.debug("类别ID：{}", categoryId);
        MallCategoryPO category = mallCategoryRepository.getCategoryById(categoryId);
        if (category == null) {
            throw new RuntimeException("类别不存在");
        }
        //向数据库插入数据
        String categoryName = category.getName();
        GoodsPO goodsPO = new GoodsPO();
        BeanUtils.copyProperties(goodsAddParam, goodsPO);
        goodsPO.setCategoryName(categoryName);
        log.debug("插入前参数检查：{}", goodsPO);
        Integer success = goodsRepository.save(goodsPO);
        if (success != 1) {
            throw new RuntimeException("插入失败");
        }
    }
}
