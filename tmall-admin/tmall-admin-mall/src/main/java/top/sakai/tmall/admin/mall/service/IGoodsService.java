package top.sakai.tmall.admin.mall.service;

import org.springframework.transaction.annotation.Transactional;
import top.sakai.tmall.admin.mall.pojo.param.GoodsAddParam;
import top.sakai.tmall.admin.mall.pojo.vo.GoodsVO;

import java.util.List;

public interface IGoodsService {
    @Transactional
    void add(GoodsAddParam goodsAddParam);

    List<GoodsVO> showGoodsByCategoryId(Long categoryId);
}
