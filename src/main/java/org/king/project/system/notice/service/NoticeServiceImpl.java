package org.king.project.system.notice.service;

import java.util.List;

import org.king.common.utils.StringUtils;
import org.king.framework.service.impl.BaseServiceImpl;
import org.king.project.system.notice.domain.Notice;
import org.king.project.system.notice.mapper.NoticeMapper;
import org.springframework.stereotype.Service;

/**
 * 公告 服务层实现
 *
 * @author Crown
 */
@Service
public class NoticeServiceImpl extends BaseServiceImpl<NoticeMapper, Notice> implements INoticeService {

    @Override
    public List<Notice> selectNoticeList(Notice notice) {
        return query().like(StringUtils.isNotEmpty(notice.getNoticeTitle()), Notice::getNoticeTitle, notice.getNoticeTitle())
                .eq(StringUtils.isNotEmpty(notice.getNoticeType()), Notice::getNoticeType, notice.getNoticeType())
                .like(StringUtils.isNotEmpty(notice.getCreateBy()), Notice::getCreateBy, notice.getCreateBy())
                .list();
    }

}
