package org.king.project.peotry.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.SimplePrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.ThreadContext;
import org.apache.shiro.web.subject.WebSubject.Builder;
import org.apache.shiro.web.subject.WebSubject;
import org.king.common.annotation.Log;
import org.king.common.cons.ShiroConstants;
import org.king.common.enums.BusinessType;
import org.king.common.utils.DateUtils;
import org.king.common.utils.StringUtils;
import org.king.common.utils.security.ShiroUtils;
import org.king.framework.enums.ErrorCodeEnum;
import org.king.framework.exception.KingException;
import org.king.framework.shiro.service.PasswordService;
import org.king.framework.utils.ApiAssert;
import org.king.framework.web.controller.WebController;
import org.king.project.peotry.domain.PeotryUser;
import org.king.project.peotry.service.IPeotryUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baomidou.mybatisplus.core.toolkit.Wrappers;

import javax.servlet.http.HttpServletResponse;

/**
 * 古诗词-用户信息信息操作处理
 *
 * @author Ykyh
 */
@Api("古诗词用户管理")
@Controller
@RequestMapping("/peotry/user")
public class PeotryUserController extends WebController<PeotryUser> {

	@Autowired
	private IPeotryUserService peotryUserService;

	@Autowired
	private PasswordService passwordService;

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
		if(!StringUtils.equals(user.getLoginName(),ShiroUtils.getLoginName()) && user.getLoginName() !=null){
			throw new KingException(HttpServletResponse.SC_BAD_REQUEST, String.format("用户名%s不允许修改", user.getLoginName()));
		}
		peotryUserService.updateById(user);
	}

	/**
	 * 登录古诗词-用户信息
	 * @return
	 */
	@ApiOperation("登录")
	@PostMapping("/login")
	@ResponseBody
	public PeotryUser login(String username, String password) {
		if (StringUtils.isEmpty(username)
				|| StringUtils.isEmpty(password)) {
			throw new KingException(HttpServletResponse.SC_BAD_REQUEST, "用户名或密码不能为空");
		}
		// 查询用户信息
		PeotryUser user = peotryUserService.selectUserByLoginName(username.trim());
		if (user == null || !user.getPassword().equals(encryptPassword(username.trim(), password.trim(), user.getSalt()))) {
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
