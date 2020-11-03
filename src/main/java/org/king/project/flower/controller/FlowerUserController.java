package org.king.project.flower.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.SimplePrincipalCollection;
import org.apache.shiro.util.ThreadContext;
import org.apache.shiro.web.subject.WebSubject;
import org.king.common.annotation.Log;
import org.king.common.cons.ShiroConstants;
import org.king.common.enums.BusinessType;
import org.king.common.utils.DateUtils;
import org.king.common.utils.Kings;
import org.king.common.utils.StringUtils;
import org.king.framework.enums.ErrorCodeEnum;
import org.king.framework.exception.KingException;
import org.king.framework.shiro.service.PasswordService;
import org.king.framework.utils.ApiAssert;
import org.king.framework.web.controller.WebController;
import org.king.project.flower.domain.FlowerUser;
import org.king.project.flower.service.IFlowerUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.util.Objects;

/**
 * 花科-用户信息操作处理
 *
 * @author Ykyh
 */
@Api("花科用户管理")
@Controller
@RequestMapping("/flower/user")
public class FlowerUserController extends WebController<FlowerUser> {

	@Autowired
	private IFlowerUserService flowerUserService;

	@Autowired
	private PasswordService passwordService;

	/**
	 * 新增用户
	 */
	@ApiOperation("注册用户")
	@Log(title = "新增用户", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public void addSave(@Validated FlowerUser user) {
		ApiAssert.isTrue(ErrorCodeEnum.USER_ACCOUNT_EXIST.overrideMsg(String.format("账号%s已存在", user.getLoginName().trim())), flowerUserService.checkLoginNameUnique(user.getLoginName().trim()));
		user.randomSalt();
		user.setCreateTime(DateUtils.getNowDate());
		user.setPassword(passwordService.encryptPassword(user.getLoginName(), user.getPassword(), user.getSalt()));

		flowerUserService.save(user);
	}

	/**
	 * 登录用户
	 * @return
	 */
	@ApiOperation("登录用户")
	@PostMapping("/login")
	@ResponseBody
	public FlowerUser login(String loginName, String password) {
		FlowerUser user = flowerUserService.selectUserByLoginNameAndPassword(loginName,password);
		PrincipalCollection principals = new SimplePrincipalCollection(user.getLoginName(), "MobileRealm");
		WebSubject.Builder builder = new WebSubject.Builder(request,response);
		builder.principals(principals);
		builder.authenticated(true);
		builder.sessionId(request.getSession().getId());
		WebSubject subject = builder.buildWebSubject();
		ThreadContext.bind(subject);
		request.getSession().setAttribute(ShiroConstants.CURRENT_USERNAME, user.getLoginName());
		user.setPassword(null);
		return user;
	}

	public String encryptPassword(String username, String password, String salt) {
		return new Md5Hash(username + password + salt).toHex();
	}

	/**
	 * 更新头像
	 */
	@ApiOperation("更新头像")
	@Log(title = "更新头像", businessType = BusinessType.UPDATE)
	@PostMapping("/updateAvatar")
	@ResponseBody
	public String updateAvatar(@RequestParam("avatarfile") MultipartFile file) {
		String avatar = flowerUserService.updateAvatar(file);
		return Kings.getUploadAvatarPath(avatar);
	}

	/**
	 * 修改用户
	 */
	@ApiOperation("修改用户")
	@Log(title = "修改用户", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public void editSave(@Validated FlowerUser user) {
		String obj = (String)SecurityUtils.getSubject().getPrincipal();
		if(Objects.isNull(obj)){
			throw new KingException(HttpServletResponse.SC_UNAUTHORIZED, "用户名未登录");
		}
		if(user.getUserId()==null){
			throw new KingException(HttpServletResponse.SC_BAD_REQUEST, "用户主键ID必传");
		}
		if(user.getLoginName() !=null && !StringUtils.equals(user.getLoginName(),obj)){
			throw new KingException(HttpServletResponse.SC_BAD_REQUEST, String.format("用户账户%s不允许修改", user.getLoginName()));
		}
		flowerUserService.updateById(user);
	}

	/**
	 * 用户详细
	 */
	@ApiOperation("获取详细")
	@ApiImplicitParam(name = "userId", value = "用户ID", required = true, dataType = "long", paramType = "path")
	@GetMapping("/{userId}")
	@ResponseBody
	public FlowerUser getUser(@PathVariable Long userId) {
		String obj = (String)SecurityUtils.getSubject().getPrincipal();
		if(Objects.isNull(obj)){
			throw new KingException(HttpServletResponse.SC_UNAUTHORIZED, "用户名未登录");
		}
		if(userId==null){
			throw new KingException(HttpServletResponse.SC_BAD_REQUEST, "用户主键ID必传");
		}
		return flowerUserService.getById(userId);
	}

}
