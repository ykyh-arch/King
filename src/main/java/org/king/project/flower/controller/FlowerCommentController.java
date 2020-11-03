package org.king.project.flower.controller;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.king.common.annotation.Log;
import org.king.common.enums.BusinessType;
import org.king.common.utils.StringUtils;
import org.king.common.utils.poi.ExcelUtils;
import org.king.framework.model.ExcelDTO;
import org.king.framework.web.controller.WebController;
import org.king.framework.web.page.TableData;
import org.king.project.flower.domain.FlowerComment;
import org.king.project.flower.service.IFlowerCommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baomidou.mybatisplus.core.toolkit.Wrappers;

/**
 * 花科-评论信息操作处理
 *
 * @author Ykyh
 */
@Controller
@RequestMapping("/monitor/comment")
public class FlowerCommentController extends WebController<FlowerComment> {

	private final String prefix = "monitor/comment";

	@Autowired
	private IFlowerCommentService commentService;

	@RequiresPermissions("monitor:comment:view")
	@GetMapping
	public String comment() {
		return prefix + "/comment";
	}

	/**
     * 查询花科-评论列表
     */
	@RequiresPermissions("monitor:comment:list")
	@PostMapping("/list")
	@ResponseBody
	public TableData<FlowerComment> list(FlowerComment comment) {
		startPage();
		List<FlowerComment> list = commentService.list(Wrappers.<FlowerComment>lambdaQuery(comment));
		return getTableData(list);
	}

	/**
     * 导出花科-评论列表
     */
	@RequiresPermissions("monitor:comment:export")
	@PostMapping("/export")
	@ResponseBody
	public ExcelDTO export(FlowerComment comment) {
		List<FlowerComment> list = commentService.list(Wrappers.<FlowerComment>lambdaQuery(comment));
		ExcelUtils<FlowerComment> util = new ExcelUtils<>(FlowerComment.class);
		return new ExcelDTO(util.exportExcel(list, "comment"));
	}

	/**
     * 新增花科-评论
     */
	@GetMapping("/add")
	public String add() {
		return prefix + "/add";
	}

	/**
     * 新增保存花科-评论
     */
	@RequiresPermissions("monitor:comment:add")
	@Log(title = "花科-评论", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public void addSave(@Validated FlowerComment comment) {
		commentService.save(comment);
	}

	/**
     * 修改花科-评论
     */
	@GetMapping("/edit/{commentId}")
	public String edit(@PathVariable("commentId") Long commentId, ModelMap mmap) {
		FlowerComment comment = commentService.getById(commentId);
		mmap.put("comment", comment);
		return prefix + "/edit";
	}

	/**
     * 修改保存花科-评论
     */
	@RequiresPermissions("monitor:comment:edit")
	@Log(title = "花科-评论", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public void editSave(@Validated FlowerComment comment) {
		commentService.updateById(comment);
	}
	
	/**
     * 删除花科-评论
     */
	@RequiresPermissions("monitor:comment:remove")
	@Log(title = "花科-评论", businessType = BusinessType.DELETE)
	@PostMapping("/remove")
	@ResponseBody
	public void remove(String ids) {
		commentService.remove(Wrappers.<FlowerComment>lambdaQuery().in(FlowerComment::getCommentId, StringUtils.split2List(ids)));
	}

}
