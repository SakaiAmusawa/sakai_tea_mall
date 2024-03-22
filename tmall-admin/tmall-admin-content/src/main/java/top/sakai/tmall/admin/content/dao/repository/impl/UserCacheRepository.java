package top.sakai.tmall.admin.content.dao.repository.impl;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.HashOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.util.CollectionUtils;
import top.sakai.tmall.admin.content.dao.repository.IUserCacheRepository;
import top.sakai.tmall.common.pojo.po.UserStatePO;

import java.io.Serializable;
import java.util.Map;

@Slf4j
@Repository
public class UserCacheRepository implements IUserCacheRepository {

    @Autowired
    private RedisTemplate<String, Serializable> redisTemplate;

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
            log.debug(userStatePO.getAuth());
            userStatePO.setEnable((Integer) enable);
            log.debug(userStatePO.getEnable().toString());
        }
        return userStatePO;
    }
}
