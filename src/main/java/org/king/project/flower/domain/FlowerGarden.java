package org.king.project.flower.domain;

import org.king.framework.web.domain.BaseEntity;

import lombok.Getter;
import lombok.Setter;

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
	private Long gardenId;
	/**
	 * 用户ID
	 */
	private Long userId;
	/**
	 * 标题
	 */
	private Long title;
	/**
	 * 内容图，以@#区分
	 */
	private String contentImglist;
	/**
	 * 内容
	 */
	private String content;

}
