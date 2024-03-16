package top.sakai.tmall.admin.mall.pojo.vo;

import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

import java.math.BigDecimal;

@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class GoodsDetailVO {

    Long id;
    String detail;
    String title;
    String brief;
    String categoryName;
    BigDecimal salePrice;

}
