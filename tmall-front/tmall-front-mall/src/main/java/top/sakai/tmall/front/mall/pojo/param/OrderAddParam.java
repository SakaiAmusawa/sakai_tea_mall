package top.sakai.tmall.front.mall.pojo.param;

import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

import java.io.Serializable;
import java.util.List;

@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class OrderAddParam implements Serializable {

    /**
     * 商品信息
     */

    /**
     * 商品id 1  2
     */
    //List<Long> goodsIds;

    /**
     * 商品数量 10  11
     */
    //List<Integer> goodsNum;

    /**
     * 商品信息
     */
    List<GoodsItemParam> goodsItemParams;

    /**
     * 购物车商品总价
     * todo 有可能有误差
     * 价格校验
     *
     */
    Long totalPrice;

    /**
     * 用户信息
     */
    UserAddressParam userAddressParam;

    /**
     * 结算页
     *   1 选择收货地址
     *   2 选择支付方式 货到付款,在线支付,银行转账
     *   3 选择配送方式 快递配送 老板走着送
     *   4 发票信息
     *   5 营销信息
     *   如果都是默认 可以没有结算页
     *
     *   用户基于某个服务在平台的协议
     */



}
