package top.sakai.tmall.front.mall.pojo.param;

import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

import java.io.Serializable;

@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class UserAddressParam implements Serializable {

    /**
     * 一个用户会有多个配送地址
     * account 就应该把用户的地址管理起来
     * 用户地址表
     * 配送地址
     */
    Integer addressId;
}
