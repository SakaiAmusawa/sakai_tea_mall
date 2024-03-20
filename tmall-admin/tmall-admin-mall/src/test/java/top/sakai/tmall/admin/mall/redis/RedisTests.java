package top.sakai.tmall.admin.mall.redis;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.RedisTemplate;

import java.io.Serializable;

/**
 * Redis的使用演示
 */
@SpringBootTest
public class RedisTests {

    @Autowired
    private RedisTemplate<String, Serializable> redisTemplate;

    @Test
    public void testRedis() {
        Boolean k1 = redisTemplate.delete("k1");
        System.out.println(k1);

    }

}
