package top.sakai.tmall.admin.content.pojo.param;

import io.swagger.annotations.ApiModelProperty;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

import javax.validation.constraints.NotEmpty;

@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class ArticleAddParam {
    @ApiModelProperty(required = true, dataType = "String")
    @NotEmpty
    String title;
    @ApiModelProperty(required = true, dataType = "String")
    @NotEmpty
    String brief;
}
