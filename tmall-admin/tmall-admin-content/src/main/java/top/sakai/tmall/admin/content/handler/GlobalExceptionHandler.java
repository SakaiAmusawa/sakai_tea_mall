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
        return new JsonResult();
    }

    @ExceptionHandler
    public JsonResult doMethodArgumentNotValidException(MethodArgumentNotValidException exception) {
        String message = exception.getFieldError().getDefaultMessage();
        log.debug("方法参数无效异常:" + message);
        return new JsonResult(StatusCode.VALIDATION_FAIL, message);
    }

    /**
     * 兜底 给用户一个良好的体验（大雾）
     *
     * @param throwable
     * @return
     */
    @ExceptionHandler
    public JsonResult handleGlobalExceptionHandler(Throwable throwable) {
        log.debug("出现异常", throwable);
        return new JsonResult(StatusCode.FAIL);
    }

}
