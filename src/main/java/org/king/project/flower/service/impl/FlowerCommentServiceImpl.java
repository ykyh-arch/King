package org.king.project.flower.service.impl;

import org.king.framework.service.impl.BaseServiceImpl;
import org.king.project.flower.service.IFlowerCommentService;
import org.king.project.flower.domain.FlowerComment;
import org.king.project.flower.mapper.FlowerCommentMapper;
import org.springframework.stereotype.Service;

/**
 * 花科-评论 服务层实现
 *
 * @author Ykyh
 */
@Service
public class FlowerCommentServiceImpl extends BaseServiceImpl<FlowerCommentMapper, FlowerComment> implements IFlowerCommentService {

}
