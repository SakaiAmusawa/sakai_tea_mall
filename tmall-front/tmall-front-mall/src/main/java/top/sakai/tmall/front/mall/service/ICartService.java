package top.sakai.tmall.front.mall.service;

import top.sakai.tmall.common.pojo.CurrentUser;
import top.sakai.tmall.front.mall.pojo.vo.CartVO;

import java.util.List;

public interface ICartService {
    void addCart(CurrentUser user, Long goodsId, Integer goodsNum);

    void modify(CurrentUser user, Long goodsId, Integer goodsNum);

    void incr(CurrentUser user, Long goodsId, Integer goodsNum);

    void reduce(CurrentUser user, Long goodsId, Integer goodsNum);

    List<CartVO> list(Long userId);

    void del(Long useId, Long goodsId);

    void pick(Long id, Long goodsId);

    void unpick(Long id, Long goodsId);
}
