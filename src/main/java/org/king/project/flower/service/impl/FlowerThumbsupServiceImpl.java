package org.king.project.flower.service.impl;

import org.king.framework.service.impl.BaseServiceImpl;
import org.king.project.flower.service.IFlowerThumbsupService;
import org.king.project.flower.domain.FlowerThumbsup;
import org.king.project.flower.mapper.FlowerThumbsupMapper;
import org.springframework.stereotype.Service;

/**
 * 花科-点赞 服务层实现
 *
 * @author Ykyh
 */
@Service
public class FlowerThumbsupServiceImpl extends BaseServiceImpl<FlowerThumbsupMapper, FlowerThumbsup> implements IFlowerThumbsupService {

    @Override
    public boolean saveOrDel(FlowerThumbsup thumbsup) {
        FlowerThumbsup temp = this.query().eq(FlowerThumbsup::getUserId, thumbsup.getUserId()).eq(FlowerThumbsup::getGardenId, thumbsup.getGardenId()).getOne();
        if(temp==null){
            this.save(thumbsup);
        }else{
            this.removeById(temp.getThumbsupId());
        }
        return true;
    }
}
