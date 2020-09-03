package org.king.project.monitor.exceLog.service;

import org.king.framework.service.impl.BaseServiceImpl;
import org.king.project.monitor.exceLog.domain.ExceLog;
import org.king.project.monitor.exceLog.mapper.ExceLogMapper;
import org.springframework.stereotype.Service;

/**
 * 异常日志 服务层实现
 *
 * @author Ykyh
 */
@Service
public class ExceLogServiceImpl extends BaseServiceImpl<ExceLogMapper, ExceLog> implements IExceLogService {

}
