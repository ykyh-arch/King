package org.king.project.flower.controller;

import io.swagger.annotations.ApiOperation;
import org.apache.shiro.SecurityUtils;
import org.king.common.annotation.Log;
import org.king.common.enums.BusinessType;
import org.king.framework.exception.KingException;
import org.king.framework.web.controller.WebController;
import org.king.project.flower.domain.FlowerScreen;
import org.king.project.flower.domain.FlowerUser;
import org.king.project.flower.service.IFlowerScreenService;
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
 * 花科-屏蔽信息操作处理
 *
 * @author Ykyh
 */
@Controller
@RequestMapping("/flower/screen")
public class FlowerScreenController extends WebController<FlowerScreen> {

	@Autowired
	private IFlowerUserService flowerUserService;

	@Autowired
	private IFlowerScreenService screenService;


	/**
	 * 新增屏蔽-屏蔽花园&屏蔽评论
	 */
	@ApiOperation("新增屏蔽")
	@Log(title = "新增屏蔽", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public void addSave(@Validated FlowerScreen flowerScreen) {
		String obj = (String) SecurityUtils.getSubject().getPrincipal();
		if(Objects.isNull(obj)){
			throw new KingException(HttpServletResponse.SC_UNAUTHORIZED, "用户未登录");
		}
		long loginUserId=flowerUserService.query().eq(FlowerUser::getLoginName, obj).getOne().getUserId();
		flowerScreen.setUserId(loginUserId);
		if(flowerScreen.getRelationId()==null){
			throw new KingException(HttpServletResponse.SC_BAD_REQUEST, "参数relationId必传");
		}
		if(flowerScreen.getType()==null){
			throw new KingException(HttpServletResponse.SC_BAD_REQUEST, "参数type必传");
		}
		FlowerScreen temp = screenService.query().eq(FlowerScreen::getUserId, flowerScreen.getUserId())
				.eq(FlowerScreen::getRelationId, flowerScreen.getRelationId())
				.eq(FlowerScreen::getType,flowerScreen.getType()).getOne();
		if(temp==null){
			screenService.save(flowerScreen);
		}
	}

}
