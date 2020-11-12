package org.king.project.flower.controller;

import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.SecurityUtils;
import org.king.common.annotation.Log;
import org.king.common.enums.BusinessType;
import org.king.framework.exception.KingException;
import org.king.framework.web.controller.WebController;
import org.king.framework.web.page.TableData;
import org.king.project.flower.domain.FlowerCollection;
import org.king.project.flower.domain.FlowerUser;
import org.king.project.flower.service.IFlowerCollectionService;
import org.king.project.flower.service.IFlowerUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Objects;

/**
 * 花科-收藏信息操作处理
 *
 * @author Ykyh
 */
@Controller
@RequestMapping("/flower/collection")
public class FlowerCollectionController extends WebController<FlowerCollection> {

	@Autowired
	private IFlowerCollectionService collectionService;

	@Autowired
	private IFlowerUserService flowerUserService;

	/**
     * 查询花科-收藏列表
     */
	@PostMapping("/list")
	@ResponseBody
	public TableData<FlowerCollection> list(FlowerCollection collection) {
		startPage();
		List<FlowerCollection> list = collectionService.list(Wrappers.<FlowerCollection>lambdaQuery(collection));
		return getTableData(list);
	}


	/**
     * 新增保存花科-收藏
     */
	@ApiOperation("花科收藏")
	@Log(title = "花科收藏", businessType = BusinessType.INSERT)
	@PostMapping("/addOrDel")
	@ResponseBody
	public void addOrDel(@Validated FlowerCollection collection) {
		String obj = (String) SecurityUtils.getSubject().getPrincipal();
		if(Objects.isNull(obj)){
			throw new KingException(HttpServletResponse.SC_UNAUTHORIZED, "用户未登录");
		}
		if(collection.getFlowerId()==null){
			throw new KingException(HttpServletResponse.SC_BAD_REQUEST, "flowerId参数必传");
		}
		long loginUserId=flowerUserService.query().eq(FlowerUser::getLoginName, obj).getOne().getUserId();
		collection.setUserId(loginUserId);
		collectionService.saveOrDel(collection);
	}

}
