package top.sakai.tmall.front.mall.pojo.vo;

import io.swagger.annotations.ApiModelProperty;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

import java.util.List;

@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class OrderListVO {

    /**
     * 订单编号
     */
    @ApiModelProperty("订单编号")
    String orderNo;

    /**
     * 创建时间
     */
    @ApiModelProperty("创建时间")
    Long createTime;

    /**
     * 订单状态
     */
    @ApiModelProperty(value = "状态", example = "1:新创建")
    Long orderStatus;

    @ApiModelProperty("商品列表")
    List<OrderGoodsItemVO> goodsItemVOS;

    /**
     * 用户信息 支付信息
     */
}
