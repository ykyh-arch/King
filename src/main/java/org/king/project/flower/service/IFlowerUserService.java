package org.king.project.flower.service;

import org.king.framework.service.BaseService;
import org.king.project.flower.domain.FlowerUser;
import org.springframework.web.multipart.MultipartFile;

/**
 * 花科-用户 服务层
 *
 * @author Ykyh
 */
public interface IFlowerUserService extends BaseService<FlowerUser> {

    /**
     * 校验用户名称是否唯一
     *
     * @param loginName 登录名称
     * @return 结果
     */
    boolean checkLoginNameUnique(String loginName);

    FlowerUser selectUserByLoginNameAndPassword(String loginName, String password);

    FlowerUser selectUserByLoginName(String loginName);

    String updateAvatar(MultipartFile file);
}
