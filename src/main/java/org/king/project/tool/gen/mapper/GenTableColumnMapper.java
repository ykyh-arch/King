package org.king.project.tool.gen.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.king.framework.mapper.BaseMapper;
import org.king.project.tool.gen.domain.GenTableColumn;

/**
 * 业务字段 数据层
 *
 * @author King
 */
@Mapper
public interface GenTableColumnMapper extends BaseMapper<GenTableColumn> {

    /**
     * 根据表名称查询列信息
     *
     * @param tableName 表名称
     * @return 列信息
     */
    List<GenTableColumn> selectDbTableColumnsByName(String tableName);

}