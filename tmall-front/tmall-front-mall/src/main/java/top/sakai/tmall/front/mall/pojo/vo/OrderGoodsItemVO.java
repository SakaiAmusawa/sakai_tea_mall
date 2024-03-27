package top.sakai.tmall.front.mall.pojo.vo;

import io.swagger.annotations.ApiModelProperty;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

import java.io.Serializable;

@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class OrderGoodsItemVO implements Serializable {

    @ApiModelProperty("商品ID")
    Long goodsId;

    @ApiModelProperty("商品数量")
    Integer goodsNum;


}
