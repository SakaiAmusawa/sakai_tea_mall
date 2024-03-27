package top.sakai.tmall.front.mall.dao.repository.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.stereotype.Repository;
import top.sakai.tmall.front.mall.dao.repository.ICategoryCacheRepository;
import top.sakai.tmall.front.mall.pojo.vo.MallCategoryTreeVO;

import java.util.List;

@Repository
public class CategoryCacheRepository implements ICategoryCacheRepository {
    @Autowired
    private RedisTemplate redisTemplate;

    @Override
    public void saveCategoryTree(List<MallCategoryTreeVO> mallCategoryTreeVOS) {
        ValueOperations valueOperations = redisTemplate.opsForValue();
        valueOperations.set("ALL", mallCategoryTreeVOS);
    }

    @Override
    public List<MallCategoryTreeVO> getCategoryTree() {
        ValueOperations<String, List<MallCategoryTreeVO>> valueOperations = redisTemplate.opsForValue();
        return valueOperations.get("ALL");
    }
}
