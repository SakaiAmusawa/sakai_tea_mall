package top.sakai.tmall.admin.content.handler;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import top.sakai.tmall.common.response.JsonResult;

/**
 * 全局异常处理器
 */
@Slf4j
@RestControllerAdvice
public class GlobalExceptionHandler {
    @ExceptionHandler
    public JsonResult doHandleServiceException(ServiceException exception) {
        //1.在后端控制台打印错误日志
        log.error("RuntimeException:" + exception.getStatusCode().getMessage());
        //2.返回错误状态码
        return new JsonResult(exception.getStatusCode());
    }
}
