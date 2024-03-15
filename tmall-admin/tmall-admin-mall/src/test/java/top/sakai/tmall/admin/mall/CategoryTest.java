package top.sakai.tmall.admin.mall;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class CategoryTest {

    @Test
    public void testEquals() {
        Integer a = 100;
        Integer b = 100;
        System.out.println(a == b);

        Integer c = 200;
        Integer d = 200;
        System.out.println(c == d);
    }

}
