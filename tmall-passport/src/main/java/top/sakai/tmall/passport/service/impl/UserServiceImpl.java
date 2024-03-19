package top.sakai.tmall.passport.service.impl;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import top.sakai.tmall.common.utils.JwtUtils;
import top.sakai.tmall.passport.pojo.param.UserLoginInfoParam;
import top.sakai.tmall.passport.pojo.vo.UserLoginResultVO;
import top.sakai.tmall.passport.service.IUserService;

import java.util.HashMap;
import java.util.Map;

@Slf4j
@Service
public class UserServiceImpl implements IUserService {

    private final String secretKey = "fNesMDkqrJFdsfDSwAbFLJ8SnsHJ438AF72D73aKJSmfdsafdLKKAFKDSJ";

    /**
     * 1 验证用户名
     * 2 验证密码
     * 3 判断用户状态(有可能用户别管理员给禁用 拉黑) 可选
     * 4 记录下登录日志 (可选)
     * 4 生成token
     *
     * @param userLoginInfoParam
     * @return
     */
    @Override
    public UserLoginResultVO login(UserLoginInfoParam userLoginInfoParam) {
        //用户名
        String username = userLoginInfoParam.getUsername();
        //1 todo 验证用户名 通过数据库来验证 我们讲过 不带大家演示
        //密码
        String password = userLoginInfoParam.getPassword();
        // 2 todo 验证密码 通过数据库查询 不做 我们讲过 不带大家演示
        //伪造的,应该通过用户名去数据库查询(用户名是唯一的)
        Long userId = 1L; //区分唯一用户唯一标识的id
        // 可选的 记录用户登录日志,登录次数 可选的业务逻辑
        //3 生成token 令牌 工卡
        Map<String, Object> claims = new HashMap<>();
        //id是唯一的,后面的系统,购物车就可以通过id区分是谁,
        claims.put("id", userId);
        claims.put("name", username);
        //这个map可以放什么? 什么都能放,放的多,会导致token变长
        //数据越多,加密越慢,解密也越慢.
        //每次访问别的系统,都需要带着,浪费网络带宽,和存储空间
        String jwt = JwtUtils.generate(claims, secretKey);
        log.debug("生成用户的JWT数据：{}", jwt);
        //定义登录返回数据
        UserLoginResultVO userLoginResultVO = new UserLoginResultVO();
        //设置上面生成好的token
        userLoginResultVO.setToken(jwt);
        userLoginResultVO.setUsername(username);
        userLoginResultVO.setId(userId);
        //返回给客户端
        return userLoginResultVO;
    }
}
