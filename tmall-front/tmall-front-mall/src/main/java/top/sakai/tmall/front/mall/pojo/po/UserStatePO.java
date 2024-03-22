package top.sakai.tmall.front.mall.pojo.po;

import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

import java.io.Serializable;

@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class UserStatePO implements Serializable {

    Long userId;
    //权限
    String auth;
    //状态
    Integer enable;

}
