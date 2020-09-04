package org.king.project.peotry.controller;

import java.util.List;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
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
@Api("古诗词管理")
@Controller
@RequestMapping("/peotry/collection")
public class PeotryCollectionController extends WebController<PeotryCollection> {

	@Autowired
	private IPeotryCollectionService collectionService;

	/**
     * 查询古诗词-诗集列表
     */
	@ApiOperation("诗词列表")
	@PostMapping("/list")
	@ResponseBody
	public TableData<PeotryCollection> list(PeotryCollection collection) {
		startPage();
		List<PeotryCollection> list = collectionService.list(Wrappers.<PeotryCollection>lambdaQuery(collection));
		return getTableData(list);
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
