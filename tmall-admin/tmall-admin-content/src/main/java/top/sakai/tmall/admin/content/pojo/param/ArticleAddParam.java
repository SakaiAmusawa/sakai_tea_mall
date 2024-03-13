package top.sakai.tmall.admin.content.pojo.param;

import io.swagger.annotations.ApiModelProperty;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

import javax.validation.constraints.NotEmpty;
import java.io.Serializable;

@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class ArticleAddParam implements Serializable {
    @ApiModelProperty(required = true, dataType = "String")
    @NotEmpty(message = "标题不能为空") String title;
    @ApiModelProperty(required = true, dataType = "String")
    @NotEmpty(message = "内容不能为空") String content;
    @ApiModelProperty(required = true, dataType = "Long")
    Long categoryId;
}
