package org.king.project.flower.controller;

import io.swagger.annotations.ApiOperation;
import org.apache.logging.log4j.util.Strings;
import org.apache.shiro.SecurityUtils;
import org.king.common.annotation.Log;
import org.king.common.enums.BusinessType;
import org.king.framework.exception.KingException;
import org.king.framework.web.controller.WebController;
import org.king.project.flower.domain.FlowerComment;
import org.king.project.flower.service.IFlowerCommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.util.Objects;

/**
 * 花科-评论信息操作处理
 *
 * @author Ykyh
 */
@Controller
@RequestMapping("/flower/comment")
public class FlowerCommentController extends WebController<FlowerComment> {

	@Autowired
	private IFlowerCommentService commentService;

	/**
     * 新增保存花科-评论
     */
	@ApiOperation("新增评论")
	@Log(title = "新增评论", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public void addSave(@Validated FlowerComment comment) {
		String obj = (String) SecurityUtils.getSubject().getPrincipal();
		if(Objects.isNull(obj)){
			throw new KingException(HttpServletResponse.SC_UNAUTHORIZED, "用户未登录");
		}
		if(comment.getUserId()==null){
			throw new KingException(HttpServletResponse.SC_BAD_REQUEST, "用户ID必传");
		}
		if(comment.getGardenId()==null){
			throw new KingException(HttpServletResponse.SC_BAD_REQUEST, "gardenId必传");
		}
		if(Strings.isBlank(comment.getContent())){
			throw new KingException(HttpServletResponse.SC_BAD_REQUEST, "内容不能为空");
		}
		commentService.save(comment);
	}

}
