package org.king.project.peotry.service.impl;

import com.google.common.collect.Lists;
import org.king.common.utils.Maps;
import org.king.framework.service.impl.BaseServiceImpl;
import org.king.project.peotry.enums.Dynasty;
import org.king.project.peotry.service.IPeotryCollectionService;
import org.king.project.peotry.domain.PeotryCollection;
import org.king.project.peotry.mapper.PeotryCollectionMapper;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * 古诗词-诗集 服务层实现
 *
 * @author Ykyh
 */
@Service
public class PeotryCollectionServiceImpl extends BaseServiceImpl<PeotryCollectionMapper, PeotryCollection> implements IPeotryCollectionService {

    @Override
    public List<PeotryCollection> selectPeotryCollectionList(PeotryCollection collection) {
        return baseMapper.selectPeotryCollectionList(collection);
    }

    @Override
    public PeotryCollection getCollectionById(Long peotryId) {
        return baseMapper.getCollectionById(peotryId);
    }

    @Override
    public List<Object> getCollectionStatistic() {
        List<Object> result = Dynasty.toList();
        result.stream().forEachOrdered(x->{
            Integer dynasty = (Integer)((Map<String, Object>)x).get("dynasty");
               Integer count = baseMapper.getCollectionCountByDynasty(dynasty);
            ((Map<String, Object>)x).put("peotryNum",count);
        });
        return result;
    }
}
