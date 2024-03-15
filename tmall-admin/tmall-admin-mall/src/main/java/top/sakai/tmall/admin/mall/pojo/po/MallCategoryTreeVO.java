package top.sakai.tmall.admin.mall.pojo.po;

import io.swagger.annotations.ApiModelProperty;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

import java.io.Serializable;
import java.util.List;

@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class MallCategoryTreeVO implements Serializable {
    @ApiModelProperty("类别ID")
    Long id;

    @ApiModelProperty("类别名称")
    String name;

    @ApiModelProperty("子集")
    List<MallCategoryTreeVO> children;
}
