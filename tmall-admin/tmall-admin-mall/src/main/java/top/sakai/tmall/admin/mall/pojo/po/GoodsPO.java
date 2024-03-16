package top.sakai.tmall.admin.mall.pojo.po;

import com.baomidou.mybatisplus.annotation.*;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
@TableName("mall_goods")
public class GoodsPO {

    @TableId(type = IdType.AUTO)
    Long id;
    Long categoryId;
    String title;
    String brief;
    String categoryName;
    BigDecimal salePrice;
    @TableField(fill = FieldFill.INSERT)
    LocalDateTime gmtCreate;
    @TableField(fill = FieldFill.INSERT_UPDATE)
    LocalDateTime gmtModified;

}
