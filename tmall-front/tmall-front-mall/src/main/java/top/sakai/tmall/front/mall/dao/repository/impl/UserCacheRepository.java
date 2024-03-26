package top.sakai.tmall.front.mall.dao.repository.impl;

import lombok.extern.slf4j.Slf4j;
import org.springframework.data.redis.core.HashOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.util.CollectionUtils;
import top.sakai.tmall.common.pojo.po.UserStatePO;
import top.sakai.tmall.front.mall.dao.repository.IUserCacheRepository;

import java.io.Serializable;
import java.util.Map;

@Repository
@Slf4j
public class UserCacheRepository implements IUserCacheRepository {

    private final RedisTemplate<String, Serializable> redisTemplate;

    public UserCacheRepository(RedisTemplate<String, Serializable> redisTemplate) {
        this.redisTemplate = redisTemplate;
    }

    @Override
    public UserStatePO getUserState(Long id) {
        HashOperations<String, Object, Object> hashOperations = redisTemplate.opsForHash();
        String userStateKry = "user_state_" + id;
        Map<Object, Object> entries = hashOperations.entries(userStateKry);
        UserStatePO userStatePO = new UserStatePO();
        if (!CollectionUtils.isEmpty(entries)) {
            Object auth = entries.get("auth");
            Object enable = entries.get("enable");
            userStatePO.setUserId(id);
            userStatePO.setAuth(auth.toString());
            userStatePO.setEnable((Integer) enable);
        }
        return userStatePO;
    }
}
