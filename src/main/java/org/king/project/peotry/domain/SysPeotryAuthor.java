package org.king.project.peotry.domain;

import io.swagger.annotations.ApiModelProperty;
import org.king.framework.web.domain.BaseEntity;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

/**
 * 古诗词-作者表 sys_peotry_author
 *
 * @author Ykyh
 */
@Setter
@Getter
public class SysPeotryAuthor {

	private static final long serialVersionUID = 1L;

	/**
	 * 作者ID
	 */
	private Long authorId;
	/**
	 * 名称
	 */
	private String authorName;
	/**
	 * 简介
	 */
	private String introduction;
	/**
	 * 代表作（@#区分）
	 */
	private String peotryIds;

	/**
	 * 创建时间
	 */
	@ApiModelProperty(hidden=true,value="创建时间")
	private Date createTime;

}
