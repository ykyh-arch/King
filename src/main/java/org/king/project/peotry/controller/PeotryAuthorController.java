package org.king.project.peotry.controller;

import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.king.framework.exception.KingException;
import org.king.framework.web.controller.WebController;
import org.king.framework.web.page.TableData;
import org.king.project.peotry.domain.PeotryAuthor;
import org.king.project.peotry.domain.PeotryCollection;
import org.king.project.peotry.service.IPeotryAuthorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 古诗词-作者信息操作处理
 *
 * @author Ykyh
 */
@Controller
@RequestMapping("/peotry/author")
public class PeotryAuthorController extends WebController<PeotryAuthor> {

	@Autowired
	private IPeotryAuthorService authorService;

	/**
     * 查询古诗词-作者列表
     */
	@ApiOperation("诗人列表")
	@PostMapping("/list")
	@ResponseBody
	public TableData<PeotryAuthor> list(PeotryAuthor author) {
		startPage();
		List<PeotryAuthor> list = authorService.list(Wrappers.<PeotryAuthor>lambdaQuery(author));
		return getTableData(list);
	}

	/**
	 * 查询古诗词-获取详细
	 */
	@ApiOperation("获取详细")
	@ApiImplicitParam(name = "authorId", value = "诗人ID", required = true, dataType = "long", paramType = "path")
	@GetMapping("/{authorId}")
	@ResponseBody
	public PeotryCollection getAuthor(@PathVariable Integer authorId) {
		if(authorId==null){
			throw new KingException(HttpServletResponse.SC_BAD_REQUEST, "诗人主键ID必传");
		}
		return authorService.getAuthorById(authorId);
	}

}
