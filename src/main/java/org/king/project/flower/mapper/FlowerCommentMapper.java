package org.king.project.flower.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.king.framework.mapper.BaseMapper;
import org.king.project.flower.domain.FlowerComment;

/**
 * 花科-评论 数据层
 *
 * @author Ykyh
 */
@Mapper
public interface FlowerCommentMapper extends BaseMapper<FlowerComment> {

}