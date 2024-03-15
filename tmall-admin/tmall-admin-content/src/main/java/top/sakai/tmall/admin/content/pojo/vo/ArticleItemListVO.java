package top.sakai.tmall.admin.content.pojo.vo;

import io.swagger.annotations.ApiModelProperty;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class ArticleItemListVO {

    @ApiModelProperty("文章ID")
    Long id;

    @ApiModelProperty("文章标题")
    String title;

    @ApiModelProperty("文章封面")
    String imgUrl;

    @ApiModelProperty("文章摘要")
    String brief;

}
