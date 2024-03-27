package top.sakai.tmall.admin.mall.dao.repository;


import top.sakai.tmall.common.pojo.vo.MallCategoryTreeVO;

import java.util.List;

public interface IMallCategoryCacheRepository {
    void saveTreeCategory(List<MallCategoryTreeVO> mallCategoryTreeVOS);
}
