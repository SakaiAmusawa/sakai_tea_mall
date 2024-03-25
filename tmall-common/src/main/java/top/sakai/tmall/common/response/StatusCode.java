package top.sakai.tmall.common.response;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.experimental.FieldDefaults;

@Getter
@AllArgsConstructor
@NoArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
public enum StatusCode {
    SUCCESS(1000, "操作成功"), FAIL(5000, "操作失败"), USER_BAN(5001, "用户被禁用"), VALIDATION_FAIL(2000, "数据校验不通过"), GOODS_NOT_EXIST(8000, "商品不存在"), GOODS_NOT_PUT(8001, "商品未上架"), USER_ADDRESS_ERROR(8002, "用户地址不存在");
    Integer code;
    String message;

}
