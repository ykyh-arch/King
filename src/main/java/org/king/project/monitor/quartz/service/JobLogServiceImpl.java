package org.king.project.monitor.quartz.service;

import java.util.Date;
import java.util.List;
import java.util.Objects;

import org.king.common.utils.StringUtils;
import org.king.framework.service.impl.BaseServiceImpl;
import org.king.project.monitor.quartz.domain.JobLog;
import org.king.project.monitor.quartz.mapper.JobLogMapper;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 定时任务日志 服务实现类
 * </p>
 *
 * @author Ykyh
 */
@Service
public class JobLogServiceImpl extends BaseServiceImpl<JobLogMapper, JobLog> implements IJobLogService {

    @Override
    public List<JobLog> selectJobLogList(JobLog jobLog) {
        Date beginTime = jobLog.getBeginTime();
        Date endTime = jobLog.getEndTime();
        return query()
                .like(StringUtils.isNotEmpty(jobLog.getJobName()), JobLog::getJobName, jobLog.getJobName())
                .like(StringUtils.isNotEmpty(jobLog.getClassName()), JobLog::getClassName, jobLog.getClassName())
                .eq(Objects.nonNull(jobLog.getStatus()), JobLog::getStatus, jobLog.getStatus())
                .gt(Objects.nonNull(beginTime), JobLog::getCreateTime, beginTime)
                .lt(Objects.nonNull(endTime), JobLog::getCreateTime, endTime)
                .list();
    }
}
