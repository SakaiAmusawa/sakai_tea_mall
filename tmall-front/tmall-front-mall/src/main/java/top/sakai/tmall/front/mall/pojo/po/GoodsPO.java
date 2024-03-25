package top.sakai.tmall.front.mall.pojo.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

import java.io.Serializable;
import java.math.BigDecimal;

@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
@TableName("mall_goods")
public class GoodsPO implements Serializable {

    @TableId(type = IdType.AUTO)
    Long id;

    String title;

    Integer isPutOn;

    BigDecimal salePrice;
}
