package top.sakai.tmall.passport.controller;

import top.sakai.tmall.common.web.JsonResult;
import top.sakai.tmall.passport.pojo.param.UserLoginInfoParam;
import top.sakai.tmall.passport.pojo.vo.UserLoginResultVO;
import top.sakai.tmall.passport.service.IUserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import springfox.documentation.annotations.ApiIgnore;

import javax.servlet.http.HttpServletRequest;

@Slf4j
@RestController
@RequestMapping("/passport")
@Validated
@Api(tags = "用户服务")
public class UserController {

    @Autowired
    private IUserService userService;

    @PostMapping("/login")
    @ApiOperation("用户登录")
    public JsonResult login(@Validated UserLoginInfoParam userLoginInfoParam,
                            @ApiIgnore HttpServletRequest request) {
        UserLoginResultVO vo = userService.login(userLoginInfoParam);
        return JsonResult.ok(vo);
    }

}
