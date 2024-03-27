package top.sakai.tmall.admin.mall.service.impl;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.sakai.tmall.admin.mall.dao.repository.IMallCategoryCacheRepository;
import top.sakai.tmall.admin.mall.dao.repository.IMallCategoryRepository;
import top.sakai.tmall.admin.mall.pojo.param.CategoryAddParam;
import top.sakai.tmall.admin.mall.pojo.po.MallCategoryPO;
import top.sakai.tmall.admin.mall.service.IMallCategoryService;
import top.sakai.tmall.common.pojo.vo.MallCategoryTreeVO;

import java.util.ArrayList;
import java.util.List;

@Service
@Slf4j
public class MallCategoryService implements IMallCategoryService {

    @Autowired
    private IMallCategoryRepository mallCategoryRepository;

    @Autowired
    private IMallCategoryCacheRepository mallCategoryCacheRepositoryImpl;

    @Override
    public void save(CategoryAddParam categoryAddParam) {
        String name = categoryAddParam.getName();
        Integer count = mallCategoryRepository.countCategoryByName(name);
        if (count != 0) {
            throw new RuntimeException("名称不能重复");
        }
        Long parentId = categoryAddParam.getParentId();
        Integer depth = 1;
        if (parentId == 0) {
            //如果父级ID=0，直接插入
            MallCategoryPO mallCategoryPO = new MallCategoryPO();
            BeanUtils.copyProperties(categoryAddParam, mallCategoryPO);
            mallCategoryPO.setDepth(depth);
            mallCategoryRepository.save(mallCategoryPO);
        } else {
            MallCategoryPO parentMallCategoryPO = mallCategoryRepository.getCategoryById(parentId);
            if (parentMallCategoryPO == null) {
                throw new RuntimeException("父级不存在");
            }
            depth = parentMallCategoryPO.getDepth() + 1;
            MallCategoryPO mallCategoryPO = new MallCategoryPO();
            BeanUtils.copyProperties(categoryAddParam, mallCategoryPO);
            mallCategoryPO.setDepth(depth);
            Integer rows = mallCategoryRepository.save(mallCategoryPO);
            if (rows != 0) {
                if (parentMallCategoryPO.getIsParent() == 0) {
                    MallCategoryPO update = new MallCategoryPO();
                    update.setId(parentId);
                    update.setIsParent(1);
                    mallCategoryRepository.updateCategoryById(update);
                }
            }
        }
        List<MallCategoryTreeVO> mallCategoryTreeVOS = showTree();
        mallCategoryCacheRepositoryImpl.saveTreeCategory(mallCategoryTreeVOS);
    }


    @Override
    public List<MallCategoryTreeVO> showTree() {

        List<MallCategoryPO> all =
                mallCategoryRepository.getAll();
        log.debug("查询所有类别数据:{}", all);

        List<MallCategoryTreeVO> topCategory = getTopCategory(all);
        for (MallCategoryTreeVO topVo : topCategory) {
            appendChild(topVo, all);
        }
        return topCategory;
    }

    @Override
    public List<MallCategoryTreeVO> treeTopCategory() {
        List<MallCategoryPO> top = mallCategoryRepository.getTopCategory();
        log.debug("查询所有顶级类别数据:{}", top);
        return categoryPOS2VO2(top);
    }

    @Override
    public List<MallCategoryTreeVO> treeChildrenCategory(Long parentId) {
        List<MallCategoryPO> children = mallCategoryRepository.getChildrenCategory(parentId);
        return categoryPOS2VO2(children);
    }

    public List<MallCategoryTreeVO> buildTree(List<MallCategoryPO> categories, Long parentId) {
        List<MallCategoryTreeVO> treeNodes = new ArrayList<>();
        for (MallCategoryPO category : categories) {
            if (category.getParentId().equals(parentId)) {
                MallCategoryTreeVO node = new MallCategoryTreeVO();
                node.setId(category.getId());
                node.setName(category.getName());
                node.setChildren(buildTree(categories, category.getId()));
                log.debug("{}", node);
                treeNodes.add(node);
            }
        }
        return treeNodes;
    }

    /**
     * 把PO列表转化为VO列表
     *
     * @param pos
     * @return
     */
    private List<MallCategoryTreeVO> categoryPOS2VO2(List<MallCategoryPO> pos) {
        List<MallCategoryTreeVO> result = new ArrayList<>();
        pos.forEach(po -> {
            //转换为vo
            result.add(categoryPO2VO(po));
        });
        return result;
    }

    /**
     * 追加子级
     * 递归 1  自己调自己  2 终止条件 退出这个循环
     * 入参1 是给谁设置子级
     * 出参 是入参1的子级
     */
    private MallCategoryTreeVO appendChild(MallCategoryTreeVO vo, List<MallCategoryPO> all) {
        //这个第一个入参Vo设置子级
        List<MallCategoryTreeVO> children = new ArrayList<>();
        for (MallCategoryPO mallCategoryPO : all) {
            //这两个家伙直接比较 用== 还是equals
            if (vo.getId().equals(mallCategoryPO.getParentId())) {
                MallCategoryTreeVO childVO = categoryPO2VO(mallCategoryPO);
                children.add(appendChild(childVO, all)); //去找childVo的子级
            } else {
                //没有子级了,终止条件 不调用appendChild,退出了
            }
        }
        vo.setChildren(children);
        return vo;
        //退出条件是没有子级 isParent = 0
        //if(//没找到子级 ) { //终止条件
        //退出
        //}else {
        //增加子级
        //子级获取到 增加的 children 列表里
        //MallCategoryTreeVO child = new MallCategoryTreeVO();
        //appendChild(child); //继续找子级

        //children.add(child); 导致没法继续找子级

        //}
        //return null;
    }

    //public static void main(String[] args) { //1行
    //   main(args); //2
    //调用逻辑  1 2 1 2 1 2
    //}

    /**
     * 从所有的类别中获取顶级类别
     *
     * @param mallCategoryPOS
     * @return
     */
    private List<MallCategoryTreeVO> getTopCategory(List<MallCategoryPO> mallCategoryPOS) {
        List<MallCategoryTreeVO> result = new ArrayList<>();
        mallCategoryPOS.forEach(po -> {
            if (po.getParentId() == 0) {
                //取最顶级 并且 转换为vo
                result.add(categoryPO2VO(po));
            }
        });

        return result;
    }

    /**
     * PO转换为VO
     *
     * @param po
     * @return
     */
    private MallCategoryTreeVO categoryPO2VO(MallCategoryPO po) {
        MallCategoryTreeVO vo = new MallCategoryTreeVO();
        BeanUtils.copyProperties(po, vo);
        //vo.setName(po.getName());
        return vo;
    }
}
