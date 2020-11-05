package org.king.project.flower.domain;

import com.baomidou.mybatisplus.annotation.TableId;
import io.swagger.annotations.ApiModelProperty;
import org.king.framework.web.domain.BaseEntity;

import lombok.Getter;
import lombok.Setter;

/**
 * 花科-点赞表 sys_flower_thumbsup
 *
 * @author Ykyh
 */
@Setter
@Getter
public class FlowerThumbsup {

	private static final long serialVersionUID = 1L;

	/**
	 * 主键ID
	 */
	@ApiModelProperty(value = "主键ID")
	@TableId
	private Long thumbsupId;
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

}
