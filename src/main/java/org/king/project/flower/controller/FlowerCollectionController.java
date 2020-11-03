package org.king.project.flower.controller;

import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.king.common.annotation.Log;
import org.king.common.enums.BusinessType;
import org.king.common.utils.StringUtils;
import org.king.common.utils.poi.ExcelUtils;
import org.king.framework.model.ExcelDTO;
import org.king.framework.web.controller.WebController;
import org.king.framework.web.page.TableData;
import org.king.project.flower.domain.FlowerCollection;
import org.king.project.flower.service.IFlowerCollectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 花科-收藏信息操作处理
 *
 * @author Ykyh
 */
@Controller
@RequestMapping("/monitor/collection")
public class FlowerCollectionController extends WebController<FlowerCollection> {

	private final String prefix = "monitor/collection";

	@Autowired
	private IFlowerCollectionService collectionService;

	@RequiresPermissions("monitor:collection:view")
	@GetMapping
	public String collection() {
		return prefix + "/collection";
	}

	/**
     * 查询花科-收藏列表
     */
	@RequiresPermissions("monitor:collection:list")
	@PostMapping("/list")
	@ResponseBody
	public TableData<FlowerCollection> list(FlowerCollection collection) {
		startPage();
		List<FlowerCollection> list = collectionService.list(Wrappers.<FlowerCollection>lambdaQuery(collection));
		return getTableData(list);
	}

	/**
     * 导出花科-收藏列表
     */
	@RequiresPermissions("monitor:collection:export")
	@PostMapping("/export")
	@ResponseBody
	public ExcelDTO export(FlowerCollection collection) {
		List<FlowerCollection> list = collectionService.list(Wrappers.<FlowerCollection>lambdaQuery(collection));
		ExcelUtils<FlowerCollection> util = new ExcelUtils<>(FlowerCollection.class);
		return new ExcelDTO(util.exportExcel(list, "collection"));
	}

	/**
     * 新增花科-收藏
     */
	@GetMapping("/add")
	public String add() {
		return prefix + "/add";
	}

	/**
     * 新增保存花科-收藏
     */
	@RequiresPermissions("monitor:collection:add")
	@Log(title = "花科-收藏", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public void addSave(@Validated FlowerCollection collection) {
		collectionService.save(collection);
	}

	/**
     * 修改花科-收藏
     */
	@GetMapping("/edit/{collectionId}")
	public String edit(@PathVariable("collectionId") Long collectionId, ModelMap mmap) {
		FlowerCollection collection = collectionService.getById(collectionId);
		mmap.put("collection", collection);
		return prefix + "/edit";
	}

	/**
     * 修改保存花科-收藏
     */
	@RequiresPermissions("monitor:collection:edit")
	@Log(title = "花科-收藏", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public void editSave(@Validated FlowerCollection collection) {
		collectionService.updateById(collection);
	}
	
	/**
     * 删除花科-收藏
     */
	@RequiresPermissions("monitor:collection:remove")
	@Log(title = "花科-收藏", businessType = BusinessType.DELETE)
	@PostMapping("/remove")
	@ResponseBody
	public void remove(String ids) {
		collectionService.remove(Wrappers.<FlowerCollection>lambdaQuery().in(FlowerCollection::getCollectionId, StringUtils.split2List(ids)));
	}

}
