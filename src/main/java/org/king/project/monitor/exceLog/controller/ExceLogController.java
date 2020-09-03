package org.king.project.monitor.exceLog.controller;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.king.common.annotation.Log;
import org.king.common.enums.BusinessType;
import org.king.common.utils.StringUtils;
import org.king.framework.web.controller.WebController;
import org.king.framework.web.page.TableData;
import org.king.project.monitor.exceLog.domain.ExceLog;
import org.king.project.monitor.exceLog.service.IExceLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baomidou.mybatisplus.core.toolkit.Wrappers;

/**
 * 异常日志信息操作处理
 *
 * @author Ykyh
 */
@Controller
@RequestMapping("/monitor/exceLog")
public class ExceLogController extends WebController<ExceLog> {

    private final String prefix = "monitor/exceLog";

    @Autowired
    private IExceLogService exceLogService;

    @RequiresPermissions("monitor:exceLog:view")
    @GetMapping
    public String exceLog() {
        return prefix + "/exceLog";
    }

    /**
     * 查询异常日志列表
     */
    @RequiresPermissions("monitor:exceLog:list")
    @PostMapping("/list")
    @ResponseBody
    public TableData<ExceLog> list(ExceLog exceLog) {
        startPage();
        List<ExceLog> list = exceLogService.list(Wrappers.<ExceLog>lambdaQuery().like(StringUtils.isNotEmpty(exceLog.getContent()), ExceLog::getContent, exceLog.getContent()));
        return getTableData(list);
    }

    @RequiresPermissions("monitor:exceLog:detail")
    @GetMapping("/detail/{id}")
    public String detail(@PathVariable("id") Long id, ModelMap mmap) {
        mmap.put("exceLog", exceLogService.getById(id));
        return prefix + "/detail";
    }

    /**
     * 删除异常日志
     */
    @RequiresPermissions("monitor:exceLog:remove")
    @Log(title = "异常日志", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public void remove(String ids) {
        exceLogService.remove(Wrappers.<ExceLog>lambdaQuery().in(ExceLog::getId, StringUtils.split2List(ids)));
    }

}
