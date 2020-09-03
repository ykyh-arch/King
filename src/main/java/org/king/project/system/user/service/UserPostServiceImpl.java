package org.king.project.system.user.service;

import org.king.framework.service.impl.BaseServiceImpl;
import org.king.project.system.user.domain.UserPost;
import org.king.project.system.user.mapper.UserPostMapper;
import org.springframework.stereotype.Service;

/**
 * 用户岗位 业务层处理
 *
 * @author Crown
 */
@Service
public class UserPostServiceImpl extends BaseServiceImpl<UserPostMapper, UserPost> implements IUserPostService {

}
