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
@TableName("mall_order")
public class OrderPO implements Serializable {
    @TableId(type = IdType.AUTO)
    Long id;
    Long buyerId;
    String orderNo;
    BigDecimal totalPrice;
    Integer orderState;
    Integer goodsNum;
}
