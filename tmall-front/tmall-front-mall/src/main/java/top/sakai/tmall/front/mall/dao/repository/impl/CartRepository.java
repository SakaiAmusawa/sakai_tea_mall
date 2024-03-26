package top.sakai.tmall.front.mall.dao.repository.impl;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.HashOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.util.CollectionUtils;
import top.sakai.tmall.front.mall.dao.repository.ICartRepository;
import top.sakai.tmall.front.mall.pojo.po.CartPO;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
@Slf4j
public class CartRepository implements ICartRepository {

    private final RedisTemplate<String, Serializable> redisTemplate;

    public CartRepository(RedisTemplate<String, Serializable> redisTemplate) {
        this.redisTemplate = redisTemplate;
    }

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

        String goodsNumHashKey = getGoodsNumHashKey(hashKey);
        String goodsCheckedHashKey = getGoodsCheckedHashKey(hashKey);
        String goodsInfoHashKey = getGoodsInfoHashKey(hashKey);


        Map<String, Object> smallMap = new HashMap<>();
        smallMap.put(goodsNumHashKey, cartPO.getGoodsNum());
        smallMap.put(goodsCheckedHashKey, cartPO.getChecked());
        smallMap.put(goodsInfoHashKey, cartPO);

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
        String goodsNumHashKey = getGoodsNumHashKey(goodsId);
        hashOperations.increment(cartKey, goodsNumHashKey, goodsNum);

    }

    @Override
    public List<CartPO> list(Long userId) {
        HashOperations<String, String, Object> hashOperations = redisTemplate.opsForHash();
        String cartKey = getCartKey(userId);

        List<CartPO> result = new ArrayList<>();
        Map<String, Object> entries = hashOperations.entries(cartKey);
        if (!CollectionUtils.isEmpty(entries)) {
            entries.forEach((k, v) -> {
                if (k.contains("goods")) {
                    CartPO currentCartPo = (CartPO) v;
                    result.add(currentCartPo);
                }
            });
            result.forEach(po -> {
                Long goodsId = po.getGoodsId();
                String goodsNumHashKey = getGoodsNumHashKey(goodsId);
                String goodsCheckedHashKey = getGoodsCheckedHashKey(goodsId);
                Object goodsNum = entries.get(goodsNumHashKey);
                Object goodsChecked = entries.get(goodsCheckedHashKey);
                po.setGoodsNum(Integer.valueOf(String.valueOf(goodsNum)));
                po.setChecked(Integer.valueOf(String.valueOf(goodsChecked)));
            });
        }
        return result;
    }

    @Override
    public void del(Long useId, Long goodsId) {
        HashOperations<String, Object, Object> hashOperations = redisTemplate.opsForHash();
        String cartKey = getCartKey(useId);
        String goodsNumHashKey = getGoodsNumHashKey(goodsId);
        String goodsCheckedHashKey = getGoodsCheckedHashKey(goodsId);
        String goodsInfoHashKey = getGoodsInfoHashKey(goodsId);
        hashOperations.delete(cartKey, goodsNumHashKey, goodsCheckedHashKey, goodsInfoHashKey);
    }

    @Override
    public void modify(Long id, Long goodsId, Integer goodsNum) {
        String cartKey = getCartKey(id);
        String goodsNumHashKey = getGoodsNumHashKey(goodsId);
        HashOperations<String, Object, Object> hashOperations = redisTemplate.opsForHash();
        hashOperations.put(cartKey, goodsNumHashKey, goodsNum);
    }

    @Override
    public void updateCheckStatusByUserIdAndGoodsId(Long id, Long goodsId, Integer checkStatus) {
        HashOperations<String, Object, Object> hashOperations = redisTemplate.opsForHash();
        String cartKey = getCartKey(id);
        String goodsCheckedHashKey = getGoodsCheckedHashKey(goodsId);
        hashOperations.put(cartKey, goodsCheckedHashKey, checkStatus);
    }


    private String getCartKey(Long userId) {

        String CART_KEY = "mall_cart_";
        return CART_KEY + userId;

    }

    private String getGoodsNumHashKey(Long hashKey) {
        return hashKey + "_num";
    }

    private String getGoodsCheckedHashKey(Long hashKey) {
        return hashKey + "_checked";
    }

    private String getGoodsInfoHashKey(Long hashKey) {
        return hashKey + "_goods";
    }

}
