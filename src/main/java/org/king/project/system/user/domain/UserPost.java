package org.king.project.system.user.domain;

import lombok.Getter;
import lombok.Setter;

/**
 * 用户和岗位关联 sys_user_post
 *
 * @author King
 */
@Setter
@Getter
public class UserPost {

    /**
     * 用户ID
     */
    private Long userId;
    /**
     * 岗位ID
     */
    private Long postId;

}
