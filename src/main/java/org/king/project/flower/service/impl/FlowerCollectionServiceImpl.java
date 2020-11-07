package org.king.project.flower.service.impl;

import org.apache.shiro.SecurityUtils;
import org.king.framework.exception.KingException;
import org.king.framework.service.impl.BaseServiceImpl;
import org.king.project.flower.domain.FlowerThumbsup;
import org.king.project.flower.domain.FlowerUser;
import org.king.project.flower.service.IFlowerCollectionService;
import org.king.project.flower.domain.FlowerCollection;
import org.king.project.flower.mapper.FlowerCollectionMapper;
import org.king.project.flower.service.IFlowerUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Objects;

/**
 * 花科-收藏 服务层实现
 *
 * @author Ykyh
 */
@Service
public class FlowerCollectionServiceImpl extends BaseServiceImpl<FlowerCollectionMapper, FlowerCollection> implements IFlowerCollectionService {

    @Override
    public boolean saveOrDel(FlowerCollection collection) {
        FlowerCollection temp = this.query().eq(FlowerCollection::getUserId, collection.getUserId()).eq(FlowerCollection::getFlowerId, collection.getFlowerId()).getOne();
        if(temp==null){
            this.save(collection);
        }else{
            this.removeById(temp.getCollectionId());
        }
        return true;
    }

}
