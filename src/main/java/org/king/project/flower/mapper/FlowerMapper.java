package org.king.project.flower.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.king.framework.mapper.BaseMapper;
import org.king.project.flower.domain.Flower;

/**
 * 花科-信息 数据层
 *
 * @author Ykyh
 */
@Mapper
public interface FlowerMapper extends BaseMapper<Flower> {

}