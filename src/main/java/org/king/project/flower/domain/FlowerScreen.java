package org.king.project.flower.domain;

import com.baomidou.mybatisplus.annotation.TableId;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

/**
 * 花科-屏蔽表 sys_flower_screen
 *
 * @author Ykyh
 */
@Setter
@Getter
public class FlowerScreen {

	private static final long serialVersionUID = 1L;

	/**
	 * 主键ID
	 */
	@ApiModelProperty(value = "主键ID")
	@TableId
	private Long screenId;
	/**
	 * 类型：（1、花园ID；2、评论ID；）；
	 */
	@ApiModelProperty(value = "类型：（1、花园ID；2、评论ID；）")
	private Long type;
	/**
	 * garden_id或comment_id
	 */
	@ApiModelProperty(value = "garden_id或comment_id")
	private Long relationId;
	/**
	 * 用户ID
	 */
	@ApiModelProperty(value = "用户ID")
	private Long userId;

}
