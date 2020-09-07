package org.king.project.peotry.service;

import org.king.framework.service.BaseService;
import org.king.project.peotry.domain.PeotryAuthor;
import org.king.project.peotry.domain.PeotryCollection;

/**
 * 古诗词-作者 服务层
 *
 * @author Ykyh
 */
public interface IPeotryAuthorService extends BaseService<PeotryAuthor> {

    /**
     * 诗人信息
     *
     * @return 诗人信息
     */
    PeotryCollection getAuthorById(Integer authorId);
}
