package top.sakai.tmall.admin.mall.service.impl;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.sakai.tmall.admin.mall.dao.repository.IMallCategoryRepository;
import top.sakai.tmall.admin.mall.pojo.param.CategoryAddParam;
import top.sakai.tmall.admin.mall.pojo.po.MallCategoryPO;
import top.sakai.tmall.admin.mall.pojo.vo.MallCategoryTreeVO;
import top.sakai.tmall.admin.mall.service.IMallCategoryService;

import java.util.ArrayList;
import java.util.List;

@Service
@Slf4j
public class MallCategoryService implements IMallCategoryService {

    @Autowired
    private IMallCategoryRepository mallCategoryRepository;

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
    }

    @Override
    public List<MallCategoryTreeVO> showTree() {
        List<MallCategoryPO> mallCategoryPOS = mallCategoryRepository.getAll();
        log.debug("查询所有类别数据:{}", mallCategoryPOS);
        List<MallCategoryTreeVO> mallCategoryTreeVOS = buildTree(mallCategoryPOS, 0L);
        return mallCategoryTreeVOS;
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
}
