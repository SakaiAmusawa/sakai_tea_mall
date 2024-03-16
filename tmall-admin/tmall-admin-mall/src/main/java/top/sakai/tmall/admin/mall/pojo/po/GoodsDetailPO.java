package top.sakai.tmall.admin.mall.pojo.po;

import com.baomidou.mybatisplus.annotation.*;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

import java.time.LocalDateTime;

@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
@TableName("mall_goods_detail")
public class GoodsDetailPO {
    @TableId(type = IdType.AUTO)
    Long id;
    Long goodsId;
    String detail;
    @TableField(fill = FieldFill.INSERT)
    LocalDateTime gmtCreate;
    @TableField(fill = FieldFill.INSERT_UPDATE)
    LocalDateTime gmtModified;
}
