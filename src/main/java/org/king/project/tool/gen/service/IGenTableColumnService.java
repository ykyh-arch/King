package org.king.project.tool.gen.service;

import java.util.List;

import org.king.framework.service.BaseService;
import org.king.project.tool.gen.domain.GenTableColumn;

/**
 * 业务字段 服务层
 *
 * @author King
 */
public interface IGenTableColumnService extends BaseService<GenTableColumn> {

    /**
     * 查询业务字段列表
     *
     * @param tableId
     * @return 业务字段集合
     */
    List<GenTableColumn> selectGenTableColumnListByTableId(Long tableId);

    /**
     * 删除业务字段信息
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    boolean deleteGenTableColumnByIds(String ids);

    /**
     * 根据表名称查询列信息
     *
     * @param tableName 表名称
     * @return 列信息
     */
    List<GenTableColumn> selectDbTableColumnsByName(String tableName);
}
