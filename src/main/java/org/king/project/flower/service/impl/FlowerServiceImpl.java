package org.king.project.flower.service.impl;

import org.king.framework.service.impl.BaseServiceImpl;
import org.king.project.flower.service.IFlowerService;
import org.king.project.flower.domain.Flower;
import org.king.project.flower.mapper.FlowerMapper;
import org.springframework.stereotype.Service;

/**
 * 花科-信息 服务层实现
 *
 * @author Ykyh
 */
@Service
public class FlowerServiceImpl extends BaseServiceImpl<FlowerMapper, Flower> implements IFlowerService {

}
