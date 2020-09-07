package org.king.project.system.user.domain;

import lombok.Getter;
import lombok.Setter;

/**
 * 用户和角色关联 sys_user_role
 *
 * @author King
 */
@Setter
@Getter
public class UserRole {

    /**
     * 用户ID
     */
    private Long userId;

    /**
     * 角色ID
     */
    private Long roleId;

}
