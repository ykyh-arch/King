package org.king.project.peotry.domain;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.Date;

/**
 * 古诗词-用户信息表 peotry_user
 *
 * @author Ykyh
 */
@Setter
@Getter
@ApiModel("古诗词-用户实体")
public class PeotryUser implements Serializable {

	private static final long serialVersionUID = 1L;

	/**
	 * 用户ID
	 */
	@ApiModelProperty(value = "用户ID",hidden = true)
	private Long userId;
	/**
	 * 登录账号
	 */
	@ApiModelProperty(value="账号",required=true)
	@NotBlank(message = "登录账号不能为空")
	@Size(max = 30, message = "账号长度不能超过30个字符")
	private String loginName;
	/**
	 * 用户昵称
	 */
	@ApiModelProperty(value="昵称",required=true)
	@Size(max = 30, message = "用户昵称长度不能超过30个字符")
	private String userName;
	/**
	 * 用户性别（0男 1女 2未知）
	 */
	@ApiModelProperty("性别（0男 1女 2未知）")
	private String sex;
	/**
	 * 头像路径
	 */
	@ApiModelProperty("头像")
	private String avatar;
	/**
	 * 密码
	 */
	@ApiModelProperty(value="密码",required=true)
	@Size(min = 6, message = "密码长度不能低于6个字符")
	private String password;
	/**
	 * 盐加密
	 */
	@ApiModelProperty(hidden=true,value="盐加密")
	private String salt;
	/**
	 * 个性签名
	 */
	@ApiModelProperty("签名")
	private String signature;

	/**
	 * 创建时间
	 */
	@ApiModelProperty(hidden=true,value="创建时间")
	private Date createTime;

	/**
	 * 生成随机盐
	 */
	public void randomSalt() {
		// 一个Byte占两个字节，此处生成的3字节，字符串长度为6
		SecureRandomNumberGenerator secureRandom = new SecureRandomNumberGenerator();
		String hex = secureRandom.nextBytes(3).toHex();
		setSalt(hex);
	}

}
