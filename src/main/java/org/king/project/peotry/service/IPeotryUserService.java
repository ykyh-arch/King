package org.king.project.peotry.service;

import org.king.framework.service.BaseService;
import org.king.project.peotry.domain.PeotryUser;

/**
 * 古诗词-用户信息 服务层
 *
 * @author Ykyh
 */
public interface IPeotryUserService extends BaseService<PeotryUser> {

    /**
     * 校验用户名称是否唯一
     *
     * @param loginName 登录名称
     * @return 结果
     */
    boolean checkLoginNameUnique(String loginName);

    /**
     * 根据用户名查询
     *
     * @param username 用户名
     * @return 结果
     */
    PeotryUser selectUserByLoginName(String username);

}
