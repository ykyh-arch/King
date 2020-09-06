package org.king.project.peotry.service;

import org.king.framework.service.BaseService;
import org.king.project.peotry.domain.PeotryCollection;

import java.util.List;

/**
 * 古诗词-诗集 服务层
 *
 * @author Ykyh
 */
public interface IPeotryCollectionService extends BaseService<PeotryCollection> {

    /**
     * 查询诗集数据
     *
     * @param collection 古诗信息
     * @return 古诗信息集合
     */
    List<PeotryCollection> selectPeotryCollectionList(PeotryCollection collection);
}
