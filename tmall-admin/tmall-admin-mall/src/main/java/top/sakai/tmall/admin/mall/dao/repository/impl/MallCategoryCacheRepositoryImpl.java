package top.sakai.tmall.admin.mall.dao.repository.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.stereotype.Repository;
import top.sakai.tmall.admin.mall.dao.repository.IMallCategoryCacheRepository;
import top.sakai.tmall.common.pojo.vo.MallCategoryTreeVO;

import java.util.List;

@Repository
public class MallCategoryCacheRepositoryImpl implements IMallCategoryCacheRepository {

    @Autowired
    private RedisTemplate redisTemplate;

    @Override
    public void saveTreeCategory(List<MallCategoryTreeVO> mallCategoryTreeVOS) {
        ValueOperations valueOperations = redisTemplate.opsForValue();
        valueOperations.set("ALL", mallCategoryTreeVOS);
    }
}
