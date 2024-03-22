package top.sakai.tmall.admin.mall.redis;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.connection.RedisConnection;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.core.*;

import java.io.Serializable;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Redis的使用演示 配合 RedisConfiguration使用！！！
 * redis的五大基本类型
 * String
 * List
 * Set
 * Hash
 * Zset(TreeSet)
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

        System.out.println("删除前 :" + listOperations.range("test-list", 0, -1));
        listOperations.remove("test-list", 1, "hello");
        System.out.println("删除后 :" + listOperations.range("test-list", 0, -1));

    }

    @Test
    public void testRedisTemplateListPush() {
        ListOperations<String, Serializable> listOperations = redisTemplate.opsForList();
        // 左  [3,2,1,3,4]  右
        // 队列  左 -->  [3,2,1]  ---> 右
        // 队列  左 <--  [3,2,1]  <--- 右
        // 栈   左 -->  [3,2,1]  右
        //      左 <-- 3  2  1
        // 栈   左   [3,2,1] <-- 右
        //      左           --> 1 2 3
        // 一头放,另外一头取, 队列
        // 一头放,一头取  栈
        String key = "push-list";
        listOperations.rightPush(key, 1); //排队 先来后到
        listOperations.rightPush(key, "hello2");
        Serializable serializable = listOperations.leftPop(key);
        System.out.println(key + ":" + serializable);
        //思考打印的是谁?


        String stackKey = "stack-list";
        listOperations.rightPush(stackKey, 1); //排队 先来后到
        listOperations.rightPush(stackKey, "hello2");
        System.out.println(stackKey + ":" + listOperations.rightPop(stackKey));

    }

    @Test
    public void testRedisTemplateSet() {
        SetOperations<String, Serializable> setOperations = redisTemplate.opsForSet();
        String setKey = "set-key";
        //C
        setOperations.add(setKey, "1", "2", "3");
        Long size = setOperations.size(setKey);
        System.out.println("size：" + size);
        //R
        List<Serializable> pop = setOperations.pop(setKey, 1);//弹出一个值
        System.out.println("弹出的值：" + pop);
        Set<Serializable> set = setOperations.members(setKey);
        System.out.println("set-key：" + set);
        //U
        //D
        //删除一个值，返回删除的数量，如果不存在返回0，如果存在返回1，如果是多个值，返回删除的数量.
        Long remove = setOperations.remove(setKey, "1");
        System.out.println("影响的条数：" + remove);

        //setOperations.difference();
        //setOperations.intersect();
    }

    @Test
    public void testRedisTemplateSetRead() {
        SetOperations<String, Serializable> setOperations = redisTemplate.opsForSet();
        String setKey = "set-key-read";
        //C
        //setOperations.add(setKey, "IPhone10086", "LP570", "JAVA从入门到入土", "谢谢惠顾", "再来一次", "烤串");
        setOperations.add(setKey, "老板", "经理", "秘书", "组长", "小瘪三", "保安");
        //只随机，不会取出值
        List<Serializable> serializables = setOperations.randomMembers(setKey, 1);
        System.out.println(serializables);
    }

    @Test
    public void testRedisTemplateSetDifference() {
        SetOperations<String, Serializable> setOperations = redisTemplate.opsForSet();
        String setKey = "set-key-difference";
        String setKey1 = "set-key-read";
        String setKey3 = "set-key-test";

        setOperations.add(setKey, "老板", "经理", "秘书", "组长", "小瘪三", "保安", "程序员");
        setOperations.add(setKey3, "老板");
        Set<Serializable> difference1 = setOperations.difference(Arrays.asList(setKey, setKey1, setKey3));
        System.out.println(difference1);
        Set<Serializable> difference = setOperations.difference(setKey1, setKey3);
        System.out.println(difference);
        //结果取交集
    }

    @Test
    public void testRedisTemplateSetDUI() {
        //difference
        //intersect
        //union
        SetOperations<String, Serializable> setOperations = redisTemplate.opsForSet();
        String setKey1 = "set-key2";
        String setKey2 = "set-key1";
        String setKey3 = "set-key3";

        setOperations.add(setKey1, "1", "2", "3", "a", "b");
        setOperations.add(setKey2, "1", "2", "3", "a", "b", "c");
        setOperations.add(setKey3, "1", "2", "3");

        System.out.println(setOperations.difference(setKey2, setKey1));
        System.out.println(setOperations.difference(setKey1, setKey3));
        System.out.println(setOperations.difference(setKey2, setKey3));
        System.out.println(setOperations.intersect(setKey2, setKey1));
        System.out.println(setOperations.intersect(setKey1, setKey3));
        System.out.println(setOperations.intersect(setKey3, setKey2));
        System.out.println(setOperations.union(setKey2, setKey1));
        System.out.println(setOperations.union(setKey1, setKey3));
        System.out.println(setOperations.union(setKey3, setKey2));
    }

    @Test
    //redis 怎么实现排序
    public void testRedisTemplateZSet() {
        ZSetOperations<String, Serializable> zSetOperations = redisTemplate.opsForZSet();
        String key = "zset-key";
        //C
        zSetOperations.add(key, "茶", 10);
        zSetOperations.add(key, "竹", 8);
        zSetOperations.add(key, "雅", 5);

        //R
        //zSetOperations.addIfAbsent()//添加的时候如果没有在添加
        System.out.println(zSetOperations.range(key, 0, -1));
        System.out.println(zSetOperations.rangeByScore(key, 6, 10));
        System.out.println(zSetOperations.rank(key, "茶"));//返回的是下标
    }

    @Test
    public void testHash() {
        HashOperations<String, Object, Object> hashOperations = redisTemplate.opsForHash();
        String key = "hash-key";
        //C
        hashOperations.put(key, "k1", 1);
        hashOperations.put(key, "k1", 3);
        hashOperations.put(key, "k2", 30);
        hashOperations.put(key, "k3", 300);
        System.out.println(hashOperations.get(key, "k1"));
        //R
        Map<Object, Object> entries = hashOperations.entries(key);
        System.out.println(entries);
        List<Object> k1 = hashOperations.values(key);
        System.out.println(k1);
        Boolean k2 = hashOperations.hasKey(key, "k2");
        System.out.println(k2);
        hashOperations.increment(key, "k1", 2);//改变值
        hashOperations.increment(key, "k1", -1);//改变值
        System.out.println(hashOperations.lengthOfValue(key, "k1"));
        System.out.println(hashOperations.lengthOfValue(key, "k2"));
        System.out.println(hashOperations.lengthOfValue(key, "k3"));
    }

}
