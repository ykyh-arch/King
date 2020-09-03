package org.king.project.peotry.domain;

import org.king.framework.web.domain.BaseEntity;

import lombok.Getter;
import lombok.Setter;

/**
 * 古诗词-诗集表 peotry_collection
 *
 * @author Ykyh
 */
@Setter
@Getter
public class PeotryCollection extends BaseEntity {

	private static final long serialVersionUID = 1L;

	/**
	 * 古诗ID
	 */
	private Long peotryId;
	/**
	 * 名称
	 */
	private String peotryName;
	/**
	 * 作者
	 */
	private String author;
	/**
	 * 朝代
	 */
	private String dynasty;
	/**
	 * 原文
	 */
	private String originalContent;
	/**
	 * 译文
	 */
	private String translationContent;
	/**
	 * 排序
	 */
	private Long rank;
	/**
	 * 发音
	 */
	private String pronunciation;

}
