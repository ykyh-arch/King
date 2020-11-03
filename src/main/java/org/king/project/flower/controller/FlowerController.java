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
import org.king.project.flower.domain.Flower;
import org.king.project.flower.service.IFlowerService;
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
 * 花科-信息信息操作处理
 *
 * @author Ykyh
 */
@Controller
@RequestMapping("/monitor/flower")
public class FlowerController extends WebController<Flower> {

	private final String prefix = "monitor/flower";

	@Autowired
	private IFlowerService flowerService;

	@RequiresPermissions("monitor:flower:view")
	@GetMapping
	public String flower() {
		return prefix + "/flower";
	}

	/**
     * 查询花科-信息列表
     */
	@RequiresPermissions("monitor:flower:list")
	@PostMapping("/list")
	@ResponseBody
	public TableData<Flower> list(Flower flower) {
		startPage();
		List<Flower> list = flowerService.list(Wrappers.<Flower>lambdaQuery(flower));
		return getTableData(list);
	}

	/**
     * 导出花科-信息列表
     */
	@RequiresPermissions("monitor:flower:export")
	@PostMapping("/export")
	@ResponseBody
	public ExcelDTO export(Flower flower) {
		List<Flower> list = flowerService.list(Wrappers.<Flower>lambdaQuery(flower));
		ExcelUtils<Flower> util = new ExcelUtils<>(Flower.class);
		return new ExcelDTO(util.exportExcel(list, "flower"));
	}

	/**
     * 新增花科-信息
     */
	@GetMapping("/add")
	public String add() {
		return prefix + "/add";
	}

	/**
     * 新增保存花科-信息
     */
	@RequiresPermissions("monitor:flower:add")
	@Log(title = "花科-信息", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public void addSave(@Validated Flower flower) {
		flowerService.save(flower);
	}

	/**
     * 修改花科-信息
     */
	@GetMapping("/edit/{flowerId}")
	public String edit(@PathVariable("flowerId") Long flowerId, ModelMap mmap) {
		Flower flower = flowerService.getById(flowerId);
		mmap.put("flower", flower);
		return prefix + "/edit";
	}

	/**
     * 修改保存花科-信息
     */
	@RequiresPermissions("monitor:flower:edit")
	@Log(title = "花科-信息", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public void editSave(@Validated Flower flower) {
		flowerService.updateById(flower);
	}
	
	/**
     * 删除花科-信息
     */
	@RequiresPermissions("monitor:flower:remove")
	@Log(title = "花科-信息", businessType = BusinessType.DELETE)
	@PostMapping("/remove")
	@ResponseBody
	public void remove(String ids) {
		flowerService.remove(Wrappers.<Flower>lambdaQuery().in(Flower::getFlowerId, StringUtils.split2List(ids)));
	}

}
