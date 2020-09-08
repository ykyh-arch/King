package org.king.project.peotry.domain;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;
import org.king.common.annotation.IgnoreSwaggerParameter;
import org.king.common.utils.StringUtils;
import org.king.project.peotry.enums.Dynasty;

import javax.validation.constraints.NotBlank;
import java.util.Date;
import java.util.List;

/**
 * 古诗词-作者表 sys_peotry_author
 *
 * @author Ykyh
 */
@Setter
@Getter
@Slf4j
public class PeotryAuthor {

	private static final long serialVersionUID = 1L;

	/**
	 * 作者ID
	 */
	@TableId
	@ApiModelProperty(value = "作者ID")
	private Long authorId;
	/**
	 * 名称
	 */
	@ApiModelProperty(value = "名称")
	private String authorName;
	/**
	 * 简介
	 */
	@ApiModelProperty(value = "简介")
	private String introduction;
	/**
	 * 代表作（@#区分）
	 */
	@ApiModelProperty(value = "代表作（@#区分）")
	private String peotryIds;

	/**
	 * 创建时间
	 */
	@ApiModelProperty(hidden=true,value="创建时间")
	private Date createTime;

	/**
	 * 朝代
	 */
	@ApiModelProperty(value="朝代")
	@NotBlank(message = "朝代不能为空")
	private Integer dynasty;
	@TableField(exist = false)
	private String dynastyName;
	@TableField(exist = false)
//	@ApiParam(hidden=true)
//	@JsonIgnore
	@IgnoreSwaggerParameter
	private List<PeotryCollection> collections;

	public void setDynasty(Integer dynasty) {
		this.dynasty = dynasty;
		setDynastyName();
	}

	public void setDynastyName(){
		if(this.dynasty !=null){
			if(Dynasty.PREQIN.getCode()==this.dynasty)
				this.dynastyName = Dynasty.PREQIN.getInfo();
			if(Dynasty.Han.getCode()==this.dynasty)
				this.dynastyName = Dynasty.Han.getInfo();
			if(Dynasty.WEIJIN.getCode()==this.dynasty)
				this.dynastyName = Dynasty.WEIJIN.getInfo();
			if(Dynasty.SOUTHERNANDNORTHERN.getCode()==this.dynasty)
				this.dynastyName = Dynasty.SOUTHERNANDNORTHERN.getInfo();
			if(Dynasty.SUI.getCode()==this.dynasty)
				this.dynastyName = Dynasty.SUI.getInfo();
			if(Dynasty.TANG.getCode()==this.dynasty)
				this.dynastyName = Dynasty.TANG.getInfo();
			if(Dynasty.SONG.getCode()==this.dynasty)
				this.dynastyName = Dynasty.SONG.getInfo();
			if(Dynasty.YUAN.getCode()==this.dynasty)
				this.dynastyName = Dynasty.YUAN.getInfo();
			if(Dynasty.MING.getCode()==this.dynasty)
				this.dynastyName = Dynasty.MING.getInfo();
			if(Dynasty.QING.getCode()==this.dynasty)
				this.dynastyName = Dynasty.QING.getInfo();
		}
	}

	public void setIntroduction(String introduction) {
		if(StringUtils.isNotEmpty(introduction)){
			this.introduction = StringUtils.removeHTMLTag(introduction);
		}else{
			this.introduction = introduction;
		}
	}
}
