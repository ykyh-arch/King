package org.king.project.flower.domain;

import com.baomidou.mybatisplus.annotation.TableId;
import io.swagger.annotations.ApiModelProperty;

import lombok.Getter;
import lombok.Setter;
import org.king.common.annotation.IgnoreSwaggerParameter;

import java.util.Date;

/**
 * 花科-评论表 sys_flower_comment
 *
 * @author Ykyh
 */
@Setter
@Getter
public class FlowerComment {

	private static final long serialVersionUID = 1L;

	/**
	 * 主键ID
	 */
	@ApiModelProperty(value = "主键ID")
	@TableId
	private Long commentId;
	/**
	 * 花园ID
	 */
	@ApiModelProperty(value = "花园ID")
	private Long gardenId;
	/**
	 * 用户ID
	 */
	@ApiModelProperty(value = "用户ID")
	private Long userId;
	/**
	 * 内容
	 */
	@ApiModelProperty(value = "内容")
	private String content;
	/**
	 * 发布时间
	 */
	@ApiModelProperty(value="发布时间")
	private Date createTime;
	/**
	 * 用户
	 */
	@IgnoreSwaggerParameter
	private FlowerUser flowerUser;

}
