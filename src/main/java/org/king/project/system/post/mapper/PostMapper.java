package org.king.project.system.post.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.king.framework.mapper.BaseMapper;
import org.king.project.system.post.domain.Post;

/**
 * 岗位信息 数据层
 *
 * @author King
 */
@Mapper
public interface PostMapper extends BaseMapper<Post> {

    /**
     * 根据用户ID查询岗位
     *
     * @param userId 用户ID
     * @return 岗位列表
     */
    List<Post> selectPostsByUserId(Long userId);

}
