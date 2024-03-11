package top.sakai.tmall.admin.content.pojo.param;

import io.swagger.annotations.ApiModelProperty;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;
import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * @author Sakai
 */
@Data
//设置字段的默认级别
@FieldDefaults(level = AccessLevel.PRIVATE)
public class CategoryAddParam {
    @NotNull(message = "类别名称不能为空-byNoyNull") //不能为null
    @NotBlank(message = "类别名称不能为空-byNotBlank") //不能为“ ” 、“” 、null
    @NotEmpty(message = "类别名称不能为空-byEmpty") //放到容器上
    @Size(min = 1, max = 5, message = "类别名不能过长-bySize")
    @Length(min = 1, max = 5, message = "类别名不能过长-byLength")
    @ApiModelProperty(required = true, dataType = "String", example = "经验")
    String name;
}
