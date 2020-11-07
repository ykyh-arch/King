package org.king.project.flower.domain;

import com.baomidou.mybatisplus.annotation.TableId;
import io.swagger.annotations.ApiModelProperty;
import org.king.framework.web.domain.BaseEntity;

import lombok.Getter;
import lombok.Setter;

/**
 * 花科-收藏表 sys_flower_collection
 *
 * @author Ykyh
 */
@Setter
@Getter
public class FlowerCollection {

	private static final long serialVersionUID = 1L;

	/**
	 * 主键ID
	 */
	@ApiModelProperty(value = "主键ID")
	@TableId
	private Long collectionId;
	/**
	 * 用户ID
	 */
	@ApiModelProperty(value = "用户ID")
	private Long userId;
	/**
	 * 花朵ID
	 */
	@ApiModelProperty(value = "花朵ID")
	private Long flowerId;

}
