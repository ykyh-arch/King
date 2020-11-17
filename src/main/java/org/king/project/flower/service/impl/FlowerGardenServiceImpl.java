package org.king.project.flower.service.impl;

import org.apache.shiro.SecurityUtils;
import org.king.framework.service.impl.BaseServiceImpl;
import org.king.project.flower.domain.*;
import org.king.project.flower.enums.Thumbsup;
import org.king.project.flower.mapper.FlowerGardenMapper;
import org.king.project.flower.service.IFlowerGardenService;
import org.king.project.flower.service.IFlowerScreenService;
import org.king.project.flower.service.IFlowerThumbsupService;
import org.king.project.flower.service.IFlowerUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

/**
 * 花科-花园 服务层实现
 *
 * @author Ykyh
 */
@Service
public class FlowerGardenServiceImpl extends BaseServiceImpl<FlowerGardenMapper, FlowerGarden> implements IFlowerGardenService {

    @Autowired
    private IFlowerThumbsupService flowerThumbsupService;

    @Autowired
    private IFlowerUserService flowerUserService;

    @Autowired
    private IFlowerScreenService flowerScreenService;

    @Override
    public List<FlowerGarden> selectFlowerGardenList(FlowerGarden garden) {
        Long loginUserId=getCurrentLoginUser();
        List<FlowerGarden>  flowerGardenList = baseMapper.selectFlowerGardenList(garden);
        Long finalUserId = loginUserId;
        List<Long>  gardenIdList =new ArrayList<>();
        flowerGardenList.stream().forEach(item ->{
            if(loginUserId==null){
                item.setIsThumbsup(Thumbsup.UNKNOWN.getCode().longValue());
            }else{
                FlowerThumbsup temp = flowerThumbsupService.query().eq(FlowerThumbsup::getUserId, finalUserId).eq(FlowerThumbsup::getGardenId, item.getGardenId()).getOne();
                if(temp==null) {
                    item.setIsThumbsup(Thumbsup.NOTHUMBSUP.getCode().longValue());
                }else{
                    item.setIsThumbsup(Thumbsup.THUMBSUPED.getCode().longValue());
                }
                //过滤屏蔽花园
                FlowerScreen screen = flowerScreenService.query().eq(FlowerScreen::getUserId, finalUserId)
                        .eq(FlowerScreen::getRelationId, item.getGardenId())
                        .eq(FlowerScreen::getType, 1).getOne();
                if(screen !=null){
                    gardenIdList.add(screen.getRelationId());
                }
            }
        });
        for (Long gardenId : gardenIdList){
            flowerGardenList = flowerGardenList.stream().filter(x -> x.getGardenId() != gardenId).collect(Collectors.toList());
        }
        return flowerGardenList;
    }

    private Long getCurrentLoginUser(){
        //检查是否登录
        String obj = (String) SecurityUtils.getSubject().getPrincipal();
        Long loginUserId=null;
        if(!Objects.isNull(obj)){
            loginUserId=flowerUserService.query().eq(FlowerUser::getLoginName, obj).getOne().getUserId();
        }
        return loginUserId;
    }

    @Override
    public FlowerGarden getGardenById(String gardenId) {
        Long loginUserId=getCurrentLoginUser();
        FlowerGarden flowerGarden = baseMapper.getGardenById(gardenId);
        if(loginUserId==null){
            flowerGarden.setIsThumbsup(Thumbsup.UNKNOWN.getCode().longValue());
        }else{
            FlowerThumbsup temp = flowerThumbsupService.query().eq(FlowerThumbsup::getUserId, loginUserId).eq(FlowerThumbsup::getGardenId, flowerGarden.getGardenId()).getOne();
            if(temp==null) {
                flowerGarden.setIsThumbsup(Thumbsup.NOTHUMBSUP.getCode().longValue());
            }else{
                flowerGarden.setIsThumbsup(Thumbsup.THUMBSUPED.getCode().longValue());
            }
            //过滤屏蔽评论，评论数-1
            List<Long>  commentIdList =new ArrayList<>();
            for (FlowerComment flowerComment : flowerGarden.getFlowerComments()){
                FlowerScreen screen = flowerScreenService.query().eq(FlowerScreen::getUserId, loginUserId)
                        .eq(FlowerScreen::getRelationId, flowerComment.getCommentId())
                        .eq(FlowerScreen::getType, 2).getOne();
                if(screen !=null){
                    commentIdList.add(screen.getRelationId());
                    flowerGarden.setCommentCount(flowerGarden.getCommentCount()-1) ;
                }
            }
            for (Long commentId : commentIdList){
                flowerGarden.setFlowerComments(flowerGarden.getFlowerComments().stream().filter(x -> x.getCommentId() != commentId).collect(Collectors.toList()));
            }
        }
        return flowerGarden;
    }
}
