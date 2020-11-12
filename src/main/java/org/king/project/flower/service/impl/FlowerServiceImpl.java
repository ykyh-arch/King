package org.king.project.flower.service.impl;

import org.apache.shiro.SecurityUtils;
import org.king.framework.exception.KingException;
import org.king.framework.service.impl.BaseServiceImpl;
import org.king.project.flower.domain.Flower;
import org.king.project.flower.mapper.FlowerMapper;
import org.king.project.flower.service.IFlowerService;
import org.king.project.flower.service.IFlowerUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.stream.Collectors;

/**
 * 花科-信息 服务层实现
 *
 * @author Ykyh
 */
@Service
public class FlowerServiceImpl extends BaseServiceImpl<FlowerMapper, Flower> implements IFlowerService {

    @Autowired
    IFlowerUserService flowerUserService;

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

    @Override
    public Map<String,List<Flower>> getMyCollection() {
        String obj = (String) SecurityUtils.getSubject().getPrincipal();
        if(Objects.isNull(obj)){
            throw new KingException(HttpServletResponse.SC_UNAUTHORIZED, "用户未登录");
        }
        Long userId = flowerUserService.selectUserByLoginName(obj).getUserId();
        List<Flower> flowers = baseMapper.getMyCollection(userId);
        Map<String,List<Flower>> result = flowers.stream().collect(Collectors.groupingBy(Flower::getType));
        return result;
    }
}
