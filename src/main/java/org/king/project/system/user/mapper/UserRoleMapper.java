package org.king.project.system.user.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.king.framework.mapper.BaseMapper;
import org.king.project.system.user.domain.UserRole;

/**
 * 用户表 数据层
 *
 * @author King
 */
@Mapper
public interface UserRoleMapper extends BaseMapper<UserRole> {

}
