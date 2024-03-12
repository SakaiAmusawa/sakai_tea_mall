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
    SUCCESS(1000, "操作成功"),
    FAIL(5000, "操作失败");

    Integer code;
    String message;

}
