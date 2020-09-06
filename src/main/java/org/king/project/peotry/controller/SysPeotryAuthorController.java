package org.king.project.peotry.controller;

import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.king.common.annotation.Log;
import org.king.common.enums.BusinessType;
import org.king.common.utils.StringUtils;
import org.king.common.utils.poi.ExcelUtils;
import org.king.framework.model.ExcelDTO;
import org.king.framework.web.controller.WebController;
import org.king.framework.web.page.TableData;
import org.king.project.peotry.domain.SysPeotryAuthor;
import org.king.project.peotry.service.ISysPeotryAuthorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 古诗词-作者信息操作处理
 *
 * @author Ykyh
 */
@Controller
@RequestMapping("/peotry/author")
public class SysPeotryAuthorController extends WebController<SysPeotryAuthor> {

	@Autowired
	private ISysPeotryAuthorService authorService;

	/**
     * 查询古诗词-作者列表
     */
	@RequiresPermissions("peotry:author:list")
	@PostMapping("/list")
	@ResponseBody
	public TableData<SysPeotryAuthor> list(SysPeotryAuthor author) {
		startPage();
		List<SysPeotryAuthor> list = authorService.list(Wrappers.<SysPeotryAuthor>lambdaQuery(author));
		return getTableData(list);
	}

	/**
     * 导出古诗词-作者列表
     */
	@RequiresPermissions("peotry:author:export")
	@PostMapping("/export")
	@ResponseBody
	public ExcelDTO export(SysPeotryAuthor author) {
		List<SysPeotryAuthor> list = authorService.list(Wrappers.<SysPeotryAuthor>lambdaQuery(author));
		ExcelUtils<SysPeotryAuthor> util = new ExcelUtils<>(SysPeotryAuthor.class);
		return new ExcelDTO(util.exportExcel(list, "author"));
	}

	/**
     * 新增保存古诗词-作者
     */
	@RequiresPermissions("peotry:author:add")
	@Log(title = "古诗词-作者", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public void addSave(@Validated SysPeotryAuthor author) {
		authorService.save(author);
	}

	/**
     * 修改保存古诗词-作者
     */
	@RequiresPermissions("peotry:author:edit")
	@Log(title = "古诗词-作者", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public void editSave(@Validated SysPeotryAuthor author) {
		authorService.updateById(author);
	}
	
	/**
     * 删除古诗词-作者
     */
	@RequiresPermissions("peotry:author:remove")
	@Log(title = "古诗词-作者", businessType = BusinessType.DELETE)
	@PostMapping("/remove")
	@ResponseBody
	public void remove(String ids) {
		authorService.remove(Wrappers.<SysPeotryAuthor>lambdaQuery().in(SysPeotryAuthor::getAuthorId, StringUtils.split2List(ids)));
	}

}
