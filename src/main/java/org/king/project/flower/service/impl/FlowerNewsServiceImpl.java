package org.king.project.flower.service.impl;

import org.king.framework.service.impl.BaseServiceImpl;
import org.king.project.flower.service.IFlowerNewsService;
import org.king.project.flower.domain.FlowerNews;
import org.king.project.flower.mapper.FlowerNewsMapper;
import org.springframework.stereotype.Service;

/**
 * 花科-资讯 服务层实现
 *
 * @author Ykyh
 */
@Service
public class FlowerNewsServiceImpl extends BaseServiceImpl<FlowerNewsMapper, FlowerNews> implements IFlowerNewsService {

}
