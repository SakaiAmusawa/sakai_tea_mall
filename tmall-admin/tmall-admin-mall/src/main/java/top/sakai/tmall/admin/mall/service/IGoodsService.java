package top.sakai.tmall.admin.mall.service;

import org.springframework.transaction.annotation.Transactional;
import top.sakai.tmall.admin.mall.pojo.param.GoodsAddParam;

public interface IGoodsService {
    @Transactional
    void add(GoodsAddParam goodsAddParam);
}
