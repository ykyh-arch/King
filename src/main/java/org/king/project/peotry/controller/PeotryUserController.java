package org.king.project.peotry.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.SimplePrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.ThreadContext;
import org.apache.shiro.web.subject.WebSubject;
import org.apache.shiro.web.subject.WebSubject.Builder;
import org.king.common.annotation.Log;
import org.king.common.cons.ShiroConstants;
import org.king.common.enums.BusinessType;
import org.king.common.utils.DateUtils;
import org.king.common.utils.Kings;
import org.king.common.utils.StringUtils;
import org.king.common.utils.file.FileUploadUtils;
import org.king.common.utils.file.MimeTypes;
import org.king.framework.enums.ErrorCodeEnum;
import org.king.framework.exception.KingException;
import org.king.framework.shiro.service.PasswordService;
import org.king.framework.utils.ApiAssert;
import org.king.framework.web.controller.WebController;
import org.king.project.peotry.domain.PeotryUser;
import org.king.project.peotry.service.IPeotryUserService;
import org.king.project.system.user.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Objects;

/**
 * 古诗词-用户信息信息操作处理
 *
 * @author Ykyh
 */
@Api("古诗词用户管理")
@Slf4j
@Controller
@RequestMapping("/peotry/user")
public class PeotryUserController extends WebController<PeotryUser> {

	@Autowired
	private IPeotryUserService peotryUserService;

	@Autowired
	private PasswordService passwordService;

//	@PostConstruct
//	public void populateMovieCache() {
//		String obj = (String)SecurityUtils.getSubject().getPrincipal();
//		if(Objects.isNull(obj)){
//			throw new KingException(HttpServletResponse.SC_UNAUTHORIZED, "用户名未登录");
//		}
//	}

	/**
     * 新增古诗词-用户信息
     */
	@ApiOperation("注册用户")
	@Log(title = "古诗词-注册用户", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public void addSave(@Validated PeotryUser user) {
		ApiAssert.isTrue(ErrorCodeEnum.USER_ACCOUNT_EXIST.overrideMsg(String.format("账号%s已存在", user.getLoginName().trim())), peotryUserService.checkLoginNameUnique(user.getLoginName().trim()));
		user.randomSalt();
		user.setCreateTime(DateUtils.getNowDate());
		user.setPassword(passwordService.encryptPassword(user.getLoginName(), user.getPassword(), user.getSalt()));

		peotryUserService.save(user);
	}

	/**
     * 修改古诗词-用户信息
     */
	@ApiOperation("修改用户")
	@Log(title = "古诗词-修改用户", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public void editSave(@Validated PeotryUser user) {
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
		peotryUserService.updateById(user);
	}

	/**
	 * 查询古诗词-获取用户详细
	 */
	@ApiOperation("获取用户详细")
	@ApiImplicitParam(name = "userId", value = "用户ID", required = true, dataType = "long", paramType = "path")
	@GetMapping("/{userId}")
	@ResponseBody
	public PeotryUser getUser(@PathVariable Integer userId) {
		String obj = (String)SecurityUtils.getSubject().getPrincipal();
		if(Objects.isNull(obj)){
			throw new KingException(HttpServletResponse.SC_UNAUTHORIZED, "用户名未登录");
		}
		if(userId==null){
			throw new KingException(HttpServletResponse.SC_BAD_REQUEST, "用户主键ID必传");
		}
		return peotryUserService.getById(userId);
	}

	/**
	 * 更新头像
	 */
	@ApiOperation("更新头像")
	@Log(title = "更新头像", businessType = BusinessType.UPDATE)
	@PostMapping("/updateAvatar")
	@ResponseBody
	public String updateAvatar(@RequestParam("avatarfile") MultipartFile file) {
		String obj = (String)SecurityUtils.getSubject().getPrincipal();
		if(Objects.isNull(obj)){
			throw new KingException(HttpServletResponse.SC_UNAUTHORIZED, "用户名未登录");
		}
		PeotryUser currentUser = peotryUserService.selectUserByLoginName(obj);
		ApiAssert.isFalse(ErrorCodeEnum.USER_AVATAR_NOT_EMPTY, file.isEmpty());
		String avatar = null;
		try {
			log.info("上传图像文件路径I："+Kings.getAvatarUploadPath());
			avatar = FileUploadUtils.upload(Kings.getAvatarUploadPath(), file, MimeTypes.IMAGE_EXTENSION);
			log.info("上传图像文件路径II："+Kings.getUploadAvatarPath(avatar));
		} catch (IOException e) {
			ApiAssert.failure(ErrorCodeEnum.USER_AVATAR_UPLOAD_FAIL);
		}
		currentUser.setAvatar(Kings.getUploadAvatarPath(avatar));
		peotryUserService.updateById(currentUser);
		return Kings.getUploadAvatarPath(avatar);
	}

	/**
	 * 登录古诗词-用户信息
	 * @return
	 */
	@ApiOperation("登录")
	@PostMapping("/login")
	@ResponseBody
	public PeotryUser login(String loginName, String password) {
		if (StringUtils.isEmpty(loginName)
				|| StringUtils.isEmpty(password)) {
			throw new KingException(HttpServletResponse.SC_BAD_REQUEST, "用户名或密码不能为空");
		}
		// 查询用户信息
		PeotryUser user = peotryUserService.selectUserByLoginName(loginName.trim());
		if (user == null || !user.getPassword().equals(encryptPassword(loginName.trim(), password.trim(), user.getSalt()))) {
			throw new KingException(HttpServletResponse.SC_BAD_REQUEST, "用户名或密码错误");
		}
//		UsernamePasswordToken token = new UsernamePasswordToken(username, password, true);
//		Subject subject = SecurityUtils.getSubject();
//		subject.login(token);

		PrincipalCollection principals = new SimplePrincipalCollection(user.getLoginName(), "MobileRealm");
		Builder builder = new WebSubject.Builder(request,response);
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
	 * 退出古诗词-用户信息
	 * @return
	 */
	@ApiOperation("退出")
	@GetMapping("/logout")
	@ResponseBody
	public void fakeLogou(){
		Subject subject = SecurityUtils.getSubject();
		if (subject != null && subject.isAuthenticated()) {
			subject.logout();
		}else{
			throw new KingException(HttpServletResponse.SC_BAD_REQUEST, "退出失败");
		}
	}

}
