package top.sakai.tmall.front.mall.pojo.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

import java.io.Serializable;

@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
@TableName("mall_receiver_address")
public class UserAddressPO implements Serializable {
    @TableId(type = IdType.AUTO)
    Long id;
    Long userId;
    String province;
    String province_code;
    String city;
    String city_code;
    String area;
    String area_code;
    String detail;
}
