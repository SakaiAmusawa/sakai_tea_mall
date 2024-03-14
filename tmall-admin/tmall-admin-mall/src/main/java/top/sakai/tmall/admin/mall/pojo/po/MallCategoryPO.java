package top.sakai.tmall.admin.mall.pojo.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.FieldDefaults;

import java.time.LocalDateTime;

@Getter
@Setter
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
    LocalDateTime gmtCreate;
    LocalDateTime gmtModified;
}
