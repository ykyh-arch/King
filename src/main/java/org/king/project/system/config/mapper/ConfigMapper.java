package org.king.project.system.config.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.king.framework.mapper.BaseMapper;
import org.king.project.system.config.domain.Config;

/**
 * 参数配置 数据层
 *
 * @author King
 */
@Mapper
public interface ConfigMapper extends BaseMapper<Config> {

}