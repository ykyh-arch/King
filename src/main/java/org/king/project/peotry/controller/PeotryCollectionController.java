package org.king.project.peotry.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.king.framework.exception.KingException;
import org.king.framework.web.controller.WebController;
import org.king.framework.web.page.TableData;
import org.king.project.peotry.domain.PeotryCollection;
import org.king.project.peotry.service.IPeotryCollectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 古诗词-诗集信息操作处理
 *
 * @author Ykyh
 */
@Api("古诗词管理")
@Controller
@RequestMapping("/peotry/collection")
public class PeotryCollectionController extends WebController<PeotryCollection> {

	@Autowired
	private IPeotryCollectionService collectionService;

	/**
     * 查询古诗词-诗集列表
     */
	@ApiOperation("诗词列表")
	@PostMapping("/list")
	@ResponseBody
	public TableData<PeotryCollection> list(PeotryCollection collection) {
		startPage();
		List<PeotryCollection> list = collectionService.selectPeotryCollectionList(collection);
		return getTableData(list);
	}

	/**
	 * 查询古诗词-获取详细
	 */
	@ApiOperation("获取详细")
	@ApiImplicitParam(name = "peotryId", value = "古诗ID", required = true, dataType = "long", paramType = "path")
	@GetMapping("/{peotryId}")
	@ResponseBody
	public PeotryCollection getCollection(@PathVariable Long peotryId) {
		if(peotryId==null){
			throw new KingException(HttpServletResponse.SC_BAD_REQUEST, "古诗主键ID必传");
		}
		return collectionService.getCollectionById(peotryId);
	}

	/**
	 * 查询古诗词-古诗统计
	 */
	@ApiOperation("古诗统计")
	@GetMapping("/statistic")
	@ResponseBody
	public List<Object> getCollectionStatistic() {
		return collectionService.getCollectionStatistic();
	}

}
