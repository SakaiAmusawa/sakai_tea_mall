package top.sakai.tmall.front.mall.dao.repository.impl;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.HashOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Repository;
import top.sakai.tmall.front.mall.dao.repository.ICartRepository;
import top.sakai.tmall.front.mall.pojo.po.CartPO;

import java.io.Serializable;

@Repository
@Slf4j
public class CartRepository implements ICartRepository {

    @Autowired
    private RedisTemplate<String, Serializable> redisTemplate;

    @Override
    public void add(CartPO cartPO, Long userId) {

        log.debug("userID:{},add cart:{}", userId, cartPO);

        HashOperations<String, Object, Object> hashOperations = redisTemplate.opsForHash();
        String key = "mall_cart_" + userId;
        Long hashKey = cartPO.getGoodsId();

        Object oldCart = hashOperations.get(key, hashKey);
        if (oldCart != null) {
            CartPO oldCartPO = (CartPO) oldCart;
            Integer oldGoodsNum = oldCartPO.getGoodsNum();
            Integer newGoodsNum = cartPO.getGoodsNum();
            Integer totalGoodsNum = oldGoodsNum + newGoodsNum;
            cartPO.setGoodsNum(totalGoodsNum);
        }
        hashOperations.put(key, hashKey, cartPO);


    }
}
