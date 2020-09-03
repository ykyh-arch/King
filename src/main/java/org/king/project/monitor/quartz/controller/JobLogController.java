package org.king.project.monitor.quartz.controller;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.king.common.annotation.Log;
import org.king.common.enums.BusinessType;
import org.king.common.utils.StringUtils;
import org.king.common.utils.poi.ExcelUtils;
import org.king.framework.model.ExcelDTO;
import org.king.framework.web.controller.WebController;
import org.king.framework.web.page.TableData;
import org.king.project.monitor.quartz.domain.JobLog;
import org.king.project.monitor.quartz.service.IJobLogService;
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
 * <p>
 * 定时任务日志 前端控制器
 * </p>
 *
 * @author Ykyh
 */
@Controller
@RequestMapping("/monitor/jobLog")
public class JobLogController extends WebController<JobLog> {

    private final String prefix = "monitor/job";

    @Autowired
    private IJobLogService jobLogService;

    @RequiresPermissions("monitor:job:view")
    @GetMapping
    public String jobLog() {
        return prefix + "/jobLog";
    }

    @RequiresPermissions("monitor:job:list")
    @PostMapping("/list")
    @ResponseBody
    public TableData<JobLog> list(JobLog jobLog) {
        startPage();
        List<JobLog> list = jobLogService.selectJobLogList(jobLog);
        return getTableData(list);
    }

    @Log(title = "调度日志", businessType = BusinessType.EXPORT)
    @RequiresPermissions("monitor:job:export")
    @PostMapping("/export")
    @ResponseBody
    public ExcelDTO export(JobLog jobLog) {
        List<JobLog> list = jobLogService.selectJobLogList(jobLog);
        ExcelUtils<JobLog> util = new ExcelUtils<>(JobLog.class);
        return new ExcelDTO(util.exportExcel(list, "调度日志"));
    }

    @Log(title = "调度日志", businessType = BusinessType.DELETE)
    @RequiresPermissions("monitor:job:remove")
    @PostMapping("/remove")
    @ResponseBody
    public void remove(String ids) {
        jobLogService.remove(Wrappers.<JobLog>lambdaQuery().in(JobLog::getJobLogId, StringUtils.split2List(ids)));
    }

    @RequiresPermissions("monitor:job:detail")
    @GetMapping("/detail/{jobLogId}")
    public String detail(@PathVariable("jobLogId") Long jobLogId, ModelMap mmap) {
        mmap.put("name", "jobLog");
        mmap.put("jobLog", jobLogService.getById(jobLogId));
        return prefix + "/detail";
    }

    @Log(title = "调度日志", businessType = BusinessType.CLEAN)
    @RequiresPermissions("monitor:job:remove")
    @PostMapping("/clean")
    @ResponseBody
    public void clean() {
        jobLogService.remove();
    }
}
