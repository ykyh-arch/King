package org.king.project.peotry.service.impl;

import org.king.framework.service.impl.BaseServiceImpl;
import org.king.project.peotry.domain.PeotryCollection;
import org.king.project.peotry.service.IPeotryAuthorService;
import org.king.project.peotry.domain.PeotryAuthor;
import org.king.project.peotry.mapper.PeotryAuthorMapper;
import org.springframework.stereotype.Service;

/**
 * 古诗词-作者 服务层实现
 *
 * @author Ykyh
 */
@Service
public class PeotryAuthorServiceImpl extends BaseServiceImpl<PeotryAuthorMapper, PeotryAuthor> implements IPeotryAuthorService {

    @Override
    public PeotryCollection getAuthorById(Integer authorId) {
        return baseMapper.getAuthorById(authorId);
    }
}
