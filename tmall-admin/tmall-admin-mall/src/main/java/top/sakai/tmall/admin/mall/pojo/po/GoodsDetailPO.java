package top.sakai.tmall.admin.mall.pojo.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
@TableName("mall_goods_detail")
public class GoodsDetailPO {
    @TableId(type = IdType.AUTO)
    Long id;
    Long goodsId;
    String detail;
}
