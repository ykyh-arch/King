package org.king.project.flower.service.impl;

import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.king.common.utils.Kings;
import org.king.common.utils.StringUtils;
import org.king.common.utils.file.FileUploadUtils;
import org.king.common.utils.file.MimeTypes;
import org.king.framework.enums.ErrorCodeEnum;
import org.king.framework.exception.KingException;
import org.king.framework.service.impl.BaseServiceImpl;
import org.king.framework.utils.ApiAssert;
import org.king.project.flower.domain.FlowerUser;
import org.king.project.flower.mapper.FlowerUserMapper;
import org.king.project.flower.service.IFlowerUserService;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Objects;

/**
 * 花科-用户 服务层实现
 *
 * @author Ykyh
 */
@Service
@Slf4j
public class FlowerUserServiceImpl extends BaseServiceImpl<FlowerUserMapper, FlowerUser> implements IFlowerUserService {

    @Override
    public boolean checkLoginNameUnique(String loginName) {
        return query().eq(FlowerUser::getLoginName, loginName).nonExist();
    }

    @Override
    public FlowerUser selectUserByLoginNameAndPassword(String loginName, String password) {
        if (StringUtils.isEmpty(loginName)
                || StringUtils.isEmpty(password)) {
            throw new KingException(HttpServletResponse.SC_BAD_REQUEST, "用户名或密码不能为空");
        }
        // 查询用户信息
        FlowerUser user = baseMapper.selectUserByLoginName(loginName.trim());
        if (user == null || !user.getPassword().equals(encryptPassword(loginName.trim(), password.trim(), user.getSalt()))) {
            throw new KingException(HttpServletResponse.SC_BAD_REQUEST, "用户名或密码错误");
        }

        return user;
    }

    @Override
    public FlowerUser selectUserByLoginName(String loginName) {

        return baseMapper.selectUserByLoginName(loginName.trim());
    }

    @Override
    public String updateAvatar(MultipartFile file) {
        String obj = (String) SecurityUtils.getSubject().getPrincipal();
        if(Objects.isNull(obj)){
            throw new KingException(HttpServletResponse.SC_UNAUTHORIZED, "用户名未登录");
        }
        FlowerUser currentUser = this.selectUserByLoginName(obj);
        ApiAssert.isFalse(ErrorCodeEnum.USER_AVATAR_NOT_EMPTY, file.isEmpty());
        String avatar = null;
        try {
            log.info("上传图像文件路径I："+ Kings.getAvatarUploadPath());
            avatar = FileUploadUtils.upload(Kings.getAvatarUploadPath(), file, MimeTypes.IMAGE_EXTENSION);
            log.info("上传图像文件路径II："+Kings.getUploadAvatarPath(avatar));
        } catch (IOException e) {
            ApiAssert.failure(ErrorCodeEnum.USER_AVATAR_UPLOAD_FAIL);
        }
        currentUser.setAvatar(Kings.getUploadAvatarPath(avatar));
        baseMapper.updateById(currentUser);
        return avatar;
    }

    public String encryptPassword(String username, String password, String salt) {
        return new Md5Hash(username + password + salt).toHex();
    }
}
