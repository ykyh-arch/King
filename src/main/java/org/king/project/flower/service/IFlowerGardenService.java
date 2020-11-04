package org.king.project.flower.service;

import org.king.framework.service.BaseService;
import org.king.project.flower.domain.FlowerGarden;

import java.util.List;

/**
 * 花科-花园 服务层
 *
 * @author Ykyh
 */
public interface IFlowerGardenService extends BaseService<FlowerGarden> {

    /**
     * 查询列表
     *
     * @param garden
     * @return
     */
    List<FlowerGarden> selectFlowerGardenList(FlowerGarden garden);

    /**
     * 获取详情
     *
     * @param gardenId
     * @return
     */
    FlowerGarden getGardenById(String gardenId);
}
