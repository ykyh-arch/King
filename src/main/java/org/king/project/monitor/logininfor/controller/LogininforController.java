package org.king.project.monitor.logininfor.controller;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.king.common.annotation.Log;
import org.king.common.enums.BusinessType;
import org.king.common.utils.StringUtils;
import org.king.common.utils.poi.ExcelUtils;
import org.king.framework.model.ExcelDTO;
import org.king.framework.web.controller.WebController;
import org.king.framework.web.page.TableData;
import org.king.project.monitor.logininfor.domain.Logininfor;
import org.king.project.monitor.logininfor.service.ILogininforService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baomidou.mybatisplus.core.toolkit.Wrappers;

/**
 * 系统访问记录
 *
 * @author King
 */
@Controller
@RequestMapping("/monitor/logininfor")
public class LogininforController extends WebController<Logininfor> {

    private final String prefix = "monitor/logininfor";

    @Autowired
    private ILogininforService logininforService;

    @RequiresPermissions("monitor:logininfor:view")
    @GetMapping
    public String logininfor() {
        return prefix + "/logininfor";
    }

    @RequiresPermissions("monitor:logininfor:list")
    @PostMapping("/list")
    @ResponseBody
    public TableData<Logininfor> list(Logininfor logininfor) {
        startPage();
        List<Logininfor> list = logininforService.selectLogininforList(logininfor);
        return getTableData(list);
    }

    @Log(title = "登陆日志", businessType = BusinessType.EXPORT)
    @RequiresPermissions("monitor:logininfor:export")
    @PostMapping("/export")
    @ResponseBody
    public ExcelDTO export(Logininfor logininfor) {
        List<Logininfor> list = logininforService.selectLogininforList(logininfor);
        ExcelUtils<Logininfor> util = new ExcelUtils<>(Logininfor.class);
        return new ExcelDTO(util.exportExcel(list, "登陆日志"));

    }

    @RequiresPermissions("monitor:logininfor:remove")
    @Log(title = "登陆日志", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public void remove(String ids) {
        logininforService.remove(Wrappers.<Logininfor>lambdaQuery().in(Logininfor::getInfoId, StringUtils.split2List(ids)));
    }

    @RequiresPermissions("monitor:logininfor:remove")
    @Log(title = "登陆日志", businessType = BusinessType.CLEAN)
    @PostMapping("/clean")
    @ResponseBody
    public void clean() {
        logininforService.remove();
    }
}
