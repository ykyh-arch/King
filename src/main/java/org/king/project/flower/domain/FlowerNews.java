package org.king.project.flower.domain;

import com.baomidou.mybatisplus.annotation.TableId;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

/**
 * 花科-资讯表 sys_flower_news
 *
 * @author Ykyh
 */
@Setter
@Getter
public class FlowerNews {

	private static final long serialVersionUID = 1L;

	/**
	 * 资讯ID
	 */
	@ApiModelProperty(value = "主键ID")
	@TableId
	private Long newsId;
	/**
	 * 标题
	 */
	private String title;
	/**
	 * 标题图
	 */
	private String titleImg;
	/**
	 * 内容图，以@#区分
	 */
	private String contentImglist;
	/**
	 * 内容
	 */
	private String content;

	/**
	 * 发布时间
	 */
	@ApiModelProperty(value="发布时间")
	private Date createTime;

}
