package org.king.project.flower.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.king.framework.mapper.BaseMapper;
import org.king.project.flower.domain.FlowerGarden;

import java.util.List;

/**
 * 花科-花园 数据层
 *
 * @author Ykyh
 */
@Mapper
public interface FlowerGardenMapper extends BaseMapper<FlowerGarden> {

    List<FlowerGarden> selectFlowerGardenList(FlowerGarden garden);

    FlowerGarden getGardenById(String gardenId);
}