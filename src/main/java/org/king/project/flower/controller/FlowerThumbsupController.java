package org.king.project.flower.controller;

import io.swagger.annotations.ApiOperation;
import org.apache.shiro.SecurityUtils;
import org.king.common.annotation.Log;
import org.king.common.enums.BusinessType;
import org.king.framework.exception.KingException;
import org.king.framework.web.controller.WebController;
import org.king.project.flower.domain.FlowerThumbsup;
import org.king.project.flower.domain.FlowerUser;
import org.king.project.flower.service.IFlowerThumbsupService;
import org.king.project.flower.service.IFlowerUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.util.Objects;

/**
 * 花科-点赞信息操作处理
 *
 * @author Ykyh
 */
@Controller
@RequestMapping("/flower/thumbsup")
public class FlowerThumbsupController extends WebController<FlowerThumbsup> {

	@Autowired
	private IFlowerThumbsupService thumbsupService;

	@Autowired
	private IFlowerUserService flowerUserService;

	/**
     * 新增保存花科-点赞
     */
	@PostMapping("/addOrDel")
	@ApiOperation("点赞花园")
	@Log(title = "点赞花园", businessType = BusinessType.INSERT)
	@ResponseBody
	public void addOrDel(@Validated FlowerThumbsup thumbsup) {
		String obj = (String) SecurityUtils.getSubject().getPrincipal();
		if(Objects.isNull(obj)){
			throw new KingException(HttpServletResponse.SC_UNAUTHORIZED, "用户未登录");
		}
		if(thumbsup.getGardenId()==null){
			throw new KingException(HttpServletResponse.SC_BAD_REQUEST, "gardenId必传");
		}
		long loginUserId=flowerUserService.query().eq(FlowerUser::getLoginName, obj).getOne().getUserId();
		thumbsup.setUserId(loginUserId);
		thumbsupService.saveOrDel(thumbsup);
	}

}
