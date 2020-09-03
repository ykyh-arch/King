package org.king.project.monitor.quartz.common;

import java.lang.reflect.Method;

import javax.servlet.http.HttpServletResponse;

import org.king.common.utils.ClassUtils;
import org.king.framework.exception.KingException;
import org.king.framework.spring.ApplicationUtils;
import org.springframework.util.ReflectionUtils;

import com.alibaba.fastjson.JSONObject;

import lombok.extern.slf4j.Slf4j;

/**
 * 执行定时任务
 *
 * @author Ykyh
 */
@Slf4j
public class QuartzRunnable implements Runnable {

    private final Object target;
    private Method method;
    private final Long jobId;
    private final JSONObject params;

    QuartzRunnable(String className, Long jobId, JSONObject params)
            throws NoSuchMethodException, SecurityException {
        this.target = ApplicationUtils.getBean(ClassUtils.forName(className));
        this.jobId = jobId;
        this.params = params;
        this.method = target.getClass().getDeclaredMethod("execute", Long.class, JSONObject.class);
    }

    @Override
    public void run() {
        try {
            ReflectionUtils.makeAccessible(method);
            method.invoke(target, jobId, params);
        } catch (Exception e) {
            throw new KingException(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "定时任务执行失败", e);
        }
    }
}
