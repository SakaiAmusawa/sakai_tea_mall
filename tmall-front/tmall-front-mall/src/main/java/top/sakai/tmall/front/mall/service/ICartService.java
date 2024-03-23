package top.sakai.tmall.front.mall.service;

import top.sakai.tmall.common.pojo.CurrentUser;

public interface ICartService {
    void addCart(CurrentUser user, Long goodsId, Integer goodsNum);

    void modify(CurrentUser user, Long goodsId, Integer goodsNum);

    void incr(CurrentUser user, Long goodsId, Integer goodsNum);

    void reduce(CurrentUser user, Long goodsId, Integer goodsNum);
}
