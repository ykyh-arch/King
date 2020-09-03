package org.king.framework.spring.validator;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.king.common.utils.StringUtils;
import org.king.project.monitor.quartz.common.CronUtils;

/**
 * <p>
 * Cron校验
 * </p>
 *
 * @author Ykyh
 */
public class CronConstraintValidator implements ConstraintValidator<Cron, String> {

    @Override
    public void initialize(Cron cron) {
    }

    /**
     * @Description: 自定义校验逻辑
     */
    @Override
    public boolean isValid(String cron, ConstraintValidatorContext constraintValidatorContext) {
        if (StringUtils.isBlank(cron)) {
            return true;
        }
        return CronUtils.isValid(cron);
    }
}