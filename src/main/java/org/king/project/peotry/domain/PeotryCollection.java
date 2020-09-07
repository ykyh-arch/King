package org.king.project.peotry.domain;

import com.baomidou.mybatisplus.annotation.TableId;
import com.fasterxml.jackson.annotation.JsonIgnore;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import org.king.common.annotation.IgnoreSwaggerParameter;
import org.king.common.utils.StringUtils;

import javax.validation.constraints.NotBlank;
import java.util.Date;

/**
 * 古诗词-诗集表 peotry_collection
 *
 * @author Ykyh
 */
@Setter
@Getter
public class PeotryCollection {

	private static final long serialVersionUID = 1L;

	/**
	 * 古诗ID
	 */
	@ApiModelProperty(value = "古诗ID")
	@TableId
	private Long peotryId;
	/**
	 * 名称
	 */
	@ApiModelProperty(value="名称")
	@NotBlank(message = "名称不能为空")
	private String peotryName;
	/**
	 * 作者ID
	 */
	@ApiModelProperty(value="作者ID")
	private Long authorId;
	/**
	 * 原文
	 */
	@ApiModelProperty(value="原文")
	@NotBlank(message = "原文不能为空")
	private String originalContent;
	/**
	 * 译文
	 */
	@ApiModelProperty(value="译文")
	private String translationContent;
	/**
	 * 排序
	 */
	@ApiModelProperty(value="排序")
	private Long rank;
	/**
	 * 发音
	 */
	@ApiModelProperty(hidden=true,value="发音")
	private String pronunciation;
	/**
	 * 创建时间
	 */
	@ApiModelProperty(hidden=true,value="创建时间")
	private Date createTime;
	/**
	 * 作者
	 */
	@IgnoreSwaggerParameter
	private PeotryAuthor sysPeotryAuthor;
	private Integer dynasty;

	public void setOriginalContent(String originalContent) {
		if(StringUtils.isNotEmpty(originalContent)){
			this.originalContent = StringUtils.removeHTMLTag(originalContent);
		}else{
			this.originalContent = originalContent;
		}
	}

	public void setTranslationContent(String translationContent) {
		if(StringUtils.isNotEmpty(translationContent)){
			this.translationContent = StringUtils.removeHTMLTag(translationContent);
		}else{
			this.translationContent = translationContent;
		}
	}
}
