package org.king.project.system.role.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.king.framework.mapper.BaseMapper;
import org.king.project.system.role.domain.RoleMenu;

/**
 * 角色与菜单关联表 数据层
 *
 * @author King
 */
@Mapper
public interface RoleMenuMapper extends BaseMapper<RoleMenu> {

}
