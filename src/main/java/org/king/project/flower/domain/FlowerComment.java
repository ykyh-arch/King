package org.king.project.flower.domain;

import org.king.framework.web.domain.BaseEntity;

import lombok.Getter;
import lombok.Setter;

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
	private Long commentId;
	/**
	 * 花园ID
	 */
	private Long gardenId;
	/**
	 * 用户ID
	 */
	private Long userId;
	/**
	 * 内容
	 */
	private String content;

}
