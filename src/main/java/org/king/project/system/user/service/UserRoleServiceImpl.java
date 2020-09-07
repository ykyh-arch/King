package org.king.project.system.user.service;

import org.king.framework.service.impl.BaseServiceImpl;
import org.king.project.system.user.domain.UserRole;
import org.king.project.system.user.mapper.UserRoleMapper;
import org.springframework.stereotype.Service;

/**
 * 用户 业务层处理
 *
 * @author King
 */
@Service
public class UserRoleServiceImpl extends BaseServiceImpl<UserRoleMapper, UserRole> implements IUserRoleService {

}
