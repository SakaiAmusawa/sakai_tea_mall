package top.sakai.tmall.common.exception;

import top.sakai.tmall.common.response.StatusCode;

/**
 * 自定义业务异常处理
 *
 * @author sakai
 */
public class ServiceException extends RuntimeException {

    private final StatusCode statusCode;

    public ServiceException(StatusCode statusCode) {
        this.statusCode = statusCode;
    }

}
