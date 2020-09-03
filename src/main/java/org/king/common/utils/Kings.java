package org.king.common.utils;

import javax.servlet.http.HttpServletRequest;

import org.king.framework.spring.ApplicationUtils;
import org.king.framework.springboot.properties.KingProperties;
import org.king.framework.springboot.properties.Email;
import org.king.framework.springboot.properties.Generator;
import org.king.framework.springboot.properties.Xss;
import org.king.framework.utils.RequestUtils;

import lombok.AccessLevel;
import lombok.NoArgsConstructor;

/**
 * <p>King</p>
 * <p>King项目配置工具类</p>
 *
 * @author Ykyh
 */
@NoArgsConstructor(access = AccessLevel.PRIVATE)
public abstract class Kings {

    /**
     * 根据文件名获取下载地址
     *
     * @param filename 文件名
     * @return
     */
    public static String getDownloadPath(String filename) {
        KingProperties property = getProperties();
        return property.getPath().getFilePath() + property.getPath().getPrefix().getDownload() + filename;
    }

    /**
     * 获取头像上传路径
     *
     * @return
     */
    public static String getAvatarUploadPath() {
        KingProperties property = getProperties();
        return property.getPath().getFilePath() + property.getPath().getPrefix().getAvatar();
    }

    /**
     * 获取头像上传路径
     *
     * @return
     */
    public static String getUploadPath() {
        KingProperties property = getProperties();
        return property.getPath().getFilePath() + property.getPath().getPrefix().getUpload();
    }

    /**
     * 获取头像上传路径
     *
     * @return
     */
    public static String getUploadResourcePath(String filename) {
        KingProperties property = getProperties();
        return property.getPath().getResourcePath() + property.getPath().getPrefix().getUpload() + filename;
    }

    /**
     * 获取头像上传路径
     *
     * @return
     */
    public static String getUploadUrl(HttpServletRequest request, String filename) {
        return RequestUtils.getDomain(request) + getUploadResourcePath(filename);
    }

    /**
     * 获取用户密码最大输入错误次数
     *
     * @return
     */
    public static int getMaxRetryCount() {
        return getProperties().getPassword().getMaxRetryCount();
    }

    /**
     * 获取生成代码相关配置
     *
     * @return
     */
    public static Generator getGenerator() {
        return getProperties().getGenerator();
    }

    /**
     * 获取Xss配置
     *
     * @return
     */
    public static Xss getXss() {
        return getProperties().getXss();
    }

    /**
     * 获取告警Email配置
     *
     * @return
     */
    public static Email getEmail() {
        return getProperties().getEmail();
    }

    /**
     * 获取CrownProperties
     *
     * @return
     */
    public static KingProperties getProperties() {
        return ApplicationUtils.getBean(KingProperties.class);
    }

}
