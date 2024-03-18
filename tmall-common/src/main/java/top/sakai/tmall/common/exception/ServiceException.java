package top.sakai.tmall.common.exception;

/**
 * 自定义业务异常处理
 *
 * @author sakai
 */
public class ServiceException extends RuntimeException {

    private final Integer serviceCode;

    public ServiceException(Integer serviceCode, String message) {
        super(message);
        this.serviceCode = serviceCode;
    }

}
