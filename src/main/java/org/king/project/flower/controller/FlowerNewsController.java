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
import org.king.project.flower.domain.FlowerNews;
import org.king.project.flower.service.IFlowerNewsService;
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
 * 花科-资讯信息操作处理
 *
 * @author Ykyh
 */
@Controller
@RequestMapping("/monitor/news")
public class FlowerNewsController extends WebController<FlowerNews> {

	private final String prefix = "monitor/news";

	@Autowired
	private IFlowerNewsService newsService;

	@RequiresPermissions("monitor:news:view")
	@GetMapping
	public String news() {
		return prefix + "/news";
	}

	/**
     * 查询花科-资讯列表
     */
	@RequiresPermissions("monitor:news:list")
	@PostMapping("/list")
	@ResponseBody
	public TableData<FlowerNews> list(FlowerNews news) {
		startPage();
		List<FlowerNews> list = newsService.list(Wrappers.<FlowerNews>lambdaQuery(news));
		return getTableData(list);
	}

	/**
     * 导出花科-资讯列表
     */
	@RequiresPermissions("monitor:news:export")
	@PostMapping("/export")
	@ResponseBody
	public ExcelDTO export(FlowerNews news) {
		List<FlowerNews> list = newsService.list(Wrappers.<FlowerNews>lambdaQuery(news));
		ExcelUtils<FlowerNews> util = new ExcelUtils<>(FlowerNews.class);
		return new ExcelDTO(util.exportExcel(list, "news"));
	}

	/**
     * 新增花科-资讯
     */
	@GetMapping("/add")
	public String add() {
		return prefix + "/add";
	}

	/**
     * 新增保存花科-资讯
     */
	@RequiresPermissions("monitor:news:add")
	@Log(title = "花科-资讯", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public void addSave(@Validated FlowerNews news) {
		newsService.save(news);
	}

	/**
     * 修改花科-资讯
     */
	@GetMapping("/edit/{newsId}")
	public String edit(@PathVariable("newsId") Long newsId, ModelMap mmap) {
		FlowerNews news = newsService.getById(newsId);
		mmap.put("news", news);
		return prefix + "/edit";
	}

	/**
     * 修改保存花科-资讯
     */
	@RequiresPermissions("monitor:news:edit")
	@Log(title = "花科-资讯", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public void editSave(@Validated FlowerNews news) {
		newsService.updateById(news);
	}
	
	/**
     * 删除花科-资讯
     */
	@RequiresPermissions("monitor:news:remove")
	@Log(title = "花科-资讯", businessType = BusinessType.DELETE)
	@PostMapping("/remove")
	@ResponseBody
	public void remove(String ids) {
		newsService.remove(Wrappers.<FlowerNews>lambdaQuery().in(FlowerNews::getNewsId, StringUtils.split2List(ids)));
	}

}
