package org.king.project.system.notice.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.king.framework.mapper.BaseMapper;
import org.king.project.system.notice.domain.Notice;

/**
 * 公告 数据层
 *
 * @author Crown
 */
@Mapper
public interface NoticeMapper extends BaseMapper<Notice> {

}