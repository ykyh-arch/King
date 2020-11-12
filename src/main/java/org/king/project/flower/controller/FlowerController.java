package org.king.project.flower.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.shiro.SecurityUtils;
import org.king.framework.exception.KingException;
import org.king.framework.web.controller.WebController;
import org.king.framework.web.page.TableData;
import org.king.project.flower.domain.Flower;
import org.king.project.flower.domain.FlowerCollection;
import org.king.project.flower.domain.FlowerUser;
import org.king.project.flower.enums.Collection;
import org.king.project.flower.service.IFlowerCollectionService;
import org.king.project.flower.service.IFlowerService;
import org.king.project.flower.service.IFlowerUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.*;
import java.util.stream.Collectors;

/**
 * 花科-信息信息操作处理
 *
 * @author Ykyh
 */
@Controller
@RequestMapping("/flower/flower")
public class FlowerController extends WebController<Flower> {

	private final static Long LIMIT=4L;

	@Autowired
	private IFlowerService flowerService;

	@Autowired
	private IFlowerUserService flowerUserService;

	@Autowired
	private IFlowerCollectionService flowerCollectionService;

	/**
     * 查询花科-信息列表
     */
	@PostMapping("/list")
	@ApiOperation("首页搜索")
	@ResponseBody
	public TableData<Flower> list(Flower flower) {
		startPage();
		List<Flower> list = flowerService.list(Wrappers.<Flower>lambdaQuery().orderByDesc(Flower::getCreateTime).like(org.king.common.utils.StringUtils.isNotEmpty(flower.getFlowerName()), Flower::getFlowerName, flower.getFlowerName()));
		return getTableData(list);
	}

	/**
	 * 查询花科-信息列表
	 */
	@GetMapping("/imgList")
	@ApiOperation("首页轮播")
	@ResponseBody
	public TableData<Flower> imgList() {
		startPage();
		List<Flower> list = flowerService.list(Wrappers.<Flower>lambdaQuery().orderByDesc(Flower::getCreateTime));
		Collections.shuffle(list);
		List<Flower> temp = list.stream().limit(LIMIT).collect(Collectors.toList());
		List<Flower> result = new ArrayList<>();
		temp.stream().forEach(x->{
			Flower tempFlower = new Flower();
			tempFlower.setFlowerImg(x.getFlowerImg());
			tempFlower.setFlowerId(x.getFlowerId());
			tempFlower.setFlowerName(x.getFlowerName());
			result.add(tempFlower);
		});
		return getTableData(result);
	}

	/**
	 * 查询花科-获取详情
	 */
	@ApiOperation("获取详细")
	@ApiImplicitParam(name = "flowerId", value = "主键ID", required = true, dataType = "long", paramType = "path")
	@GetMapping("/{flowerId}")
	@ResponseBody
	public Map<String, Object> getFlower(@PathVariable Long flowerId) throws Exception {
		if(flowerId==null){
			throw new KingException(HttpServletResponse.SC_BAD_REQUEST, "主键ID必传");
		}
		Flower flower = flowerService.getById(flowerId);
		Long loginUserId = getCurrentLoginUser();
		Long isCollection=null;
		if(loginUserId ==null){
			isCollection = Collection.UNKNOWN.getCode().longValue();
		}else{
			FlowerCollection temp = flowerCollectionService.query().eq(FlowerCollection::getUserId, loginUserId).eq(FlowerCollection::getFlowerId, flower.getFlowerId()).getOne();
			if(temp==null) {
				isCollection = Collection.NOCOLLECTION.getCode().longValue();
			}else{
				isCollection = Collection.COLLECTIONED.getCode().longValue();
			}
		}
		Map<String,Object> map = JSONObject.parseObject(JSON.toJSONString(flower));
		map.put("isCollection",isCollection);
		return map;
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

	/**
	 * 查询花科-获取分类
	 */
	@ApiOperation("分类详细")
	@ApiImplicitParam(name = "type", value = "分类", required = true, dataType = "long", paramType = "path")
	@GetMapping("/type/{type}")
	@ResponseBody
	public List<Flower> getFlowerLists(@PathVariable Long type) {
		if(type==null){
			throw new KingException(HttpServletResponse.SC_BAD_REQUEST, "参数必传");
		}
		return flowerService.getByType(type);
	}

	/**
	 * 我的收藏
	 */
	@GetMapping("/my")
	@ApiOperation("我的收藏")
	@ResponseBody
	public Map<String,List<Flower>> my() {
		Map<String,List<Flower>> list = flowerService.getMyCollection();
		return list;
	}

}
