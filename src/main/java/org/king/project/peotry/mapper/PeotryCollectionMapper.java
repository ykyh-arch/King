package org.king.project.peotry.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.king.framework.mapper.BaseMapper;
import org.king.project.peotry.domain.PeotryCollection;

import java.util.List;

/**
 * 古诗词-诗集 数据层
 *
 * @author Ykyh
 */
@Mapper
public interface PeotryCollectionMapper extends BaseMapper<PeotryCollection> {

    /**
     * 查询古诗管理数据
     *
     * @param collection 古诗信息
     * @return 古诗信息集合
     */
    List<PeotryCollection> selectPeotryCollectionList(PeotryCollection collection);
}