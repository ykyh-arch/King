package org.king.project.peotry.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.king.framework.mapper.BaseMapper;
import org.king.project.peotry.domain.PeotryUser;

/**
 * 古诗词-用户信息 数据层
 *
 * @author Ykyh
 */
@Mapper
public interface PeotryUserMapper extends BaseMapper<PeotryUser> {

    /**
     * 通过用户名查询用户
     *
     * @param userName 用户名
     * @return 用户对象信息
     */
    PeotryUser selectUserByLoginName(String userName);

}