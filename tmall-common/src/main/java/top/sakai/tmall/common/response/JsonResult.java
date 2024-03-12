package top.sakai.tmall.common.response;

import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

import java.io.Serializable;

@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class JsonResult implements Serializable {

    Integer code;
    String message;
    Object data;

    public JsonResult(StatusCode statusCode, Object data) {
        this.code = statusCode.getCode();
        this.message = statusCode.getMessage();
        this.data = data;
    }

    public JsonResult(StatusCode statusCode) {
        this.code = statusCode.getCode();
        this.message = statusCode.getMessage();
    }

    public static JsonResult ok(Object data) {
        return new JsonResult(StatusCode.SUCCESS, data);
    }

    public static JsonResult ok() {
        return new JsonResult(StatusCode.SUCCESS);
    }

    public static JsonResult fail() {
        return new JsonResult(StatusCode.FAIL);
    }

}
