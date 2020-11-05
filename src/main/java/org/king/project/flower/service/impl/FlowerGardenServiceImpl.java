package org.king.project.flower.service.impl;

import org.king.framework.service.impl.BaseServiceImpl;
import org.king.project.flower.service.IFlowerGardenService;
import org.king.project.flower.domain.FlowerGarden;
import org.king.project.flower.mapper.FlowerGardenMapper;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 花科-花园 服务层实现
 *
 * @author Ykyh
 */
@Service
public class FlowerGardenServiceImpl extends BaseServiceImpl<FlowerGardenMapper, FlowerGarden> implements IFlowerGardenService {

    @Override
    public List<FlowerGarden> selectFlowerGardenList(FlowerGarden garden) {
        return baseMapper.selectFlowerGardenList(garden);
    }

    @Override
    public FlowerGarden getGardenById(String gardenId) {
        return baseMapper.getGardenById(gardenId);
    }
}
