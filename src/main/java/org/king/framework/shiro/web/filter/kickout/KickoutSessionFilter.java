package org.king.framework.shiro.web.filter.kickout;

import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayDeque;
import java.util.Deque;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.cache.Cache;
import org.apache.shiro.cache.CacheManager;
import org.apache.shiro.session.Session;
import org.apache.shiro.session.mgt.DefaultSessionKey;
import org.apache.shiro.session.mgt.SessionManager;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.AccessControlFilter;
import org.apache.shiro.web.util.WebUtils;
import org.king.common.cons.ShiroConstants;
import org.king.common.utils.security.ShiroUtils;
import org.king.framework.enums.ErrorCodeEnum;
import org.king.framework.utils.RequestUtils;
import org.king.framework.utils.ResponseUtils;
import org.king.project.system.user.domain.User;

/**
 * 登录帐号控制过滤器
 *
 * @author King
 */
public class KickoutSessionFilter extends AccessControlFilter {

    /**
     * 同一个用户最大会话数
     **/
    private int maxSession = -1;

    /**
     * 踢出之前登录的/之后登录的用户 默认false踢出之前登录的用户
     **/
    private Boolean kickoutAfter = false;

    /**
     * 踢出后到的地址
     **/
    private String kickoutUrl;

    private SessionManager sessionManager;
    private Cache<String, Deque<Serializable>> cache;

    @Override
    protected boolean isAccessAllowed(ServletRequest servletRequest, ServletResponse servletResponse, Object o) {
        return false;
    }

    @Override
    protected boolean onAccessDenied(ServletRequest request, ServletResponse response) throws Exception {
        Subject subject = getSubject(request, response);
        if (!subject.isAuthenticated() && !subject.isRemembered() || maxSession == -1) {
            // 如果没有登录或用户最大会话数为-1，直接进行之后的流程
            return true;
        }
        try {
            Session session = subject.getSession();
            // 当前登录用户
            User user = ShiroUtils.getSysUser();
            String loginName = user.getLoginName();
            Serializable sessionId = session.getId();

            // 读取缓存用户 没有就存入
            Deque<Serializable> deque = cache.get(loginName);
            if (deque == null) {
                // 初始化队列
                deque = new ArrayDeque<>();
            }

            // 如果队列里没有此sessionId，且用户没有被踢出；放入队列
            if (!deque.contains(sessionId) && session.getAttribute("kickout") == null) {
                // 将sessionId存入队列
                deque.push(sessionId);
                // 将用户的sessionId队列缓存
                cache.put(loginName, deque);
            }

            // 如果队列里的sessionId数超出最大会话数，开始踢人
            while (deque.size() > maxSession) {
                Serializable kickoutSessionId;
                // 是否踢出后来登录的，默认是false；即后者登录的用户踢出前者登录的用户；
                if (kickoutAfter) {
                    // 踢出后者
                    kickoutSessionId = deque.removeFirst();
                } else {
                    // 踢出前者
                    kickoutSessionId = deque.removeLast();
                }
                // 踢出后再更新下缓存队列
                cache.put(loginName, deque);

                try {
                    // 获取被踢出的sessionId的session对象
                    Session kickoutSession = sessionManager.getSession(new DefaultSessionKey(kickoutSessionId));
                    if (null != kickoutSession) {
                        // 设置会话的kickout属性表示踢出了
                        kickoutSession.setAttribute("kickout", true);
                    }
                } catch (Exception e) {
                    // 面对异常，我们选择忽略
                }
            }

            // 如果被踢出了，(前者或后者)直接退出，重定向到踢出后的地址
            if (session.getAttribute("kickout") != null && (Boolean) session.getAttribute("kickout")) {
                // 退出登录
                subject.logout();
                saveRequest(request);
                sendLogOutResponse(request, response);
                return false;
            }
            return true;
        } catch (Exception e) {
            sendLogOutResponse(request, response);
            return false;
        }
    }

    /**
     * 发送重新登陆响应
     *
     * @param request
     * @param response
     * @throws IOException
     */
    private void sendLogOutResponse(ServletRequest request, ServletResponse response) throws IOException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        if (RequestUtils.isAjaxRequest(req)) {
            ResponseUtils.sendFail(req, res, ErrorCodeEnum.USER_ELSEWHERE_LOGIN);
        } else {
            WebUtils.issueRedirect(request, response, kickoutUrl);
        }
    }

    public void setMaxSession(int maxSession) {
        this.maxSession = maxSession;
    }

    public void setKickoutAfter(boolean kickoutAfter) {
        this.kickoutAfter = kickoutAfter;
    }

    public void setKickoutUrl(String kickoutUrl) {
        this.kickoutUrl = kickoutUrl;
    }

    public void setSessionManager(SessionManager sessionManager) {
        this.sessionManager = sessionManager;
    }

    // 设置Cache的key的前缀
    public void setCacheManager(CacheManager cacheManager) {
        // 必须和ehcache缓存配置中的缓存name一致
        this.cache = cacheManager.getCache(ShiroConstants.SYS_USERCACHE);
    }
}
