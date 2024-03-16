package top.sakai.tmall.admin.mall.pojo.param;

import io.swagger.annotations.ApiModelProperty;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;

@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class GoodsAddParam {

    @ApiModelProperty(value = "类别ID", required = true, dataType = "Long")
    @NotNull
    Long categoryId;
    @ApiModelProperty(value = "商品名", required = true, dataType = "String")
    @NotBlank(message = "名称不能为空")
    String name;
    @ApiModelProperty(value = "简介", required = true, dataType = "String")
    @NotBlank(message = "简介不能为空")
    String brief;
    @ApiModelProperty(value = "售价", required = true, dataType = "BigDecimal")
    @NotNull
    BigDecimal salePrice;

}
