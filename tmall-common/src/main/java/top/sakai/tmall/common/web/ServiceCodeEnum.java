package top.sakai.tmall.common.web;

import lombok.Getter;

@Getter
public enum ServiceCodeEnum {

    OK(1000,"操作成功"),

    //粒度
    BAD_REQUEST_NAME_EXIST(2000,"名称不能重复"),

    ERROR_UNAUTHORIZED(4001,"验证为通过"),
    /**
     * 错误：JWT格式错误
     */
    ERR_JWT_MALFORMED(6020,"jwt格式错误");

    private Integer code;
    private String msg;

    ServiceCodeEnum(Integer code,String msg){
        this.code = code;
        this.msg = msg;
    }

}
