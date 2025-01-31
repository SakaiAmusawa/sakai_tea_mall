package top.sakai.tmall.admin.mall.service;

import top.sakai.tmall.admin.mall.pojo.param.CategoryAddParam;
import top.sakai.tmall.common.pojo.vo.MallCategoryTreeVO;

import java.util.List;

public interface IMallCategoryService {

    void save(CategoryAddParam categoryAddParam);

    List<MallCategoryTreeVO> showTree();

    List<MallCategoryTreeVO> treeTopCategory();

    List<MallCategoryTreeVO> treeChildrenCategory(Long parentId);
}
