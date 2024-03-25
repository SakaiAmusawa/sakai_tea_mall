package top.sakai.tmall.front.mall.pojo.param;

import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

import java.io.Serializable;

@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class GoodsItemParam implements Serializable {

    /**
     * 商品id 1  2
     */
    Long goodsId;

    /**
     * 商品数量 10  11
     */
    Integer goodsNum;

    /**
     * 第一版本的购物车 有选中和非选中功能
     * 第二版本 购物车取消这个功能,加入购物车的商品,没有是否选中状态
     * 是否被选中
     * 1 订单是需要去检查这个状态,调用购物车,是否选中 订单服务和购物车服务耦合在一起
     * 2 订单也跟着变 耦合
     * 边界问题
     * 不需要购物车的商品选中状态
     */

    /**
     * 价格
     * 单价还是总价  单价
     * 购物车入参的单价 我们订单能不能直接使用 10*2 == 20
     * todo 购物车给的价格我们能不能用
     * 单价 加入的价格和结算的价格有可能不一样 不能用
     */
    Long price;

}
