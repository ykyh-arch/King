package org.king.project.monitor.quartz.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.king.framework.mapper.BaseMapper;
import org.king.project.monitor.quartz.domain.JobLog;

/**
 * <p>
 * 定时任务日志 Mapper 接口
 * </p>
 *
 * @author Ykyh
 */
@Mapper
public interface JobLogMapper extends BaseMapper<JobLog> {

}
