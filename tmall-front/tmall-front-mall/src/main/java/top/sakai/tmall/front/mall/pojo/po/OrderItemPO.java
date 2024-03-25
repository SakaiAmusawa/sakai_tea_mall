package top.sakai.tmall.front.mall.pojo.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

import java.math.BigDecimal;

@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
@TableName("mall_order_item")
public class OrderItemPO {

    @TableId(type = IdType.AUTO)
    Long id;

    Long orderId;

    Long goodsId;

    Integer goodsNum;

    BigDecimal saleUnitPrice;

}
