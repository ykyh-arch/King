package org.king.project.peotry.service.impl;

import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import org.king.framework.service.impl.BaseServiceImpl;
import org.king.project.peotry.service.IPeotryUserService;
import org.king.project.peotry.domain.PeotryUser;
import org.king.project.peotry.mapper.PeotryUserMapper;
import org.king.project.system.role.domain.Role;
import org.king.project.system.user.domain.User;
import org.springframework.stereotype.Service;

/**
 * 古诗词-用户信息 服务层实现
 *
 * @author Ykyh
 */
@Service
public class PeotryUserServiceImpl extends BaseServiceImpl<PeotryUserMapper, PeotryUser> implements IPeotryUserService {

    @Override
    public boolean checkLoginNameUnique(String loginName) {
        return query().eq(PeotryUser::getLoginName, loginName).nonExist();
    }

    @Override
    public PeotryUser selectUserByLoginName(String username) {

        return baseMapper.selectUserByLoginName(username);
    }

}
