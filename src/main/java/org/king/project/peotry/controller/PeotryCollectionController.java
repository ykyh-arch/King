package org.king.project.peotry.controller;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.king.common.annotation.Log;
import org.king.common.enums.BusinessType;
import org.king.common.utils.StringUtils;
import org.king.common.utils.poi.ExcelUtils;
import org.king.framework.model.ExcelDTO;
import org.king.framework.web.controller.WebController;
import org.king.framework.web.page.TableData;
import org.king.project.peotry.domain.PeotryCollection;
import org.king.project.peotry.service.IPeotryCollectionService;
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
 * 古诗词-诗集信息操作处理
 *
 * @author Ykyh
 */
@Controller
@RequestMapping("/peotry/collection")
public class PeotryCollectionController extends WebController<PeotryCollection> {

	private final String prefix = "peotry/collection";

	@Autowired
	private IPeotryCollectionService collectionService;

	@RequiresPermissions("peotry:collection:view")
	@GetMapping
	public String collection() {
		return prefix + "/collection";
	}

	/**
     * 查询古诗词-诗集列表
     */
	@RequiresPermissions("peotry:collection:list")
	@PostMapping("/list")
	@ResponseBody
	public TableData<PeotryCollection> list(PeotryCollection collection) {
		startPage();
		List<PeotryCollection> list = collectionService.list(Wrappers.<PeotryCollection>lambdaQuery(collection));
		return getTableData(list);
	}

	/**
     * 导出古诗词-诗集列表
     */
	@RequiresPermissions("peotry:collection:export")
	@PostMapping("/export")
	@ResponseBody
	public ExcelDTO export(PeotryCollection collection) {
		List<PeotryCollection> list = collectionService.list(Wrappers.<PeotryCollection>lambdaQuery(collection));
		ExcelUtils<PeotryCollection> util = new ExcelUtils<>(PeotryCollection.class);
		return new ExcelDTO(util.exportExcel(list, "collection"));
	}

	/**
     * 新增古诗词-诗集
     */
	@GetMapping("/add")
	public String add() {
		return prefix + "/add";
	}

	/**
     * 新增保存古诗词-诗集
     */
	@RequiresPermissions("peotry:collection:add")
	@Log(title = "古诗词-诗集", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public void addSave(@Validated PeotryCollection collection) {
		collectionService.save(collection);
	}

	/**
     * 修改古诗词-诗集
     */
	@GetMapping("/edit/{peotryId}")
	public String edit(@PathVariable("peotryId") Long peotryId, ModelMap mmap) {
		PeotryCollection collection = collectionService.getById(peotryId);
		mmap.put("collection", collection);
		return prefix + "/edit";
	}

	/**
     * 修改保存古诗词-诗集
     */
	@RequiresPermissions("peotry:collection:edit")
	@Log(title = "古诗词-诗集", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public void editSave(@Validated PeotryCollection collection) {
		collectionService.updateById(collection);
	}
	
	/**
     * 删除古诗词-诗集
     */
	@RequiresPermissions("peotry:collection:remove")
	@Log(title = "古诗词-诗集", businessType = BusinessType.DELETE)
	@PostMapping("/remove")
	@ResponseBody
	public void remove(String ids) {
		collectionService.remove(Wrappers.<PeotryCollection>lambdaQuery().in(PeotryCollection::getPeotryId, StringUtils.split2List(ids)));
	}

}
