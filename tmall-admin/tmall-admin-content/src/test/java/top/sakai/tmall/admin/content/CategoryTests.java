package top.sakai.tmall.admin.content;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import top.sakai.tmall.admin.content.dao.CategoryMapper;
import top.sakai.tmall.admin.content.pojo.param.CategoryAddParam;
import top.sakai.tmall.admin.content.pojo.po.CategoryPO;
import top.sakai.tmall.admin.content.service.ICategoryService;

import javax.sql.DataSource;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.sql.SQLException;
import java.util.List;

@SpringBootTest
public class CategoryTests {
    @Autowired
    private CategoryMapper categoryMapper;
    @Autowired
    private DataSource dataSource;
    @Autowired
    private ICategoryService categoryService;

    public static void main(String[] args) throws Exception {
        Class<?> aClass = Class.forName("top.sakai.tmall.admin.content.pojo.po.CategoryPO");

        for (Annotation annotation : aClass.getAnnotations()) {
            System.out.println(annotation);
        }

        for (Constructor<?> constructor : aClass.getConstructors()) {
            System.out.println(constructor);
        }

        for (Method declaredMethod : aClass.getDeclaredMethods()) {
            System.out.println(declaredMethod.getName());
        }

        for (Field field : aClass.getDeclaredFields()) {
            System.out.println(field.getName());
        }

        //通过反射机制创建对象
        Object o = aClass.newInstance();
        Method wirteMethod = aClass.getMethod("setName", String.class);
        wirteMethod.invoke(o, "经验");
        System.out.println(o);
    }

    @Test
    public void testDataSource() throws SQLException {
        System.out.println(dataSource.getConnection());
    }

    @Test
    public void testCategoryPO() {
        CategoryPO categoryPO = new CategoryPO();
        System.out.println(categoryPO);
    }

    @Test
    public void testCategoryMapper() {
        CategoryPO categoryPO = categoryMapper.getCategoryByName("经验");
        System.out.println(categoryPO);
    }

    @Test
    public void testCategoryService() {
        CategoryAddParam param = new CategoryAddParam();
        param.setName("经验");
        categoryService.addCategory(param);
    }

    @Test
    public void testCategoryPlusMapper() {
        CategoryPO categoryPO = new CategoryPO();
        categoryPO.setName("test1");
        categoryMapper.insert(categoryPO);
        System.out.println(categoryPO.getId());
    }

    @Test
    public void testCategoryPlusCRUDMapper() {
        QueryWrapper queryWrapper = new QueryWrapper();
        queryWrapper.eq("id", 4);
        List list = categoryMapper.selectMaps(queryWrapper);
        System.out.println(list);
        QueryWrapper queryWrapperDelete = new QueryWrapper();
        queryWrapperDelete.eq("name", "test");
        int delete = categoryMapper.delete(queryWrapperDelete);
        System.out.println(delete);
    }

    @Test
    public void testMybatisPlusSelect() {
        QueryWrapper queryWrapper = new QueryWrapper();
        queryWrapper.eq("name", "test1");

        /*
        One record is expected, but the query result is multiple records
        查询出的结果过多
        CategoryPO categoryPO = categoryMapper.selectOne(queryWrapper);
        System.out.println(categoryPO);
         */

        Long count = categoryMapper.selectCount(queryWrapper);
        System.out.println(count);
    }
}
