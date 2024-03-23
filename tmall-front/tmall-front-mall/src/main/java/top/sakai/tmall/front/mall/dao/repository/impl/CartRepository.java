package top.sakai.tmall.front.mall.dao.repository.impl;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.HashOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Repository;
import top.sakai.tmall.front.mall.dao.repository.ICartRepository;
import top.sakai.tmall.front.mall.pojo.po.CartPO;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

@Repository
@Slf4j
public class CartRepository implements ICartRepository {

    @Autowired
    private RedisTemplate<String, Serializable> redisTemplate;

    @Override
    public void add(CartPO cartPO, Long userId) {

        log.debug("userID:{},add cart:{}", userId, cartPO);

        HashOperations<String, Object, Object> hashOperations = redisTemplate.opsForHash();
        String key = getCartKey(userId);
        Long hashKey = cartPO.getGoodsId();

/*
        Object oldCart = hashOperations.get(key, hashKey);
        if (oldCart != null) {
            CartPO oldCartPO = (CartPO) oldCart;
            Integer oldGoodsNum = oldCartPO.getGoodsNum();
            Integer newGoodsNum = cartPO.getGoodsNum();
            Integer totalGoodsNum = oldGoodsNum + newGoodsNum;
            cartPO.setGoodsNum(totalGoodsNum);
        }

        hashOperations.put(key, hashKey, cartPO);
*/

        String numHashKey = hashKey + "_num";
        String checkHashKey = hashKey + "_checked";
        String goodsHashKey = hashKey + "_goods";

        Map<String, Object> smallMap = new HashMap<>();
        smallMap.put(numHashKey, cartPO.getGoodsNum());
        smallMap.put(checkHashKey, cartPO.getChecked());
        smallMap.put(goodsHashKey, cartPO);

        hashOperations.putAll(key, smallMap);

    }

    @Override
    public CartPO getGoodsByGoodsIdAndUserId(Long userId, Long goodsId) {

        HashOperations<String, String, CartPO> hashOperations = redisTemplate.opsForHash();
        String cartKey = getCartKey(userId);

        String goodsHashKey = goodsId + "_goods";
        return hashOperations.get(cartKey, goodsHashKey);
    }

    @Override
    public void addCartGoodsNum(Long userId, Long goodsId, Integer goodsNum) {

        HashOperations<String, String, CartPO> hashOperations = redisTemplate.opsForHash();
        String cartKey = getCartKey(userId);
        String numHashKey = goodsId + "_num";
        hashOperations.increment(cartKey, numHashKey, goodsNum);

    }

    private String getCartKey(Long userId) {

        String CART_KEY = "mall_cart_";
        return CART_KEY + userId;

    }

}
