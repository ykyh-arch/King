package org.king.project.system.notice.service;

import java.util.List;

import org.king.framework.service.BaseService;
import org.king.project.system.notice.domain.Notice;

/**
 * 公告 服务层
 *
 * @author Crown
 */
public interface INoticeService extends BaseService<Notice> {

    /**
     * 查询公告列表
     *
     * @param notice 公告信息
     * @return 公告集合
     */
    List<Notice> selectNoticeList(Notice notice);
}