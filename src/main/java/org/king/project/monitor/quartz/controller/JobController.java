package org.king.project.monitor.quartz.controller;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.king.common.annotation.Log;
import org.king.common.enums.BusinessType;
import org.king.common.utils.StringUtils;
import org.king.common.utils.poi.ExcelUtils;
import org.king.framework.enums.ErrorCodeEnum;
import org.king.framework.model.ExcelDTO;
import org.king.framework.utils.ApiAssert;
import org.king.framework.web.controller.WebController;
import org.king.framework.web.page.TableData;
import org.king.project.monitor.quartz.common.CronUtils;
import org.king.project.monitor.quartz.domain.Job;
import org.king.project.monitor.quartz.service.IJobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * <p>
 * 定时任务 前端控制器
 * </p>
 *
 * @author Ykyh
 */
@Controller
@RequestMapping("/monitor/job")
public class JobController extends WebController<Job> {

    private final String prefix = "monitor/job";

    @Autowired
    private IJobService jobService;

    @RequiresPermissions("monitor:job:view")
    @GetMapping
    public String job() {
        return prefix + "/job";
    }

    @RequiresPermissions("monitor:job:list")
    @PostMapping("/list")
    @ResponseBody
    public TableData<Job> list(Job job) {
        startPage();
        List<Job> list = jobService.selectJobList(job);
        return getTableData(list);
    }

    @Log(title = "定时任务", businessType = BusinessType.EXPORT)
    @RequiresPermissions("monitor:job:export")
    @PostMapping("/export")
    @ResponseBody
    public ExcelDTO export(Job job) {
        List<Job> list = jobService.selectJobList(job);
        ExcelUtils<Job> util = new ExcelUtils<>(Job.class);
        return new ExcelDTO(util.exportExcel(list, "定时任务"));
    }

    @Log(title = "定时任务", businessType = BusinessType.DELETE)
    @RequiresPermissions("monitor:job:remove")
    @PostMapping("/remove")
    @ResponseBody
    public void remove(String ids) {
        List<String> idVals = StringUtils.split2List(ids);
        idVals.forEach(id -> {
            Job job = jobService.getById(id);
            ApiAssert.notNull(ErrorCodeEnum.JOB_NOT_FOUND.overrideMsg("未找到ID为[" + id + "]的定时任务"), job);
            jobService.delete(job);
        });
    }

    @RequiresPermissions("monitor:job:detail")
    @GetMapping("/detail/{jobId}")
    public String detail(@PathVariable("jobId") Long jobId, ModelMap mmap) {
        mmap.put("name", "job");
        mmap.put("job", jobService.getById(jobId));
        return prefix + "/detail";
    }

    /**
     * 任务调度状态修改
     */
    @Log(title = "定时任务", businessType = BusinessType.UPDATE)
    @RequiresPermissions("monitor:job:changeStatus")
    @PostMapping("/changeStatus")
    @ResponseBody
    public void changeStatus(Job job) {
        Job newJob = jobService.getById(job.getJobId());
        ApiAssert.notNull(ErrorCodeEnum.JOB_NOT_FOUND.overrideMsg("未找到ID为[" + job.getJobId() + "]的定时任务"), job);
        jobService.updatePaused(newJob);
    }

    /**
     * 任务调度立即执行一次
     */
    @Log(title = "定时任务", businessType = BusinessType.UPDATE)
    @RequiresPermissions("monitor:job:changeStatus")
    @PostMapping("/run")
    @ResponseBody
    public void run(Job job) {
        Job newJob = jobService.getById(job.getJobId());
        ApiAssert.notNull(ErrorCodeEnum.JOB_NOT_FOUND.overrideMsg("未找到ID为[" + job.getJobId() + "]的定时任务"), job);
        jobService.execute(newJob);
    }

    /**
     * 新增调度
     */
    @GetMapping("/add")
    public String add() {
        return prefix + "/add";
    }

    /**
     * 新增保存调度
     */
    @Log(title = "定时任务", businessType = BusinessType.INSERT)
    @RequiresPermissions("monitor:job:add")
    @PostMapping("/add")
    @ResponseBody
    public void addSave(@Validated Job job) {
        jobService.create(job);
    }

    /**
     * 修改调度
     */
    @GetMapping("/edit/{jobId}")
    public String edit(@PathVariable("jobId") Long jobId, ModelMap mmap) {
        mmap.put("job", jobService.getById(jobId));
        return prefix + "/edit";
    }

    /**
     * 修改保存调度
     */
    @Log(title = "定时任务", businessType = BusinessType.UPDATE)
    @RequiresPermissions("monitor:job:edit")
    @PostMapping("/edit")
    @ResponseBody
    public void editSave(@Validated Job job) {
        jobService.update(job);
    }

    /**
     * 校验cron表达式是否有效
     */
    @PostMapping("/checkCronExpressionIsValid")
    @ResponseBody
    public boolean checkCronExpressionIsValid(Job job) {
        return CronUtils.isValid(job.getCron());
    }
}
