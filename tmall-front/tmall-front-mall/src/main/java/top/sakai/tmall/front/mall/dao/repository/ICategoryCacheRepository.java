package top.sakai.tmall.front.mall.dao.repository;


import top.sakai.tmall.common.pojo.vo.MallCategoryTreeVO;

import java.util.List;

public interface ICategoryCacheRepository {
    void saveCategoryTree(List<MallCategoryTreeVO> mallCategoryTreeVOS);

    List<MallCategoryTreeVO> getCategoryTree();
}
