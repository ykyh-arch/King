package org.king.project.system.dict.controller;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.king.common.annotation.Log;
import org.king.common.enums.BusinessType;
import org.king.common.utils.StringUtils;
import org.king.common.utils.poi.ExcelUtils;
import org.king.framework.model.ExcelDTO;
import org.king.framework.web.controller.WebController;
import org.king.framework.web.page.TableData;
import org.king.project.system.dict.domain.DictData;
import org.king.project.system.dict.service.IDictDataService;
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
 * 数据字典信息
 *
 * @author King
 */
@Controller
@RequestMapping("/system/dict/data")
public class DictDataController extends WebController<DictData> {

    private final String prefix = "system/dict/data";

    @Autowired
    private IDictDataService dictDataService;

    @RequiresPermissions("system:dict:view")
    @GetMapping
    public String dictData() {
        return prefix + "/data";
    }

    @PostMapping("/list")
    @RequiresPermissions("system:dict:list")
    @ResponseBody
    public TableData<DictData> list(DictData dictData) {
        startPage();
        List<DictData> list = dictDataService.selectDictDataList(dictData);
        return getTableData(list);
    }

    @Log(title = "字典数据", businessType = BusinessType.EXPORT)
    @RequiresPermissions("system:dict:export")
    @PostMapping("/export")
    @ResponseBody
    public ExcelDTO export(DictData dictData) {
        List<DictData> list = dictDataService.selectDictDataList(dictData);
        ExcelUtils<DictData> util = new ExcelUtils<>(DictData.class);
        return new ExcelDTO(util.exportExcel(list, "字典数据"));

    }

    /**
     * 新增字典类型
     */
    @GetMapping("/add/{dictType}")
    public String add(@PathVariable("dictType") String dictType, ModelMap mmap) {
        mmap.put("dictType", dictType);
        return prefix + "/add";
    }

    /**
     * 新增保存字典类型
     */
    @Log(title = "字典数据", businessType = BusinessType.INSERT)
    @RequiresPermissions("system:dict:add")
    @PostMapping("/add")
    @ResponseBody
    public void addSave(@Validated DictData dict) {
        dictDataService.save(dict);
    }

    /**
     * 修改字典类型
     */
    @GetMapping("/edit/{dictCode}")
    public String edit(@PathVariable("dictCode") Long dictCode, ModelMap mmap) {
        mmap.put("dict", dictDataService.getById(dictCode));
        return prefix + "/edit";
    }

    /**
     * 修改保存字典类型
     */
    @Log(title = "字典数据", businessType = BusinessType.UPDATE)
    @RequiresPermissions("system:dict:edit")
    @PostMapping("/edit")
    @ResponseBody
    public void editSave(@Validated DictData dict) {
        dictDataService.updateById(dict);
    }

    @Log(title = "字典数据", businessType = BusinessType.DELETE)
    @RequiresPermissions("system:dict:remove")
    @PostMapping("/remove")
    @ResponseBody
    public void remove(String ids) {
        dictDataService.remove(Wrappers.<DictData>lambdaQuery().in(DictData::getDictCode, StringUtils.split2List(ids)));
    }
}
