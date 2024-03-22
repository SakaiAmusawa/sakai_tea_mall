package top.sakai.tmall.front.mall.pojo.po;

import io.swagger.annotations.ApiModelProperty;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

import java.io.Serializable;
import java.math.BigDecimal;

@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class CartPO implements Serializable {

    @ApiModelProperty(value = "商品ID")
    Long goodsId;

    @ApiModelProperty(value = "商品类别")
    Integer goodsNum;

    @ApiModelProperty(value = "商品数量")
    String goodsName;

    @ApiModelProperty(value = "添加时价格")
    Long addPrice;

    @ApiModelProperty(value = "是否选中")
    Integer checked;
}
