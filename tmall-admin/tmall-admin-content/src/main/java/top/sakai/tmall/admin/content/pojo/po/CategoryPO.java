package top.sakai.tmall.admin.content.pojo.po;

import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

/**
 * 数据持久层
 * 对象里的属性和数据库表的字段你一一对应
 */
@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class CategoryPO {
    Long id;
    String name;
    String keywords;
    Integer sort;
    /*
    是否启用 1 启用 0 禁用
     */
    Integer enable;
    Integer isDisplay;
}
