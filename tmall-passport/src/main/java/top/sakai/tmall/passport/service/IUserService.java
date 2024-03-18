package top.sakai.tmall.passport.service;

import top.sakai.tmall.passport.pojo.param.UserLoginInfoParam;
import top.sakai.tmall.passport.pojo.vo.UserLoginResultVO;

public interface IUserService {
    UserLoginResultVO login(UserLoginInfoParam userLoginInfoParam);
}
