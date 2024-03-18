package top.sakai.tmall.admin.content.handler;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import top.sakai.tmall.common.exception.ServiceException;
import top.sakai.tmall.common.response.JsonResult;
import top.sakai.tmall.common.response.StatusCode;

/**
 * 全局异常处理器
 */
@Slf4j
@RestControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler
    public JsonResult handlerServiceException(ServiceException e) {
        String message = e.getMessage();
        log.debug(message);
        return JsonResult.fail(message);
    }

    @ExceptionHandler
    public JsonResult doMethodArgumentNotValidException(MethodArgumentNotValidException exception) {
        String message = exception.getFieldError().getDefaultMessage();
        log.debug("方法参数无效异常:" + message);
        return new JsonResult(StatusCode.VALIDATION_FAIL, message);
    }

}
