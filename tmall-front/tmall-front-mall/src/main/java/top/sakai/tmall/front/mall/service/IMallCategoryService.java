package top.sakai.tmall.front.mall.service;


import top.sakai.tmall.front.mall.pojo.vo.MallCategoryTreeVO;

import java.util.List;

public interface IMallCategoryService {


    List<MallCategoryTreeVO> showTree();

    List<MallCategoryTreeVO> treeTopCategory();

    List<MallCategoryTreeVO> treeChildrenCategory(Long parentId);
}
