package top.sakai.tmall.admin.mall.pojo.po;

import com.baomidou.mybatisplus.annotation.*;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

import java.time.LocalDateTime;

@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
@TableName("mall_category")
public class MallCategoryPO {
    @TableId(type = IdType.AUTO)
    Long id;
    String name;
    /**
     * 父级ID
     */
    Long parentId;
    /**
     * 深度 - 表示类别是第几级
     */
    Integer depth;
    /**
     * 是否为父级
     * 0 NO 1 YES
     */
    Integer isParent;
    @TableField(fill = FieldFill.INSERT)
    LocalDateTime gmtCreate;
    @TableField(fill = FieldFill.INSERT_UPDATE)
    LocalDateTime gmtModified;
}
