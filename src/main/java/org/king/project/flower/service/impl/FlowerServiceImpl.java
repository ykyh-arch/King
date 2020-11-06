package org.king.project.flower.service.impl;

import org.king.framework.service.impl.BaseServiceImpl;
import org.king.project.flower.domain.Flower;
import org.king.project.flower.mapper.FlowerMapper;
import org.king.project.flower.service.IFlowerService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * 花科-信息 服务层实现
 *
 * @author Ykyh
 */
@Service
public class FlowerServiceImpl extends BaseServiceImpl<FlowerMapper, Flower> implements IFlowerService {

    @Override
    public List<Flower> getByType(Long type) {
        List<Flower> result = new ArrayList<>();
        List<Flower> flowers = query().eq(Flower::getType, type).list();
        flowers.stream().forEach(x->{
            Flower temp =new Flower();
            temp.setFlowerImg(x.getFlowerImg());
            temp.setFlowerId(x.getFlowerId());
            temp.setFlowerName(x.getFlowerName());
            result.add(temp);
        });
        return result;
    }
}
