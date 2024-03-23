package top.sakai.tmall.front.mall.pojo.vo;

import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

import java.io.Serializable;

@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class CartVO implements Serializable {

    /**
     * 商品id
     */
    Long goodsId;

    /**
     * 商品数量
     */
    Integer goodsNum;

    /**
     * 商品名称
     */
    String goodsName;

    /**
     * 添加购物车时的价格
     */
    Long addPrice;

    /**
     * 是否选中
     */
    Integer checked;

}
