package org.king.project.system.config.service;

import java.util.Date;
import java.util.List;
import java.util.Objects;

import org.king.common.utils.StringUtils;
import org.king.framework.service.impl.BaseServiceImpl;
import org.king.project.system.config.domain.Config;
import org.king.project.system.config.mapper.ConfigMapper;
import org.springframework.stereotype.Service;

/**
 * 参数配置 服务层实现
 *
 * @author Crown
 */
@Service
public class ConfigServiceImpl extends BaseServiceImpl<ConfigMapper, Config> implements IConfigService {

    @Override
    public Config selectConfigByKey(String configKey) {
        return query().eq(Config::getConfigKey, configKey).getOne();
    }

    @Override
    public List<Config> selectConfigList(Config config) {
        Date beginTime = config.getBeginTime();
        Date endTime = config.getEndTime();
        return query().like(StringUtils.isNotEmpty(config.getConfigName()), Config::getConfigName, config.getConfigName())
                .eq(StringUtils.isNotEmpty(config.getConfigType()), Config::getConfigType, config.getConfigType())
                .like(StringUtils.isNotEmpty(config.getConfigKey()), Config::getConfigKey, config.getConfigKey())
                .gt(Objects.nonNull(beginTime), Config::getCreateTime, beginTime)
                .lt(Objects.nonNull(endTime), Config::getCreateTime, endTime)
                .list();
    }

    @Override
    public boolean checkConfigKeyUnique(Config config) {
        Long configId = config.getConfigId();
        Config info = selectConfigByKey(config.getConfigKey());
        return Objects.isNull(info) || info.getConfigId().equals(configId);
    }

    @Override
    public String getConfigValueByKey(String configkey) {
        Config config = selectConfigByKey(configkey);
        return StringUtils.isNotNull(config) ? config.getConfigValue() : "";
    }
}
