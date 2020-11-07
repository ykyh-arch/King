package org.king.project.flower.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.king.framework.mapper.BaseMapper;
import org.king.project.flower.domain.FlowerCollection;

import java.util.List;

/**
 * 花科-收藏 数据层
 *
 * @author Ykyh
 */
@Mapper
public interface FlowerCollectionMapper extends BaseMapper<FlowerCollection> {

}