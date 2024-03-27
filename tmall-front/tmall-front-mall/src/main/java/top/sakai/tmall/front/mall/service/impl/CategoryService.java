package top.sakai.tmall.front.mall.service.impl;


import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.sakai.tmall.common.pojo.vo.MallCategoryTreeVO;
import top.sakai.tmall.front.mall.dao.repository.ICategoryCacheRepository;
import top.sakai.tmall.front.mall.dao.repository.ICategoryRepository;
import top.sakai.tmall.front.mall.pojo.po.CategoryPO;
import top.sakai.tmall.front.mall.service.ICategoryService;

import java.util.ArrayList;
import java.util.List;

@Slf4j
@Service
public class CategoryService implements ICategoryService {

    @Autowired
    private ICategoryRepository categoryRepository;

    @Autowired
    private ICategoryCacheRepository categoryCacheRepository;

    /**
     * 简单本地缓存  https://blog.csdn.net/zzzili/article/details/131326504
     */
    //private Map<String,List<MallCategoryTreeVO>> cached = new HashMap<>();


    /**
     * 初始化类别数据到redis
     */
    @Override
    public void initCategoryTree() {
        // 1 从数据库查出来
        List<MallCategoryTreeVO> mallCategoryTreeVOS = treeCategoryFromDB();
        // 2 放到redis
        categoryCacheRepository.saveCategoryTree(mallCategoryTreeVOS);
    }

    /**
     * 把平铺的数据表结构变成多层级的树形结构
     *
     * @return
     */
    @Override
    public List<MallCategoryTreeVO> showTree() {
        return categoryCacheRepository.getCategoryTree();
    }

    public List<MallCategoryTreeVO> treeCategoryFromDB() {

        List<CategoryPO> all =
                categoryRepository.getAll();
        log.debug("查询所有类别数据:{}", all);

        List<MallCategoryTreeVO> topCategory = getTopCategory(all);
        //获取顶级的子级
        //parent_id 等于顶级的id 就是顶级的子级
        for (MallCategoryTreeVO topVo : topCategory) {
            appendChild(topVo, all);
        }

        return topCategory;
        //}
        //return mockData();
    }

    @Override
    public List<MallCategoryTreeVO> treeTopCategory() {
        //取最顶级
        List<CategoryPO> top = categoryRepository.getTopCategory();
        log.debug("查询所有顶级类别数据:{}", top);
        return categoryPOS2VO2(top);
    }

    @Override
    public List<MallCategoryTreeVO> treeChildrenCategory(Long parentId) {
        List<CategoryPO> children = categoryRepository.getChildrenCategory(parentId);
        return categoryPOS2VO2(children);
    }


    /**
     * 把PO列表转化为VO列表
     *
     * @param pos
     * @return
     */
    private List<MallCategoryTreeVO> categoryPOS2VO2(List<CategoryPO> pos) {
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
    private MallCategoryTreeVO appendChild(MallCategoryTreeVO vo, List<CategoryPO> all) {
        //这个第一个入参Vo设置子级
        List<MallCategoryTreeVO> children = new ArrayList<>();
        for (CategoryPO mallCategoryPO : all) {
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
    private List<MallCategoryTreeVO> getTopCategory(List<CategoryPO> mallCategoryPOS) {
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
    private MallCategoryTreeVO categoryPO2VO(CategoryPO po) {
        MallCategoryTreeVO vo = new MallCategoryTreeVO();
        BeanUtils.copyProperties(po, vo);
        //vo.setName(po.getName());
        return vo;
    }

}
