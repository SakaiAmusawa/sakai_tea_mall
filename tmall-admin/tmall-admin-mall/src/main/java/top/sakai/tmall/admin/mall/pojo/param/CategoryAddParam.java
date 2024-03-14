package top.sakai.tmall.admin.mall.pojo.param;

import io.swagger.annotations.ApiModelProperty;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class CategoryAddParam {

    @ApiModelProperty(value = "类别名称", required = true, dataType = "String")
    @NotBlank(message = "名称不能为空") String name;

    @ApiModelProperty(value = "父级ID", required = true, dataType = "Long")
    @NotNull(message = "父级ID不能为空") Long parentId;

    /*
        @ApiModelProperty(value = "深度", required = true, dataType = "Integer")
        @NotNull(message = "深度不能为空")
        Integer depth;
    */

    /**
     * 是否状态
     * 1 启用 0 禁用
     */
    @ApiModelProperty(value = "启用状态", required = true, dataType = "Integer")
    Integer enable;

    @ApiModelProperty(value = "展示状态", required = true, dataType = "Integer")
    Integer isDisplay;
}
