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
    SUCCESS(1000, "操作成功"), FAIL(5000, "操作失败"), USER_BAN(5001, "用户被禁用"), VALIDATION_FAIL(2000, "数据校验不通过");
    Integer code;
    String message;

}
