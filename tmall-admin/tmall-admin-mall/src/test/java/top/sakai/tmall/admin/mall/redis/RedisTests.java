package top.sakai.tmall.admin.mall.redis;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.connection.RedisConnection;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.core.ListOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;

import java.io.Serializable;
import java.nio.charset.StandardCharsets;
import java.util.List;

/**
 * Redis的使用演示 配合 RedisConfiguration使用！！！
 */
@SpringBootTest
public class RedisTests {

    @Autowired
    private RedisTemplate<String, Serializable> redisTemplate;

    @Test
    public void testRedis() {

        RedisConnectionFactory connectionFactory = redisTemplate.getConnectionFactory();
        System.out.println(connectionFactory);
        //使用Connection连接
        RedisConnection connection = connectionFactory.getConnection();
        System.out.println(connection);
        String k1 = "k1";
        String v1 = "v1";
        //放字节数组
        byte[] k1Bytes = k1.getBytes(StandardCharsets.UTF_8);
        byte[] v1Bytes = v1.getBytes(StandardCharsets.UTF_8);
        System.out.println(k1Bytes);
        System.out.println(v1Bytes);
        System.out.println(connection.set(k1Bytes, v1Bytes));
        //取字节数字
        byte[] bytes = connection.get(k1Bytes);
        String s1 = new String(bytes);
        System.out.println(s1);

        //Boolean k = redisTemplate.delete("k1");
        //System.out.println(k);

    }

    @Test
    public void testRedisTemplate() {
        ValueOperations<String, Serializable> opsForValue = redisTemplate.opsForValue();
        //System.out.println(opsForValue.get("k1")); //该代码无法运行，详情了解序列化器

        //调用了redisTemplate中的序列化器，转换为了JSON格式
        opsForValue.set("k2", "v2");
        System.out.println(opsForValue.get("k2"));
        opsForValue.set("k2", "v2-new");
        System.out.println(opsForValue.get("k2"));
        redisTemplate.delete("k2");
    }

    @Test
    public void testRedisTemplateString() {
    }

    @Test
    public void testRedisTemplateList() {

        ListOperations<String, Serializable> listOperations = redisTemplate.opsForList();
        listOperations.rightPush("test-list", "hello");

        Serializable index = listOperations.index("test-list", 0);
        System.out.println(index);

        Long size = listOperations.size("test-list");
        System.out.println(size);

        List<Serializable> range = listOperations.range("test-list", 0, -1);
        System.out.println(range);
    }

}
