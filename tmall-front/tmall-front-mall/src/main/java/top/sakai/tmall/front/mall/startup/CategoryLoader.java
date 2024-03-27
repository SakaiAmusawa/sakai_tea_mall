package top.sakai.tmall.front.mall.startup;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;
import top.sakai.tmall.front.mall.service.ICategoryService;

/**
 * 预加载类别数据到redis
 */
@Component
@Slf4j
public class CategoryLoader implements ApplicationRunner {

    @Autowired
    private ICategoryService categoryService;


    /**
     * 缓存预热
     * 加载类别数据到redis
     *
     * @param args 应用参数
     * @throws Exception 异常
     */
    @Override
    public void run(ApplicationArguments args) throws Exception {
        log.debug("ApplicationRunner 开始加载类别数据到redis");
        categoryService.initCategoryTree();
        log.debug("ApplicationRunner 类别数据加载完成");
    }
}
