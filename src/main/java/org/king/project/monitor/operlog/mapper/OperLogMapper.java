package org.king.project.monitor.operlog.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.king.framework.mapper.BaseMapper;
import org.king.project.monitor.operlog.domain.OperLog;

/**
 * 操作日志 数据层
 *
 * @author King
 */
@Mapper
public interface OperLogMapper extends BaseMapper<OperLog> {

}