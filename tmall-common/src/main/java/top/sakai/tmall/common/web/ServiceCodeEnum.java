package top.sakai.tmall.common.web;

import lombok.Getter;

@Getter
public enum ServiceCodeEnum {

    OK(1000,"操作成功"),

    //粒度
    BAD_REQUEST_NAME_EXIST(2000,"名称不能重复");

    private Integer code;
    private String msg;

    ServiceCodeEnum(Integer code,String msg){
        this.code = code;
        this.msg = msg;
    }

}
