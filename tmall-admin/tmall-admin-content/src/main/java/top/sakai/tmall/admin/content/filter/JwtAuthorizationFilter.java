package top.sakai.tmall.admin.content.filter;

import com.alibaba.fastjson.JSON;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.MalformedJwtException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;
import top.sakai.tmall.admin.content.dao.repository.IUserCacheRepository;
import top.sakai.tmall.common.pojo.CurrentUser;
import top.sakai.tmall.common.pojo.po.UserStatePO;
import top.sakai.tmall.common.utils.JwtUtils;
import top.sakai.tmall.common.web.JsonResult;
import top.sakai.tmall.common.web.ServiceCodeEnum;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Slf4j
@Component
public class JwtAuthorizationFilter extends OncePerRequestFilter {

    private final String HEADER_AUTHORIZATION = "Authorization";

    private final String secretKey = "fNesMDkqrJFdsfDSwAbFLJ8SnsHJ438AF72D73aKJSmfdsafdLKKAFKDSJ";

    @Autowired
    private IUserCacheRepository userCacheRepository;


    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
        //管理员登录后,带着token来访问内容管理服务
        //内容管理服务 需要做两件事情
        //1 你是否登录,2 你是否有权限
        log.debug("进入用户验证过滤器,门口的闸机");
        String requestURI = request.getRequestURI();
        // 尝试接收客户端的请求中携带的JWT数据
        String jwt = request.getHeader(HEADER_AUTHORIZATION);
        log.debug("客户端携带的JWT：{}", jwt);
        //如果没有携带token 证明你还没登录,跳转到登录页面
        //if token == null 返回 ServiceException 业务码 code = 401 message = "未登录"
        // 前端页面 拿到业务码 if code == 401 跳转到登录页面
        response.setContentType("application/json;charset=UTF-8");
        if (jwt == null) {
            filterChain.doFilter(request, response);
            return;
        }
        Claims claims;
        try {
            claims = JwtUtils.parse(jwt, secretKey);
        } catch (MalformedJwtException e) {
            log.warn("解析JWT时出现异常：MalformedJwtException");
            String message = "非法访问，你的本次操作已经被记录！";
            JsonResult jsonResult = JsonResult.fail(ServiceCodeEnum.ERR_JWT_MALFORMED, message);
            PrintWriter writer = response.getWriter();
            writer.println(JSON.toJSONString(jsonResult));
            writer.close();
            return;
        }
        //解密成功表示 token是合法的,用户也是登录了
        log.debug("token解密后用户信息:{}", claims);
        //判断当前这个用户是否有权限执行这个操作 //增加文章
        // log.debug("开始检查JWT是否存在盗用的问题……");
        //可以通过ip地址和浏览器信息来判断你登录时候的和现在访问的是不是匹配
        log.debug("开始检查缓存中用户的状态……");
        //判断用户状态是否启用 如果禁用 返回 状态

        //续期 todo
        // name root id 1  权限列表 [增加文章,增加商品]
        //把token解析出来的那个map,从map里获取用户信息,封装成一个对象 CurrentUser
        CurrentUser currentUser = new CurrentUser(); // 当前用户
        currentUser.setId(claims.get("id", Long.class));
        currentUser.setUsername(claims.get("name", String.class));

        //我们用Security 帮忙我们做权限验证
        //权限列表 [增加文章,增加商品]
        //todo 从数据库表中获取当前用户权限列表
        String authoritiesJsonString = "";
        Integer userState = 0;
        UserStatePO userStatePO = userCacheRepository.getUserState(currentUser.getId());
        if (userStatePO != null) {
            authoritiesJsonString = userStatePO.getAuth();
            userState = userStatePO.getEnable();
        }
        //管理员把用户状态设置为禁用，同时更新redis中的用户状态
        if (userState != 0) {
            String message = "用户已被禁用,如有问题请联系客服";
            JsonResult jsonResult = JsonResult.fail(ServiceCodeEnum.USER_STATE_DISABLE, message);
            PrintWriter writer = response.getWriter();
            writer.println(JSON.toJSONString(jsonResult));
            writer.close();
            return;
        }

        //把用户的权限列表 权限列表 [增加文章,增加商品] 转成 security 的 List<SimpleGrantedAuthority>
        List<SimpleGrantedAuthority> authorities = JSON.parseArray(authoritiesJsonString, SimpleGrantedAuthority.class);
        //构建 security Authentication对象 入参 1 当前用户, 2 不用管 3 权限列表
        Authentication authentication = new UsernamePasswordAuthenticationToken(currentUser, null, authorities);

        // 将security Authentication对象存入到SecurityContext中 上下文
        SecurityContext context = SecurityContextHolder.getContext();
        context.setAuthentication(authentication);

        //可以理解为放到安全框架map里
        /**
         *  Security
         *  map put
         *      1,[增加商品,增长文章]
         *      2,[文章列表]
         *
         *   map.get(1) ==  [增加商品,增长文章]
         *   [增加商品,增长文章] 是否包含 增加商品 是 放行 不是 没权限
         */
        // 过滤器链继续执行，即：放行
        log.debug("验证JWT完毕，已经向SecurityContext中存入认证信息，过滤器将放行");
        filterChain.doFilter(request, response);
    }
}
