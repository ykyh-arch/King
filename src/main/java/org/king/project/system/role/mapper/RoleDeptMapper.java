package org.king.project.system.role.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.king.framework.mapper.BaseMapper;
import org.king.project.system.role.domain.RoleDept;

/**
 * 角色与部门关联表 数据层
 *
 * @author King
 */
@Mapper
public interface RoleDeptMapper extends BaseMapper<RoleDept> {

}
