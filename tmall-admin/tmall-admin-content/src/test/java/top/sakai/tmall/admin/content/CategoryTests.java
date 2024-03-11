package top.sakai.tmall.admin.content;

import org.springframework.boot.test.context.SpringBootTest;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

@SpringBootTest
public class CategoryTests {
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
}
