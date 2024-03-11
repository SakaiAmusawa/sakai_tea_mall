package top.sakai.tmall.admin.content.service.impl;

import org.springframework.stereotype.Service;
import top.sakai.tmall.admin.content.pojo.param.CategoryAddParam;
import top.sakai.tmall.admin.content.service.ICategoryService;

@Service
public class AAACategoryService implements ICategoryService {
    @Override
    public void addCategory(CategoryAddParam categoryAddParam) {
        System.out.println("AAACategoryService = " + categoryAddParam);
    }
}
