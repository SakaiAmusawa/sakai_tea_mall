package top.sakai.tmall.common.web;


import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

import java.io.Serializable;

/**
 * 统一响应结果
 */
@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class JsonResult implements Serializable {

    /**
     * 状态码
     */
    Integer code;

    /**
     * 提示信息
     */
    String msg;

    /**
     * 数据
     */
    Object data;

    /**
     * 正常返回结果
     * @return
     */
    public static JsonResult ok(){
        JsonResult jsonResult = new JsonResult();
        jsonResult.setCode(1000);
        jsonResult.setMsg("ok");
        return jsonResult;
    }

    /**
     * 正常返回结果
     * @return
     */
    public static JsonResult ok(Object data){
        JsonResult jsonResult = new JsonResult();
        jsonResult.setCode(1000);
        jsonResult.setMsg("ok");
        jsonResult.setData(data);
        return jsonResult;
    }



    /**
     * 异常返回结果
     * @return
     */
    public static JsonResult fail(String message){
        JsonResult jsonResult = new JsonResult();
        jsonResult.setCode(2000);
        jsonResult.setMsg(message);
        return jsonResult;
    }


}
