package top.sakai.tmall.admin.content.handler;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import top.sakai.tmall.common.response.JsonResult;
import top.sakai.tmall.common.response.StatusCode;

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

    @ExceptionHandler
    public JsonResult doMethodArgumentNotValidException(MethodArgumentNotValidException exception) {
        String message = exception.getFieldError().getDefaultMessage();
        log.debug("MethodArgumentNotValidException:" + message);
        return new JsonResult(StatusCode.VALIDATION_FAIL, message);
    }

}
