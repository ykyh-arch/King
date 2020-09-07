package org.king.project.monitor.online.service;

import java.util.Date;
import java.util.List;

import org.apache.shiro.session.Session;
import org.king.common.utils.DateUtils;
import org.king.framework.service.impl.BaseServiceImpl;
import org.king.framework.shiro.session.OnlineSessionDAO;
import org.king.project.monitor.online.domain.UserOnline;
import org.king.project.monitor.online.mapper.UserOnlineMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 在线用户 服务层处理
 *
 * @author King
 */
@Service
public class UserOnlineServiceImpl extends BaseServiceImpl<UserOnlineMapper, UserOnline> implements IUserOnlineService {

    @Autowired
    private OnlineSessionDAO onlineSessionDAO;

    @Override
    public UserOnline selectOnlineById(String sessionId) {
        return baseMapper.selectOnlineById(sessionId);
    }

    @Override
    public List<UserOnline> selectUserOnlineList(UserOnline userOnline) {
        return baseMapper.selectUserOnlineList(userOnline);
    }

    @Override
    public void forceLogout(String sessionId) {
        Session session = onlineSessionDAO.readSession(sessionId);
        if (session == null) {
            return;
        }
        session.setTimeout(1000);
        removeById(sessionId);
    }

    @Override
    public List<UserOnline> selectOnlineByExpired(Date expiredDate) {
        String lastAccessTime = DateUtils.parseDateToStr(DateUtils.YYYY_MM_DD_HH_MM_SS, expiredDate);
        return baseMapper.selectOnlineByExpired(lastAccessTime);
    }
}
