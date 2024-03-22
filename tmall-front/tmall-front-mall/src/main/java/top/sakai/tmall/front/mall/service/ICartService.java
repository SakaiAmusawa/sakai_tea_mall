package top.sakai.tmall.front.mall.service;

import top.sakai.tmall.common.pojo.CurrentUser;

public interface ICartService {
    void addCart(CurrentUser user, Long goodsId, Integer goodsNum);
}
