package org.king.project.flower.controller;

import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.king.framework.exception.KingException;
import org.king.framework.web.controller.WebController;
import org.king.framework.web.page.TableData;
import org.king.project.flower.domain.FlowerNews;
import org.king.project.flower.service.IFlowerNewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 花科-资讯信息操作处理
 *
 * @author Ykyh
 */
@Controller
@RequestMapping("/flower/news")
public class FlowerNewsController extends WebController<FlowerNews> {


	@Autowired
	private IFlowerNewsService newsService;

	/**
     * 查询花科-资讯列表
     */
	@ApiOperation("资讯列表")
	@PostMapping("/list")
	@ResponseBody
	public TableData<FlowerNews> list(FlowerNews news) {
		startPage();
		List<FlowerNews> list = newsService.list(Wrappers.<FlowerNews>lambdaQuery(news));
		return getTableData(list);
	}

	/**
	 * 查询花科-资讯详情
	 */
	@ApiOperation("获取详细")
	@ApiImplicitParam(name = "newsId", value = "主键ID", required = true, dataType = "long", paramType = "path")
	@GetMapping("/{newsId}")
	@ResponseBody
	public FlowerNews getFlowerNews(@PathVariable Long newsId) {
		if(newsId==null){
			throw new KingException(HttpServletResponse.SC_BAD_REQUEST, "主键ID必传");
		}
		return newsService.getById(newsId);
	}

}
