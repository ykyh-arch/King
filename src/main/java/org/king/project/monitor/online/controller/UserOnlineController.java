package org.king.project.monitor.online.controller;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.king.common.annotation.Log;
import org.king.common.enums.BusinessType;
import org.king.common.enums.OnlineStatus;
import org.king.common.utils.security.ShiroUtils;
import org.king.framework.enums.ErrorCodeEnum;
import org.king.framework.shiro.session.OnlineSessionDAO;
import org.king.framework.utils.ApiAssert;
import org.king.framework.web.controller.WebController;
import org.king.framework.web.page.TableData;
import org.king.project.monitor.online.domain.OnlineSession;
import org.king.project.monitor.online.domain.UserOnline;
import org.king.project.monitor.online.service.IUserOnlineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 在线用户监控
 *
 * @author Crown
 */
@Controller
@RequestMapping("/monitor/online")
public class UserOnlineController extends WebController<UserOnline> {

    private final String prefix = "monitor/online";

    @Autowired
    private IUserOnlineService userOnlineService;

    @Autowired
    private OnlineSessionDAO onlineSessionDAO;

    @RequiresPermissions("monitor:online:view")
    @GetMapping
    public String online() {
        return prefix + "/online";
    }

    @RequiresPermissions("monitor:online:list")
    @PostMapping("/list")
    @ResponseBody
    public TableData<UserOnline> list(UserOnline userOnline) {
        startPage();
        List<UserOnline> list = userOnlineService.selectUserOnlineList(userOnline);
        return getTableData(list);
    }

    @RequiresPermissions("monitor:online:batchForceLogout")
    @Log(title = "在线用户", businessType = BusinessType.FORCE)
    @PostMapping("/batchForceLogout")
    @ResponseBody
    public void batchForceLogout(@RequestParam("ids[]") String[] ids) {
        for (String sessionId : ids) {
            logoutSessionId(sessionId);
        }
    }

    private void logoutSessionId(String sessionId) {
        UserOnline online = userOnlineService.selectOnlineById(sessionId);
        ApiAssert.notNull(ErrorCodeEnum.USER_NOT_ONLINE, online);
        OnlineSession onlineSession = (OnlineSession) onlineSessionDAO.readSession(online.getSessionId());
        ApiAssert.notNull(ErrorCodeEnum.USER_NOT_ONLINE, onlineSession);
        ApiAssert.isFalse(ErrorCodeEnum.USER_CANNOT_RETREAT_CURRENT_ACCOUNT, sessionId.equals(ShiroUtils.getSessionId()));
        onlineSession.setStatus(OnlineStatus.off_line);
        onlineSessionDAO.update(onlineSession);
        online.setStatus(OnlineStatus.off_line);
        userOnlineService.updateById(online);
    }

    @RequiresPermissions("monitor:online:forceLogout")
    @Log(title = "在线用户", businessType = BusinessType.FORCE)
    @PostMapping("/forceLogout")
    @ResponseBody
    public void forceLogout(String sessionId) {
        logoutSessionId(sessionId);
    }

}
