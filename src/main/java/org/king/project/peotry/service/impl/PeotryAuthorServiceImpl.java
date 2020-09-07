package org.king.project.peotry.service.impl;

import com.google.common.collect.Lists;
import org.king.framework.service.impl.BaseServiceImpl;
import org.king.project.peotry.domain.PeotryCollection;
import org.king.project.peotry.service.IPeotryAuthorService;
import org.king.project.peotry.domain.PeotryAuthor;
import org.king.project.peotry.mapper.PeotryAuthorMapper;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

/**
 * 古诗词-作者 服务层实现
 *
 * @author Ykyh
 */
@Service
public class PeotryAuthorServiceImpl extends BaseServiceImpl<PeotryAuthorMapper, PeotryAuthor> implements IPeotryAuthorService {

    @Override
    public PeotryAuthor getAuthorById(Long authorId) {
        PeotryAuthor peotryAuthor = baseMapper.getAuthorById(authorId);
        List<PeotryCollection> collections = peotryAuthor.getCollections().stream().filter(x->{
            return Lists.newArrayList(peotryAuthor.getPeotryIds().split("@#")).contains(x.getPeotryId().toString()) ;
        }).collect(Collectors.toList());
        peotryAuthor.setCollections(collections);
        return peotryAuthor;
    }
}
