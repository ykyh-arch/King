package org.king.project.flower.domain;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import io.swagger.annotations.ApiModelProperty;
import org.king.common.annotation.IgnoreSwaggerParameter;
import org.king.framework.web.domain.BaseEntity;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;
import java.util.List;

/**
 * 花科-花园表 sys_flower_garden
 *
 * @author Ykyh
 */
@Setter
@Getter
public class FlowerGarden {

	private static final long serialVersionUID = 1L;

	/**
	 * 主键ID
	 */
	@ApiModelProperty(value = "主键ID")
	@TableId
	private Long gardenId;
	/**
	 * 用户ID
	 */
	@ApiModelProperty(value="用户ID")
	private Long userId;
	/**
	 * 标题
	 */
	@ApiModelProperty(value="标题")
	private Long title;
	/**
	 * 内容图，以@#区分
	 */
	@ApiModelProperty(value="内容图，以@#区分")
	private String contentImglist;
	/**
	 * 内容
	 */
	@ApiModelProperty(value="内容")
	private String content;
	/**
	 * 评论数
	 */
	private Long commentCount;
	/**
	 * 点赞数
	 */
	private Long thumbsupCount;

	/**
	 * 用户
	 */
	@IgnoreSwaggerParameter
	private FlowerUser flowerUser;

	@IgnoreSwaggerParameter
	private List<FlowerComment> flowerComments;

	/**
	 * 发布时间
	 */
	@ApiModelProperty(value="发布时间")
	private Date createTime;


}
