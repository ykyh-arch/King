package org.king.project.flower.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.king.framework.mapper.BaseMapper;
import org.king.project.flower.domain.FlowerUser;

/**
 * 花科-用户 数据层
 *
 * @author Ykyh
 */
@Mapper
public interface FlowerUserMapper extends BaseMapper<FlowerUser> {

    /**
     * 通过用户名查询用户
     *
     * @param userName 用户名
     * @return 用户对象信息
     */
    FlowerUser selectUserByLoginName(String userName);
}