package top.sakai.tmall.admin.content.pojo.param;

import io.swagger.annotations.ApiModelProperty;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

/**
 * @author Sakai
 */
@Data
//设置字段的默认级别
@FieldDefaults(level = AccessLevel.PRIVATE)
public class CategoryAddParam {
    @ApiModelProperty(required = true, dataType = "String", example = "经验")
    String name;
}
