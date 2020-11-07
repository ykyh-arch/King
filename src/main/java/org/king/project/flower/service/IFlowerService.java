package org.king.project.flower.service;

import org.king.framework.service.BaseService;
import org.king.project.flower.domain.Flower;

import java.util.List;
import java.util.Map;

/**
 * 花科-信息 服务层
 *
 * @author Ykyh
 */
public interface IFlowerService extends BaseService<Flower> {

    List<Flower> getByType(Long type);

    Map<String,List<Flower>> getMyCollection();
}
