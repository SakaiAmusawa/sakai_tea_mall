package top.sakai.tmall.admin.mall.handler;

import lombok.Getter;
import lombok.extern.slf4j.Slf4j;
import top.sakai.tmall.common.response.StatusCode;

@Getter
@Slf4j
public class ServiceException extends RuntimeException {
    private final StatusCode statusCode;

    public ServiceException(StatusCode statusCode) {
        log.debug(statusCode.getMessage());
        this.statusCode = statusCode;
    }
}
