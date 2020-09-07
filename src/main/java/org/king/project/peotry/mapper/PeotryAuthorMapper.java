package org.king.project.peotry.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.king.framework.mapper.BaseMapper;
import org.king.project.peotry.domain.PeotryAuthor;
import org.king.project.peotry.domain.PeotryCollection;

/**
 * 古诗词-作者 数据层
 *
 * @author Ykyh
 */
@Mapper
public interface PeotryAuthorMapper extends BaseMapper<PeotryAuthor> {

    /**
     * 诗人信息
     *
     * @return 诗人信息
     */
    PeotryCollection getAuthorById(Integer authorId);
}