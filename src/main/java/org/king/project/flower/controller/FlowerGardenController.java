package org.king.project.flower.controller;

import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.king.framework.exception.KingException;
import org.king.framework.web.controller.WebController;
import org.king.framework.web.page.TableData;
import org.king.project.flower.domain.FlowerGarden;
import org.king.project.flower.service.IFlowerGardenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 花科-花园信息操作处理
 *
 * @author Ykyh
 */
@Controller
@RequestMapping("/flower/garden")
public class FlowerGardenController extends WebController<FlowerGarden> {


	@Autowired
	private IFlowerGardenService gardenService;

	/**
     * 查询花科-花园列表
     */
	@ApiOperation("花园列表")
	//@PostMapping("/list")
	@RequestMapping("/list")
	@ResponseBody
	public TableData<FlowerGarden> list(FlowerGarden garden) {
		startPage();
		List<FlowerGarden> list = gardenService.selectFlowerGardenList(garden);
		//评论数、是否点赞、用户信息：头像、昵称
		return getTableData(list);
	}

	/**
	 * 查询花科-花园详情
	 */
	@ApiOperation("获取详细")
	@ApiImplicitParam(name = "gardenId", value = "主键ID", required = true, dataType = "long", paramType = "path")
	@GetMapping("/{gardenId}")
	@ResponseBody
	public FlowerGarden getGarden(@PathVariable Long gardenId) {
		if(gardenId==null){
			throw new KingException(HttpServletResponse.SC_BAD_REQUEST, "主键ID必传");
		}
		return gardenService.getGardenById(gardenId+"");
	}



}
