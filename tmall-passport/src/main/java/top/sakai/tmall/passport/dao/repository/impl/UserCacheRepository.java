package top.sakai.tmall.passport.dao.repository.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.HashOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Repository;
import top.sakai.tmall.passport.dao.repository.IUserCacheRepository;
import top.sakai.tmall.passport.pojo.po.UserStatePO;

import java.io.Serializable;
import java.util.HashMap;

@Repository
public class UserCacheRepository implements IUserCacheRepository {

    @Autowired
    private RedisTemplate<String, Serializable> redisTemplate;

    @Override
    public void saveUserState(UserStatePO userStatePO) {
        HashOperations<String, Object, Object> hashOperations = redisTemplate.opsForHash();
        String userStateKey = "user_state_" + userStatePO.getUserId();
        HashMap<String, Object> map = new HashMap<>();
        String auth = userStatePO.getAuth();
        Integer enable = userStatePO.getEnable();
        map.put("auth", auth);
        map.put("enable", enable);
        hashOperations.putAll(userStateKey, map);
    }
}
