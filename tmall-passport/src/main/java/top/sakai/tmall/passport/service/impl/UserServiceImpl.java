package top.sakai.tmall.passport.service.impl;

import top.sakai.tmall.common.utils.JwtUtils;
import top.sakai.tmall.passport.pojo.param.UserLoginInfoParam;
import top.sakai.tmall.passport.pojo.vo.UserLoginResultVO;
import top.sakai.tmall.passport.service.IUserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Slf4j
@Service
public class UserServiceImpl implements IUserService {

    private String secretKey = "fNesMDkqrJFdsfDSwAbFLJ8SnsHJ438AF72D73aKJSmfdsafdLKKAFKDSJ";

    /**
     * 1 验证用户名
     * 2 验证密码
     * 3 生成token
     * @param userLoginInfoParam
     * @return
     */
    @Override
    public UserLoginResultVO login(UserLoginInfoParam userLoginInfoParam) {
        String username = userLoginInfoParam.getUsername();
        String password = userLoginInfoParam.getPassword();
        Long userId = 1L; //从数据库取出来的
        Map<String, Object> claims = new HashMap<>();
        claims.put("id", userId);
        claims.put("name", username);
        String jwt = JwtUtils.generate(claims, secretKey);
        log.debug("生成用户的JWT数据：{}", jwt);
        UserLoginResultVO userLoginResultVO = new UserLoginResultVO();
        userLoginResultVO.setToken(jwt);
        userLoginResultVO.setUsername(username);
        userLoginResultVO.setId(userId);
        return userLoginResultVO;
    }
}
