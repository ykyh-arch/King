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
import org.king.project.flower.domain.FlowerThumbsup;
import org.king.project.flower.service.IFlowerThumbsupService;
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
 * 花科-点赞信息操作处理
 *
 * @author Ykyh
 */
@Controller
@RequestMapping("/monitor/thumbsup")
public class FlowerThumbsupController extends WebController<FlowerThumbsup> {

	private final String prefix = "monitor/thumbsup";

	@Autowired
	private IFlowerThumbsupService thumbsupService;

	@RequiresPermissions("monitor:thumbsup:view")
	@GetMapping
	public String thumbsup() {
		return prefix + "/thumbsup";
	}

	/**
     * 查询花科-点赞列表
     */
	@RequiresPermissions("monitor:thumbsup:list")
	@PostMapping("/list")
	@ResponseBody
	public TableData<FlowerThumbsup> list(FlowerThumbsup thumbsup) {
		startPage();
		List<FlowerThumbsup> list = thumbsupService.list(Wrappers.<FlowerThumbsup>lambdaQuery(thumbsup));
		return getTableData(list);
	}

	/**
     * 导出花科-点赞列表
     */
	@RequiresPermissions("monitor:thumbsup:export")
	@PostMapping("/export")
	@ResponseBody
	public ExcelDTO export(FlowerThumbsup thumbsup) {
		List<FlowerThumbsup> list = thumbsupService.list(Wrappers.<FlowerThumbsup>lambdaQuery(thumbsup));
		ExcelUtils<FlowerThumbsup> util = new ExcelUtils<>(FlowerThumbsup.class);
		return new ExcelDTO(util.exportExcel(list, "thumbsup"));
	}

	/**
     * 新增花科-点赞
     */
	@GetMapping("/add")
	public String add() {
		return prefix + "/add";
	}

	/**
     * 新增保存花科-点赞
     */
	@RequiresPermissions("monitor:thumbsup:add")
	@Log(title = "花科-点赞", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public void addSave(@Validated FlowerThumbsup thumbsup) {
		thumbsupService.save(thumbsup);
	}

	/**
     * 修改花科-点赞
     */
	@GetMapping("/edit/{thumbsupId}")
	public String edit(@PathVariable("thumbsupId") Long thumbsupId, ModelMap mmap) {
		FlowerThumbsup thumbsup = thumbsupService.getById(thumbsupId);
		mmap.put("thumbsup", thumbsup);
		return prefix + "/edit";
	}

	/**
     * 修改保存花科-点赞
     */
	@RequiresPermissions("monitor:thumbsup:edit")
	@Log(title = "花科-点赞", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public void editSave(@Validated FlowerThumbsup thumbsup) {
		thumbsupService.updateById(thumbsup);
	}
	
	/**
     * 删除花科-点赞
     */
	@RequiresPermissions("monitor:thumbsup:remove")
	@Log(title = "花科-点赞", businessType = BusinessType.DELETE)
	@PostMapping("/remove")
	@ResponseBody
	public void remove(String ids) {
		thumbsupService.remove(Wrappers.<FlowerThumbsup>lambdaQuery().in(FlowerThumbsup::getThumbsupId, StringUtils.split2List(ids)));
	}

}
