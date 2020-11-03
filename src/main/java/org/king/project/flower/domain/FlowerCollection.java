package org.king.project.flower.domain;

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
	private Long collectionId;
	/**
	 * 用户ID
	 */
	private Long userId;
	/**
	 * 花朵ID
	 */
	private Long flowerId;

}
