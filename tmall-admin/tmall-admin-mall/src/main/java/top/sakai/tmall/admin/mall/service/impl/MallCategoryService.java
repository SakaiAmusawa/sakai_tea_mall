package top.sakai.tmall.admin.mall.service.impl;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.sakai.tmall.admin.mall.dao.repository.IMallCategoryRepository;
import top.sakai.tmall.admin.mall.pojo.param.CategoryAddParam;
import top.sakai.tmall.admin.mall.pojo.po.MallCategoryPO;
import top.sakai.tmall.admin.mall.pojo.po.MallCategoryTreeVO;
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
        List<MallCategoryPO> mallCategoryPOS = mallCategoryRepository.getAll(); // todo 数据太大怎么办
        log.debug("查询所有类别数据:{}", mallCategoryPOS);
        List<MallCategoryTreeVO> mallCategoryTreeVOS = buildTree(mallCategoryPOS, 0L);
        return mallCategoryTreeVOS;
    }

    public List<MallCategoryTreeVO> buildTree(List<MallCategoryPO> categories, Long parentId) {
        List<MallCategoryTreeVO> treeNodes = new ArrayList<>();
        for (MallCategoryPO category : categories) {
            if (category.getParentId().equals(parentId)) {
                MallCategoryTreeVO node = new MallCategoryTreeVO();
                node.setId(category.getId());
                node.setName(category.getName());
                node.setChildren(buildTree(categories, category.getId()));
                treeNodes.add(node);
            }
        }
        return treeNodes;
    }


    public List<MallCategoryTreeVO> mockData() {
        MallCategoryTreeVO vo = new MallCategoryTreeVO();
        vo.setId(1L);
        vo.setName("北京");


        MallCategoryTreeVO vo1 = new MallCategoryTreeVO();
        vo1.setId(2L);
        vo1.setName("海淀");

        List<MallCategoryTreeVO> children = new ArrayList<>();
        children.add(vo1);

        vo.setChildren(children);


        List result = new ArrayList();
        result.add(vo);

        return result;
    }
}
