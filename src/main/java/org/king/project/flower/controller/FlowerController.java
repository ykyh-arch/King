package org.king.project.flower.controller;

import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import io.swagger.annotations.ApiOperation;
import org.king.framework.web.controller.WebController;
import org.king.framework.web.page.TableData;
import org.king.project.flower.domain.Flower;
import org.king.project.flower.service.IFlowerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 花科-信息信息操作处理
 *
 * @author Ykyh
 */
@Controller
@RequestMapping("/flower/flower")
public class FlowerController extends WebController<Flower> {

	@Autowired
	private IFlowerService flowerService;

	/**
     * 查询花科-信息列表
     */
	@PostMapping("/list")
	@ApiOperation("条件列表")
	@ResponseBody
	public TableData<Flower> list(Flower flower) {
		startPage();
		List<Flower> list = flowerService.list(Wrappers.<Flower>lambdaQuery().like(org.king.common.utils.StringUtils.isNotEmpty(flower.getFlowerName()), Flower::getFlowerName, flower.getFlowerName()));
		return getTableData(list);
	}

}
