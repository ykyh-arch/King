package org.king.project.flower.domain;

import com.baomidou.mybatisplus.annotation.TableId;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

/**
 * 花科-信息表 sys_flower
 *
 * @author Ykyh
 */
@Setter
@Getter
public class Flower {
	/**
	 * 花朵ID
	 */
	@ApiModelProperty(value = "主键ID")
	@TableId
	private Long flowerId;
	/**
	 * 花名
	 */
	@ApiModelProperty(value = "花名")
	private String flowerName;
	/**
	 * 缩略图
	 */
	@ApiModelProperty(value = "缩略图")
	private String flowerImg;
	/**
	 * 图册，以@#区分
	 */
	@ApiModelProperty(value = "图册，以@#区分")
	private String flowerImglist;
	/**
	 * 科别（1、花卉；2、多肉；3、灌木；4、药用；5、其他）
	 */
	@ApiModelProperty(value = "科别（1、花卉；2、多肉；3、灌木；4、药用；5、其他）")
	private String type;
	/**
	 * 中文学名
	 */
	@ApiModelProperty(value = "中文学名")
	private String chineseName;
	/**
	 * 别名
	 */
	@ApiModelProperty(value = "别名")
	private String alias;
	/**
	 * 种
	 */
	@ApiModelProperty(value = "种")
	private String seed;
	/**
	 * 界
	 */
	@ApiModelProperty(value = "界")
	private String limits;
	/**
	 * 属
	 */
	@ApiModelProperty(value = "属")
	private String belong;
	/**
	 * 亚种
	 */
	@ApiModelProperty(value = "亚种")
	private String subspecies;
	/**
	 * 分布区域
	 */
	@ApiModelProperty(value = "分布区域")
	private String area;
	/**
	 * 花语
	 */
	@ApiModelProperty(value = "花语")
	private String language;
	/**
	 * 描述
	 */
	@ApiModelProperty(value = "描述")
	private String description;

	/**
	 * 录入时间
	 */
	@ApiModelProperty(value="录入时间")
	private Date createTime;

}
