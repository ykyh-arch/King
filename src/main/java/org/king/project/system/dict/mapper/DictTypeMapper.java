package org.king.project.system.dict.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.king.framework.mapper.BaseMapper;
import org.king.project.system.dict.domain.DictType;

/**
 * 字典表 数据层
 *
 * @author Crown
 */
@Mapper
public interface DictTypeMapper extends BaseMapper<DictType> {

}
