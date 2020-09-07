package org.king.project.system.role.domain;

import lombok.Getter;
import lombok.Setter;

/**
 * 角色和部门关联 sys_role_dept
 *
 * @author King
 */
@Setter
@Getter
public class RoleDept {

    /**
     * 角色ID
     */
    private Long roleId;

    /**
     * 部门ID
     */
    private Long deptId;

}
