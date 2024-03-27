package top.sakai.tmall.front.mall.service.impl;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import top.sakai.tmall.front.mall.dao.repository.ICategoryCacheRepository;
import top.sakai.tmall.front.mall.dao.repository.IMallCategoryRepository;
import top.sakai.tmall.front.mall.pojo.po.MallCategoryPO;
import top.sakai.tmall.front.mall.pojo.vo.MallCategoryTreeVO;
import top.sakai.tmall.front.mall.service.ICategoryService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@Slf4j
public class CategoryService implements ICategoryService {

    @Autowired
    private IMallCategoryRepository mallCategoryRepository;
    @Autowired
    private ICategoryCacheRepository categoryCacheRepository;


    private final Map<String, List<MallCategoryTreeVO>> cached = new HashMap<>();

    public List<MallCategoryTreeVO> treeCategory() {
        return categoryCacheRepository.getCategoryTree();
    }

    public List<MallCategoryTreeVO> treeCategoryFromDB() {

        String key = "ALL";
        List<MallCategoryTreeVO> cachedVo = cached.get("ALL");
        if (!CollectionUtils.isEmpty(cachedVo)) {
            return cachedVo;
        } else {
            List<MallCategoryPO> all =
                    mallCategoryRepository.getAll();
            log.debug("查询所有类别数据:{}", all);

            //先取最顶级
            List<MallCategoryTreeVO> topCategory = getTopCategory(all);
            //获取顶级的子级
            //parent_id 等于顶级的id 就是顶级的子级
            for (MallCategoryTreeVO topVo : topCategory) {
                appendChild(topVo, all);
            }

            cached.put(key, topCategory);
            return topCategory;
        }
    }

    @Override
    public List<MallCategoryTreeVO> showTree() {
        return categoryCacheRepository.getCategoryTree();
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

    @Override
    public void initCategoryTree() {
        List<MallCategoryTreeVO> mallCategoryTreeVOS = treeCategoryFromDB();
        categoryCacheRepository.saveCategoryTree(mallCategoryTreeVOS);
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

    private MallCategoryTreeVO categoryPO2VO(MallCategoryPO po) {
        MallCategoryTreeVO vo = new MallCategoryTreeVO();
        BeanUtils.copyProperties(po, vo);
        //vo.setName(po.getName());
        return vo;
    }

    private List<MallCategoryTreeVO> categoryPOS2VO2(List<MallCategoryPO> pos) {
        List<MallCategoryTreeVO> result = new ArrayList<>();
        pos.forEach(po -> {
            //转换为vo
            result.add(categoryPO2VO(po));
        });
        return result;
    }

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
    }


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
}
