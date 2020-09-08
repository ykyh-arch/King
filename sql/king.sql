/*
 Navicat Premium Data Transfer

 Source Server         : 120.27.149.128
 Source Server Type    : MySQL
 Source Server Version : 50610
 Source Host           : 120.27.149.128:3306
 Source Schema         : king

 Target Server Type    : MySQL
 Target Server Version : 50610
 File Encoding         : 65001

 Date: 08/09/2020 18:35:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'sys_peotry_author', '古诗词-作者表', 'SysPeotryAuthor', 'crud', 'org.king.project.peotry', 'peotry', 'author', '古诗词-作者', 'Ykyh', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'crown', '2020-09-06 12:09:00', 'crown', '2020-09-06 12:10:34', '');

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '=' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, '1', 'author_id', '作者ID', 'bigint(20)', 'Long', 'authorId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'crown', '2020-09-06 12:09:01', 'crown', '2020-09-06 12:10:34');
INSERT INTO `gen_table_column` VALUES (2, '1', 'author_name', '名称', 'varchar(30)', 'String', 'authorName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'crown', '2020-09-06 12:09:01', 'crown', '2020-09-06 12:10:34');
INSERT INTO `gen_table_column` VALUES (3, '1', 'introduction', '简介', 'varchar(5000)', 'String', 'introduction', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 3, 'crown', '2020-09-06 12:09:01', 'crown', '2020-09-06 12:10:34');
INSERT INTO `gen_table_column` VALUES (4, '1', 'peotry_ids', '代表作（@#区分）', 'varchar(50)', 'String', 'peotryIds', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'crown', '2020-09-06 12:09:01', 'crown', '2020-09-06 12:10:34');
INSERT INTO `gen_table_column` VALUES (5, '1', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 5, 'crown', '2020-09-06 12:09:01', 'crown', '2020-09-06 12:10:34');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '参数配置表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-random', 'Y', 'king', '2018-03-16 11:33:00', NULL, '2019-07-23 17:35:13', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow、随机 skin-random');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '初始化密码 123456');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `deleted` bit(1) NULL DEFAULT NULL COMMENT '删除标志（0代表存在 1代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '部门表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', 'king科技', 0, 'king', '15888888888', 'king@qq.com', '0', b'0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, 'king', '15888888888', 'king@qq.com', '0', b'0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, 'king', '15888888888', 'king@qq.com', '0', b'0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, 'king', '15888888888', 'king@qq.com', '0', b'0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, 'king', '15888888888', 'king@qq.com', '0', b'0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, 'king', '15888888888', 'king@qq.com', '0', b'0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, 'king', '15888888888', 'king@qq.com', '0', b'0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, 'king', '15888888888', 'king@qq.com', '0', b'0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, 'king', '15888888888', 'king@qq.com', '0', b'0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, 'king', '15888888888', 'king@qq.com', '0', b'0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '字典数据表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', 'false', 'sys_job_paused', '', 'primary', 'Y', '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', 'true', 'sys_job_paused', '', 'danger', 'N', '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES (11, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES (12, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES (13, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES (14, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (15, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES (16, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES (17, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES (18, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES (19, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES (20, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES (21, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES (22, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES (23, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES (24, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES (25, 1, '成功', '1', 'sys_common_status', '', 'primary', 'N', '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (26, 2, '失败', '0', 'sys_common_status', '', 'danger', 'N', '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '字典类型表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '系统是否', 'sys_yes_no', '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (6, '通知类型', 'sys_notice_type', '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知状态', 'sys_notice_status', '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (8, '操作类型', 'sys_oper_type', '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (9, '系统状态', 'sys_common_status', '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '登录状态列表');

-- ----------------------------
-- Table structure for sys_exce_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_exce_log`;
CREATE TABLE `sys_exce_log`  (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '请求路径',
  `oper_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '当前操作人',
  `action_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '-' COMMENT '控制器方法',
  `run_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '接口运行时间 单位:ms',
  `ip_addr` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'IP地址',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '日志详情',
  `create_time` datetime(0) NOT NULL COMMENT '异常时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 190 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '异常日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_exce_log
-- ----------------------------
INSERT INTO `sys_exce_log` VALUES (1, '/King/login', NULL, 'org.king.project.system.user.controller.LoginController.ajaxLogin()', '54ms', '内网IP', '{\"actionMethod\":\"org.king.project.system.user.controller.LoginController.ajaxLogin()\",\"ip\":\"127.0.0.1\",\"method\":\"POST\",\"parameterMap\":{\"password\":[\"crown\"],\"username\":[\"crown\"]},\"result\":{\"error\":\"MSG_EXCEPTION\",\"exception\":\"org.apache.shiro.authc.AuthenticationException: Authentication failed for token submission [org.apache.shiro.authc.UsernamePasswordToken - crown, rememberMe=true].  Possible unexpected error? (Typical or expected login exceptions should extend from AuthenticationException).\",\"msg\":\"用户名或密码错误\",\"status\":400,\"time\":\"2020-09-03T23:05:36.414\"},\"runTime\":\"54ms\",\"url\":\"/King/login\"}', '2020-09-03 23:05:36');
INSERT INTO `sys_exce_log` VALUES (2, '/King/login', NULL, 'org.king.project.system.user.controller.LoginController.ajaxLogin()', '56ms', '内网IP', '{\"actionMethod\":\"org.king.project.system.user.controller.LoginController.ajaxLogin()\",\"ip\":\"127.0.0.1\",\"method\":\"POST\",\"parameterMap\":{\"password\":[\"crown\"],\"username\":[\"crown\"]},\"result\":{\"error\":\"MSG_EXCEPTION\",\"exception\":\"org.apache.shiro.authc.AuthenticationException: Authentication failed for token submission [org.apache.shiro.authc.UsernamePasswordToken - crown, rememberMe=true].  Possible unexpected error? (Typical or expected login exceptions should extend from AuthenticationException).\",\"msg\":\"用户名或密码错误\",\"status\":400,\"time\":\"2020-09-03T23:05:41.712\"},\"runTime\":\"56ms\",\"url\":\"/King/login\"}', '2020-09-03 23:05:42');
INSERT INTO `sys_exce_log` VALUES (3, '/King/login', NULL, 'org.king.project.system.user.controller.LoginController.ajaxLogin()', '39ms', '内网IP', '{\"actionMethod\":\"org.king.project.system.user.controller.LoginController.ajaxLogin()\",\"ip\":\"127.0.0.1\",\"method\":\"POST\",\"parameterMap\":{\"password\":[\"crown\"],\"username\":[\"crown\"]},\"result\":{\"error\":\"MSG_EXCEPTION\",\"exception\":\"org.apache.shiro.authc.AuthenticationException: Authentication failed for token submission [org.apache.shiro.authc.UsernamePasswordToken - crown, rememberMe=true].  Possible unexpected error? (Typical or expected login exceptions should extend from AuthenticationException).\",\"msg\":\"用户名或密码错误\",\"status\":400,\"time\":\"2020-09-03T23:05:49.404\"},\"runTime\":\"39ms\",\"url\":\"/King/login\"}', '2020-09-03 23:05:49');
INSERT INTO `sys_exce_log` VALUES (4, '/King/login', NULL, 'org.king.project.system.user.controller.LoginController.ajaxLogin()', '45ms', '内网IP', '{\"actionMethod\":\"org.king.project.system.user.controller.LoginController.ajaxLogin()\",\"ip\":\"127.0.0.1\",\"method\":\"POST\",\"parameterMap\":{\"password\":[\"crown\"],\"username\":[\"crown\"]},\"result\":{\"error\":\"MSG_EXCEPTION\",\"exception\":\"org.apache.shiro.authc.AuthenticationException: Authentication failed for token submission [org.apache.shiro.authc.UsernamePasswordToken - crown, rememberMe=true].  Possible unexpected error? (Typical or expected login exceptions should extend from AuthenticationException).\",\"msg\":\"用户名或密码错误\",\"status\":400,\"time\":\"2020-09-03T23:07:19.176\"},\"runTime\":\"45ms\",\"url\":\"/King/login\"}', '2020-09-03 23:07:19');
INSERT INTO `sys_exce_log` VALUES (5, '/King/login', NULL, 'org.king.project.system.user.controller.LoginController.ajaxLogin()', '53ms', '内网IP', '{\"actionMethod\":\"org.king.project.system.user.controller.LoginController.ajaxLogin()\",\"ip\":\"127.0.0.1\",\"method\":\"POST\",\"parameterMap\":{\"password\":[\"crown\"],\"username\":[\"Crown\"]},\"result\":{\"error\":\"MSG_EXCEPTION\",\"exception\":\"org.apache.shiro.authc.AuthenticationException: Authentication failed for token submission [org.apache.shiro.authc.UsernamePasswordToken - Crown, rememberMe=true].  Possible unexpected error? (Typical or expected login exceptions should extend from AuthenticationException).\",\"msg\":\"用户名或密码错误\",\"status\":400,\"time\":\"2020-09-03T23:08:17.416\"},\"runTime\":\"53ms\",\"url\":\"/King/login\"}', '2020-09-03 23:08:17');
INSERT INTO `sys_exce_log` VALUES (6, '/King/login', NULL, 'org.king.project.system.user.controller.LoginController.ajaxLogin()', '41ms', '内网IP', '{\"actionMethod\":\"org.king.project.system.user.controller.LoginController.ajaxLogin()\",\"ip\":\"127.0.0.1\",\"method\":\"POST\",\"parameterMap\":{\"password\":[\"admin\"],\"username\":[\"admin\"]},\"result\":{\"error\":\"MSG_EXCEPTION\",\"exception\":\"org.apache.shiro.authc.AuthenticationException: Authentication failed for token submission [org.apache.shiro.authc.UsernamePasswordToken - admin, rememberMe=true].  Possible unexpected error? (Typical or expected login exceptions should extend from AuthenticationException).\",\"msg\":\"密码输入错误1次\",\"status\":400,\"time\":\"2020-09-03T23:08:38.662\"},\"runTime\":\"41ms\",\"url\":\"/King/login\"}', '2020-09-03 23:08:39');
INSERT INTO `sys_exce_log` VALUES (7, '/King/login', NULL, 'org.king.project.system.user.controller.LoginController.ajaxLogin()', '53ms', '内网IP', '{\"actionMethod\":\"org.king.project.system.user.controller.LoginController.ajaxLogin()\",\"ip\":\"127.0.0.1\",\"method\":\"POST\",\"parameterMap\":{\"password\":[\"admin\"],\"username\":[\"admin\"]},\"result\":{\"error\":\"MSG_EXCEPTION\",\"exception\":\"org.apache.shiro.authc.AuthenticationException: Authentication failed for token submission [org.apache.shiro.authc.UsernamePasswordToken - admin, rememberMe=true].  Possible unexpected error? (Typical or expected login exceptions should extend from AuthenticationException).\",\"msg\":\"密码输入错误2次\",\"status\":400,\"time\":\"2020-09-03T23:08:45.050\"},\"runTime\":\"53ms\",\"url\":\"/King/login\"}', '2020-09-03 23:08:45');
INSERT INTO `sys_exce_log` VALUES (8, '/King/login', NULL, 'org.king.project.system.user.controller.LoginController.ajaxLogin()', '112739ms', '内网IP', '{\"actionMethod\":\"org.king.project.system.user.controller.LoginController.ajaxLogin()\",\"ip\":\"127.0.0.1\",\"method\":\"POST\",\"parameterMap\":{\"password\":[\"crown\"],\"username\":[\"crown\"]},\"result\":{\"error\":\"MSG_EXCEPTION\",\"exception\":\"org.apache.shiro.authc.AuthenticationException: Authentication failed for token submission [org.apache.shiro.authc.UsernamePasswordToken - crown, rememberMe=true].  Possible unexpected error? (Typical or expected login exceptions should extend from AuthenticationException).\",\"msg\":\"用户名或密码错误\",\"status\":400,\"time\":\"2020-09-03T23:11:44.585\"},\"runTime\":\"112739ms\",\"url\":\"/King/login\"}', '2020-09-03 23:12:00');
INSERT INTO `sys_exce_log` VALUES (9, '/King/peotry/user/add', 'crown', 'org.king.project.peotry.controller.PeotryUserController.addSave()', '51ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.addSave()\",\"ip\":\"192.168.1.175\",\"loginName\":\"crown\",\"method\":\"POST\",\"parameterMap\":{\"password\":[\"123456\"],\"loginName\":[\"黄忠\"],\"userName\":[\"黄忠\"]},\"result\":{\"error\":\"USER_ACCOUNT_EXIST\",\"msg\":\"账号黄忠已存在\",\"status\":400,\"time\":\"2020-09-04T10:18:32.669\"},\"runTime\":\"51ms\",\"uid\":\"1\",\"url\":\"/King/peotry/user/add\"}', '2020-09-04 10:18:33');
INSERT INTO `sys_exce_log` VALUES (10, '/King/peotry/user/login', NULL, 'org.king.project.peotry.controller.PeotryUserController.login()', '68ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.login()\",\"ip\":\"192.168.1.175\",\"method\":\"POST\",\"parameterMap\":{\"password\":[\"123456666\"],\"loginName\":[\"黄忠\"]},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名或密码错误\",\"status\":400,\"time\":\"2020-09-04T10:32:47.741\"},\"runTime\":\"68ms\",\"url\":\"/King/peotry/user/login\"}', '2020-09-04 10:32:48');
INSERT INTO `sys_exce_log` VALUES (11, '/King/peotry/user/logout', 'crown', 'org.king.project.peotry.controller.PeotryUserController.fakeLogou()', '20ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.fakeLogou()\",\"ip\":\"192.168.1.175\",\"loginName\":\"crown\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"退出失败\",\"status\":400,\"time\":\"2020-09-04T10:44:17.425\"},\"runTime\":\"20ms\",\"uid\":\"1\",\"url\":\"/King/peotry/user/logout\"}', '2020-09-04 10:44:17');
INSERT INTO `sys_exce_log` VALUES (12, '/King/peotry/user/edit', 'crown', '-', '130ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"loginName\":\"crown\",\"method\":\"POST\",\"parameterMap\":{\"userName\":[\"老将黄忠\"],\"userId\":[\"1\"]},\"result\":{\"error\":\"BAD_REQUEST\",\"exception\":\"org.springframework.validation.BindException: org.springframework.validation.BeanPropertyBindingResult: 1 errors\\nField error in object \'peotryUser\' on field \'loginName\': rejected value [null]; codes [NotBlank.peotryUser.loginName,NotBlank.loginName,NotBlank.java.lang.String,NotBlank]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes [peotryUser.loginName,loginName]; arguments []; default message [loginName]]; default message [登录账号不能为空]\",\"msg\":\"登录账号不能为空\",\"status\":400,\"time\":\"2020-09-04T10:49:38.724\"},\"runTime\":\"130ms\",\"uid\":\"1\",\"url\":\"/King/peotry/user/edit\"}', '2020-09-04 10:49:39');
INSERT INTO `sys_exce_log` VALUES (13, '/King/peotry/user/edit', 'crown', 'org.king.project.peotry.controller.PeotryUserController.editSave()', '18ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.editSave()\",\"ip\":\"192.168.1.175\",\"loginName\":\"crown\",\"method\":\"POST\",\"parameterMap\":{\"loginName\":[\"黄忠\"],\"userName\":[\"老将黄忠\"],\"userId\":[\"1\"]},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名黄忠不允许修改\",\"status\":400,\"time\":\"2020-09-04T10:51:04.456\"},\"runTime\":\"18ms\",\"uid\":\"1\",\"url\":\"/King/peotry/user/edit\"}', '2020-09-04 10:51:04');
INSERT INTO `sys_exce_log` VALUES (14, '/King/peotry/user/edit', 'crown', 'org.king.project.peotry.controller.PeotryUserController.editSave()', '39824ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.editSave()\",\"ip\":\"192.168.1.175\",\"loginName\":\"crown\",\"method\":\"POST\",\"parameterMap\":{\"loginName\":[\"黄忠\"],\"userName\":[\"老将黄忠\"],\"userId\":[\"1\"]},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名黄忠不允许修改\",\"status\":400,\"time\":\"2020-09-04T10:52:40.441\"},\"runTime\":\"39824ms\",\"uid\":\"1\",\"url\":\"/King/peotry/user/edit\"}', '2020-09-04 10:52:46');
INSERT INTO `sys_exce_log` VALUES (15, '/King/swagger-resources/configuration/ui', NULL, '-', '20ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T10:59:08.059\"},\"runTime\":\"20ms\",\"url\":\"/King/swagger-resources/configuration/ui\"}', '2020-09-04 10:59:08');
INSERT INTO `sys_exce_log` VALUES (16, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '2ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T10:59:14.009\"},\"runTime\":\"2ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 10:59:14');
INSERT INTO `sys_exce_log` VALUES (17, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '1ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T10:59:15.595\"},\"runTime\":\"1ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 10:59:16');
INSERT INTO `sys_exce_log` VALUES (18, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '9ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T10:59:16.289\"},\"runTime\":\"9ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 10:59:16');
INSERT INTO `sys_exce_log` VALUES (19, '/King/null/swagger-resources/configuration/ui', NULL, '-', '4ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T10:59:16.923\"},\"runTime\":\"4ms\",\"url\":\"/King/null/swagger-resources/configuration/ui\"}', '2020-09-04 10:59:17');
INSERT INTO `sys_exce_log` VALUES (20, '/King/null/swagger-resources/configuration/ui', NULL, '-', '3ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T10:59:17.594\"},\"runTime\":\"3ms\",\"url\":\"/King/null/swagger-resources/configuration/ui\"}', '2020-09-04 10:59:18');
INSERT INTO `sys_exce_log` VALUES (21, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '3ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T10:59:18.948\"},\"runTime\":\"3ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 10:59:19');
INSERT INTO `sys_exce_log` VALUES (22, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '1ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T10:59:20.646\"},\"runTime\":\"1ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 10:59:21');
INSERT INTO `sys_exce_log` VALUES (23, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '5ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T10:59:21.397\"},\"runTime\":\"5ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 10:59:21');
INSERT INTO `sys_exce_log` VALUES (24, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '2ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T10:59:21.979\"},\"runTime\":\"2ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 10:59:22');
INSERT INTO `sys_exce_log` VALUES (25, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '3ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T10:59:22.684\"},\"runTime\":\"3ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 10:59:23');
INSERT INTO `sys_exce_log` VALUES (26, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '2ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T10:59:24.214\"},\"runTime\":\"2ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 10:59:24');
INSERT INTO `sys_exce_log` VALUES (27, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '1ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T10:59:26.698\"},\"runTime\":\"1ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 10:59:27');
INSERT INTO `sys_exce_log` VALUES (28, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '2ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T10:59:27.278\"},\"runTime\":\"2ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 10:59:27');
INSERT INTO `sys_exce_log` VALUES (29, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '3ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T10:59:27.927\"},\"runTime\":\"3ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 10:59:28');
INSERT INTO `sys_exce_log` VALUES (30, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '2ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T10:59:28.548\"},\"runTime\":\"2ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 10:59:29');
INSERT INTO `sys_exce_log` VALUES (31, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '4ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T10:59:29.142\"},\"runTime\":\"4ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 10:59:29');
INSERT INTO `sys_exce_log` VALUES (32, '/King/null/swagger-resources/configuration/ui', NULL, '-', '3ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T10:59:30.479\"},\"runTime\":\"3ms\",\"url\":\"/King/null/swagger-resources/configuration/ui\"}', '2020-09-04 10:59:31');
INSERT INTO `sys_exce_log` VALUES (33, '/King/null/swagger-resources/configuration/ui', NULL, '-', '5ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T10:59:31.018\"},\"runTime\":\"5ms\",\"url\":\"/King/null/swagger-resources/configuration/ui\"}', '2020-09-04 10:59:31');
INSERT INTO `sys_exce_log` VALUES (34, '/King/null/swagger-resources/configuration/ui', NULL, '-', '2ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T10:59:31.782\"},\"runTime\":\"2ms\",\"url\":\"/King/null/swagger-resources/configuration/ui\"}', '2020-09-04 10:59:32');
INSERT INTO `sys_exce_log` VALUES (35, '/King/null/swagger-resources/configuration/ui', NULL, '-', '4ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T10:59:32.463\"},\"runTime\":\"4ms\",\"url\":\"/King/null/swagger-resources/configuration/ui\"}', '2020-09-04 10:59:33');
INSERT INTO `sys_exce_log` VALUES (36, '/King/null/swagger-resources/configuration/ui', NULL, '-', '2ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T10:59:33.086\"},\"runTime\":\"2ms\",\"url\":\"/King/null/swagger-resources/configuration/ui\"}', '2020-09-04 10:59:33');
INSERT INTO `sys_exce_log` VALUES (37, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '3ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T10:59:49.524\"},\"runTime\":\"3ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 10:59:50');
INSERT INTO `sys_exce_log` VALUES (38, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '8ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T10:59:50.112\"},\"runTime\":\"8ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 10:59:50');
INSERT INTO `sys_exce_log` VALUES (39, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '3ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T10:59:50.703\"},\"runTime\":\"3ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 10:59:51');
INSERT INTO `sys_exce_log` VALUES (40, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '1ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T10:59:50.875\"},\"runTime\":\"1ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 10:59:51');
INSERT INTO `sys_exce_log` VALUES (41, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '2ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T10:59:51.023\"},\"runTime\":\"2ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 10:59:51');
INSERT INTO `sys_exce_log` VALUES (42, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '1ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T10:59:51.155\"},\"runTime\":\"1ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 10:59:51');
INSERT INTO `sys_exce_log` VALUES (43, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '2ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T10:59:51.289\"},\"runTime\":\"2ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 10:59:51');
INSERT INTO `sys_exce_log` VALUES (44, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '1ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T10:59:51.421\"},\"runTime\":\"1ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 10:59:51');
INSERT INTO `sys_exce_log` VALUES (45, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '1ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T10:59:51.604\"},\"runTime\":\"1ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 10:59:52');
INSERT INTO `sys_exce_log` VALUES (46, '/King/null/swagger-resources/configuration/ui', NULL, '-', '1ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T10:59:53.323\"},\"runTime\":\"1ms\",\"url\":\"/King/null/swagger-resources/configuration/ui\"}', '2020-09-04 10:59:53');
INSERT INTO `sys_exce_log` VALUES (47, '/King/null/swagger-resources/configuration/ui', NULL, '-', '22ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T11:00:00.173\"},\"runTime\":\"22ms\",\"url\":\"/King/null/swagger-resources/configuration/ui\"}', '2020-09-04 11:00:00');
INSERT INTO `sys_exce_log` VALUES (48, '/King/null/swagger-resources/configuration/ui', NULL, '-', '2ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T11:00:01.644\"},\"runTime\":\"2ms\",\"url\":\"/King/null/swagger-resources/configuration/ui\"}', '2020-09-04 11:00:02');
INSERT INTO `sys_exce_log` VALUES (49, '/King/null/swagger-resources/configuration/ui', NULL, '-', '4ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T11:00:02.458\"},\"runTime\":\"4ms\",\"url\":\"/King/null/swagger-resources/configuration/ui\"}', '2020-09-04 11:00:03');
INSERT INTO `sys_exce_log` VALUES (50, '/King/null/swagger-resources/configuration/ui', NULL, '-', '7ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T11:00:03.445\"},\"runTime\":\"7ms\",\"url\":\"/King/null/swagger-resources/configuration/ui\"}', '2020-09-04 11:00:04');
INSERT INTO `sys_exce_log` VALUES (51, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '8ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T11:00:25.578\"},\"runTime\":\"8ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 11:00:26');
INSERT INTO `sys_exce_log` VALUES (52, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '7ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T11:00:26.259\"},\"runTime\":\"7ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 11:00:26');
INSERT INTO `sys_exce_log` VALUES (53, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '2ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T11:00:26.883\"},\"runTime\":\"2ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 11:00:27');
INSERT INTO `sys_exce_log` VALUES (54, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '4ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T11:00:27.554\"},\"runTime\":\"4ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 11:00:28');
INSERT INTO `sys_exce_log` VALUES (55, '/King/null/swagger-resources/configuration/ui', NULL, '-', '9ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T11:00:30.030\"},\"runTime\":\"9ms\",\"url\":\"/King/null/swagger-resources/configuration/ui\"}', '2020-09-04 11:00:30');
INSERT INTO `sys_exce_log` VALUES (56, '/King/null/swagger-resources/configuration/ui', NULL, '-', '2ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T11:00:30.744\"},\"runTime\":\"2ms\",\"url\":\"/King/null/swagger-resources/configuration/ui\"}', '2020-09-04 11:00:31');
INSERT INTO `sys_exce_log` VALUES (57, '/King/null/swagger-resources/configuration/ui', NULL, '-', '11ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T11:00:31.666\"},\"runTime\":\"11ms\",\"url\":\"/King/null/swagger-resources/configuration/ui\"}', '2020-09-04 11:00:32');
INSERT INTO `sys_exce_log` VALUES (58, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '4ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T11:02:16.853\"},\"runTime\":\"4ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 11:02:17');
INSERT INTO `sys_exce_log` VALUES (59, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '6ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T11:02:17.761\"},\"runTime\":\"6ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 11:02:18');
INSERT INTO `sys_exce_log` VALUES (60, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '4ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T11:02:18.401\"},\"runTime\":\"4ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 11:02:18');
INSERT INTO `sys_exce_log` VALUES (61, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '6ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T11:02:19.133\"},\"runTime\":\"6ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 11:02:19');
INSERT INTO `sys_exce_log` VALUES (62, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '8ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T11:02:19.795\"},\"runTime\":\"8ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 11:02:20');
INSERT INTO `sys_exce_log` VALUES (63, '/King/null/swagger-resources/configuration/ui', NULL, '-', '140ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T11:14:54.711\"},\"runTime\":\"140ms\",\"url\":\"/King/null/swagger-resources/configuration/ui\"}', '2020-09-04 11:14:55');
INSERT INTO `sys_exce_log` VALUES (64, '/King/swagger-resources/configuration/ui', NULL, '-', '6ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T11:15:00.358\"},\"runTime\":\"6ms\",\"url\":\"/King/swagger-resources/configuration/ui\"}', '2020-09-04 11:15:00');
INSERT INTO `sys_exce_log` VALUES (65, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '2ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T11:15:04.842\"},\"runTime\":\"2ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 11:15:05');
INSERT INTO `sys_exce_log` VALUES (66, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '3ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T11:15:05.574\"},\"runTime\":\"3ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 11:15:06');
INSERT INTO `sys_exce_log` VALUES (67, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '2ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T11:15:06.164\"},\"runTime\":\"2ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 11:15:06');
INSERT INTO `sys_exce_log` VALUES (68, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '3ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T11:15:07.268\"},\"runTime\":\"3ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 11:15:07');
INSERT INTO `sys_exce_log` VALUES (69, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '9ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T11:15:12.215\"},\"runTime\":\"9ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 11:15:12');
INSERT INTO `sys_exce_log` VALUES (70, '/King/null/swagger-resources/configuration/ui', NULL, '-', '9ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T11:15:19.344\"},\"runTime\":\"9ms\",\"url\":\"/King/null/swagger-resources/configuration/ui\"}', '2020-09-04 11:15:19');
INSERT INTO `sys_exce_log` VALUES (71, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '3ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T11:15:26.349\"},\"runTime\":\"3ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 11:15:26');
INSERT INTO `sys_exce_log` VALUES (72, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '5ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T11:15:26.994\"},\"runTime\":\"5ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 11:15:27');
INSERT INTO `sys_exce_log` VALUES (73, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '4ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T11:15:29.219\"},\"runTime\":\"4ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 11:15:29');
INSERT INTO `sys_exce_log` VALUES (74, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '3ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T11:15:29.914\"},\"runTime\":\"3ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 11:15:30');
INSERT INTO `sys_exce_log` VALUES (75, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '6ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T11:15:30.458\"},\"runTime\":\"6ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 11:15:31');
INSERT INTO `sys_exce_log` VALUES (76, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '8ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T11:15:31.459\"},\"runTime\":\"8ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 11:15:32');
INSERT INTO `sys_exce_log` VALUES (77, '/King/swagger-ui.html/swagger-resources/configuration/ui', NULL, '-', '7ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T11:15:32.009\"},\"runTime\":\"7ms\",\"url\":\"/King/swagger-ui.html/swagger-resources/configuration/ui\"}', '2020-09-04 11:15:32');
INSERT INTO `sys_exce_log` VALUES (78, '/King/null/swagger-resources/configuration/ui', NULL, '-', '120ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T11:17:09.544\"},\"runTime\":\"120ms\",\"url\":\"/King/null/swagger-resources/configuration/ui\"}', '2020-09-04 11:17:10');
INSERT INTO `sys_exce_log` VALUES (79, '/King/v2/api-docs', NULL, '-', '5ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"UNAUTHORIZED\",\"msg\":\"请先进行认证\",\"status\":401,\"time\":\"2020-09-04T11:17:16.286\"},\"runTime\":\"5ms\",\"url\":\"/King/v2/api-docs\"}', '2020-09-04 11:17:16');
INSERT INTO `sys_exce_log` VALUES (80, '/King/peotry/user/edit', NULL, 'org.king.project.peotry.controller.PeotryUserController.editSave()', '147ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.editSave()\",\"ip\":\"192.168.1.175\",\"method\":\"POST\",\"parameterMap\":{\"loginName\":[\"黄忠\"],\"userName\":[\"老将黄忠\"],\"userId\":[\"1\"]},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"java.lang.NullPointerException\",\"status\":500,\"time\":\"2020-09-04T11:19:58.035\"},\"runTime\":\"147ms\",\"url\":\"/King/peotry/user/edit\"}', '2020-09-04 11:19:58');
INSERT INTO `sys_exce_log` VALUES (81, '/King/peotry/user/edit', NULL, 'org.king.project.peotry.controller.PeotryUserController.editSave()', '58551ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.editSave()\",\"ip\":\"192.168.1.175\",\"method\":\"POST\",\"parameterMap\":{\"loginName\":[\"黄忠\"],\"userName\":[\"老将黄忠\"],\"userId\":[\"1\"]},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"java.lang.NullPointerException\",\"status\":500,\"time\":\"2020-09-04T11:25:25.652\"},\"runTime\":\"58551ms\",\"url\":\"/King/peotry/user/edit\"}', '2020-09-04 11:25:40');
INSERT INTO `sys_exce_log` VALUES (82, '/King/peotry/user/edit', NULL, 'org.king.project.peotry.controller.PeotryUserController.editSave()', '124ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.editSave()\",\"ip\":\"192.168.1.175\",\"method\":\"POST\",\"parameterMap\":{\"loginName\":[\"黄忠\"],\"userName\":[\"老将黄忠\"],\"userId\":[\"1\"]},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名未登录\",\"status\":400,\"time\":\"2020-09-04T11:47:47.161\"},\"runTime\":\"124ms\",\"url\":\"/King/peotry/user/edit\"}', '2020-09-04 11:47:47');
INSERT INTO `sys_exce_log` VALUES (83, '/King/peotry/user/edit', NULL, 'org.king.project.peotry.controller.PeotryUserController.editSave()', '17ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.editSave()\",\"ip\":\"192.168.1.175\",\"method\":\"POST\",\"parameterMap\":{\"loginName\":[\"黄忠\"],\"userName\":[\"老将黄忠\"],\"userId\":[\"1\"]},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"java.lang.NullPointerException\",\"status\":500,\"time\":\"2020-09-04T11:49:19.648\"},\"runTime\":\"17ms\",\"url\":\"/King/peotry/user/edit\"}', '2020-09-04 11:49:20');
INSERT INTO `sys_exce_log` VALUES (84, '/King/peotry/user/edit', NULL, 'org.king.project.peotry.controller.PeotryUserController.editSave()', '8925ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.editSave()\",\"ip\":\"192.168.1.175\",\"method\":\"POST\",\"parameterMap\":{\"loginName\":[\"黄忠\"],\"userName\":[\"老将黄忠\"],\"userId\":[\"1\"]},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"java.lang.NullPointerException\",\"status\":500,\"time\":\"2020-09-04T11:50:11.953\"},\"runTime\":\"8925ms\",\"url\":\"/King/peotry/user/edit\"}', '2020-09-04 11:50:12');
INSERT INTO `sys_exce_log` VALUES (85, '/King/peotry/user/edit', NULL, 'org.king.project.peotry.controller.PeotryUserController.editSave()', '5111ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.editSave()\",\"ip\":\"192.168.1.175\",\"method\":\"POST\",\"parameterMap\":{\"loginName\":[\"黄忠\"],\"userName\":[\"老将黄忠\"],\"userId\":[\"1\"]},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户账户黄忠不允许修改\",\"status\":400,\"time\":\"2020-09-04T11:51:36.295\"},\"runTime\":\"5111ms\",\"url\":\"/King/peotry/user/edit\"}', '2020-09-04 11:51:36');
INSERT INTO `sys_exce_log` VALUES (86, '/King/peotry/user/edit', NULL, 'org.king.project.peotry.controller.PeotryUserController.editSave()', '2396715ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.editSave()\",\"ip\":\"192.168.1.175\",\"method\":\"POST\",\"parameterMap\":{\"loginName\":[\"黄忠\"],\"userName\":[\"老将黄忠\"],\"userId\":[\"1\"]},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户账户黄忠不允许修改\",\"status\":400,\"time\":\"2020-09-04T12:32:01.452\"},\"runTime\":\"2396715ms\",\"url\":\"/King/peotry/user/edit\"}', '2020-09-04 12:32:02');
INSERT INTO `sys_exce_log` VALUES (87, '/King/peotry/user/edit', NULL, 'org.king.project.peotry.controller.PeotryUserController.editSave()', '116ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.editSave()\",\"ip\":\"192.168.1.175\",\"method\":\"POST\",\"parameterMap\":{\"loginName\":[\"黄忠\"],\"userName\":[\"老将黄忠\"],\"userId\":[\"1\"]},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名未登录\",\"status\":400,\"time\":\"2020-09-04T12:34:42.459\"},\"runTime\":\"116ms\",\"url\":\"/King/peotry/user/edit\"}', '2020-09-04 12:34:43');
INSERT INTO `sys_exce_log` VALUES (88, '/King/peotry/user/edit', NULL, 'org.king.project.peotry.controller.PeotryUserController.editSave()', '143ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.editSave()\",\"ip\":\"192.168.1.175\",\"method\":\"POST\",\"parameterMap\":{\"loginName\":[\"黄忠\"],\"userName\":[\"老将黄忠\"],\"userId\":[\"1\"]},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'null\' in \'class org.king.project.peotry.domain.PeotryUser\'\",\"msg\":\"nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'null\' in \'class org.king.project.peotry.domain.PeotryUser\'\",\"status\":500,\"time\":\"2020-09-04T12:35:01.176\"},\"runTime\":\"143ms\",\"url\":\"/King/peotry/user/edit\"}', '2020-09-04 12:35:01');
INSERT INTO `sys_exce_log` VALUES (89, '/King/peotry/user/edit', NULL, 'org.king.project.peotry.controller.PeotryUserController.editSave()', '62172ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.editSave()\",\"ip\":\"192.168.1.175\",\"method\":\"POST\",\"parameterMap\":{\"loginName\":[\"黄忠\"],\"userName\":[\"老将黄忠\"],\"userId\":[\"1\"]},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'null\' in \'class org.king.project.peotry.domain.PeotryUser\'\",\"msg\":\"nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'null\' in \'class org.king.project.peotry.domain.PeotryUser\'\",\"status\":500,\"time\":\"2020-09-04T12:36:55.866\"},\"runTime\":\"62172ms\",\"url\":\"/King/peotry/user/edit\"}', '2020-09-04 12:36:56');
INSERT INTO `sys_exce_log` VALUES (90, '/King/peotry/user/edit', NULL, 'org.king.project.peotry.controller.PeotryUserController.editSave()', '6495ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.editSave()\",\"ip\":\"192.168.1.175\",\"method\":\"POST\",\"parameterMap\":{\"loginName\":[\"黄忠\"],\"userName\":[\"老将黄忠\"],\"userId\":[\"1\"]},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名未登录\",\"status\":400,\"time\":\"2020-09-04T12:40:51.293\"},\"runTime\":\"6495ms\",\"url\":\"/King/peotry/user/edit\"}', '2020-09-04 12:40:51');
INSERT INTO `sys_exce_log` VALUES (91, '/King/peotry/user/edit', NULL, 'org.king.project.peotry.controller.PeotryUserController.editSave()', '24425ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.editSave()\",\"ip\":\"192.168.1.175\",\"method\":\"POST\",\"parameterMap\":{\"loginName\":[\"黄忠\"],\"userName\":[\"老将黄忠\"],\"userId\":[\"1\"]},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'null\' in \'class org.king.project.peotry.domain.PeotryUser\'\",\"msg\":\"nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'null\' in \'class org.king.project.peotry.domain.PeotryUser\'\",\"status\":500,\"time\":\"2020-09-04T12:41:30.529\"},\"runTime\":\"24425ms\",\"url\":\"/King/peotry/user/edit\"}', '2020-09-04 12:41:31');
INSERT INTO `sys_exce_log` VALUES (92, '/King/peotry/user/edit', NULL, 'org.king.project.peotry.controller.PeotryUserController.editSave()', '51526ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.editSave()\",\"ip\":\"192.168.1.175\",\"method\":\"POST\",\"parameterMap\":{\"loginName\":[\"黄忠\"],\"userName\":[\"老将黄忠\"],\"userId\":[\"1\"]},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'null\' in \'class org.king.project.peotry.domain.PeotryUser\'\",\"msg\":\"nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'null\' in \'class org.king.project.peotry.domain.PeotryUser\'\",\"status\":500,\"time\":\"2020-09-04T12:45:28.875\"},\"runTime\":\"51526ms\",\"url\":\"/King/peotry/user/edit\"}', '2020-09-04 12:45:29');
INSERT INTO `sys_exce_log` VALUES (93, '/King/peotry/user/edit', NULL, 'org.king.project.peotry.controller.PeotryUserController.editSave()', '10437ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.editSave()\",\"ip\":\"192.168.1.175\",\"method\":\"POST\",\"parameterMap\":{\"loginName\":[\"黄忠\"],\"userName\":[\"老将黄忠\"],\"userId\":[\"1\"]},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'null\' in \'class org.king.project.peotry.domain.PeotryUser\'\",\"msg\":\"nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'null\' in \'class org.king.project.peotry.domain.PeotryUser\'\",\"status\":500,\"time\":\"2020-09-04T13:09:30.193\"},\"runTime\":\"10437ms\",\"url\":\"/King/peotry/user/edit\"}', '2020-09-04 13:09:30');
INSERT INTO `sys_exce_log` VALUES (94, '/King/peotry/user/1', NULL, 'org.king.project.peotry.controller.PeotryUserController.getUser()', '5175ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.getUser()\",\"ip\":\"192.168.1.175\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名未登录\",\"status\":400,\"time\":\"2020-09-04T13:35:08.595\"},\"runTime\":\"5175ms\",\"url\":\"/King/peotry/user/1\"}', '2020-09-04 13:35:09');
INSERT INTO `sys_exce_log` VALUES (95, '/King/peotry/user/updateAvatar', NULL, 'org.king.project.peotry.controller.PeotryUserController.updateAvatar()', '6080ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.updateAvatar()\",\"ip\":\"192.168.1.175\",\"method\":\"POST\",\"parameterMap\":{\"avatarfile\":[]},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名未登录\",\"status\":400,\"time\":\"2020-09-04T13:56:49.699\"},\"runTime\":\"6080ms\",\"url\":\"/King/peotry/user/updateAvatar\"}', '2020-09-04 13:56:50');
INSERT INTO `sys_exce_log` VALUES (96, '/King/peotry/user/updateAvatar', 'crown', 'org.king.project.peotry.controller.PeotryUserController.updateAvatar()', '16755ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.updateAvatar()\",\"ip\":\"192.168.1.175\",\"loginName\":\"crown\",\"method\":\"POST\",\"parameterMap\":{\"avatarfile\":[]},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"java.lang.ClassCastException: org.king.project.system.user.domain.User cannot be cast to java.lang.String\",\"msg\":\"org.king.project.system.user.domain.User cannot be cast to java.lang.String\",\"status\":500,\"time\":\"2020-09-04T14:14:23.064\"},\"runTime\":\"16755ms\",\"uid\":\"1\",\"url\":\"/King/peotry/user/updateAvatar\"}', '2020-09-04 14:14:23');
INSERT INTO `sys_exce_log` VALUES (97, '/King/peotry/user/updateAvatar', NULL, '-', '33048ms', '内网IP', '{\"ip\":\"192.168.1.175\",\"method\":\"POST\",\"parameterMap\":{\"avatarfile\":[]},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"org.springframework.web.util.NestedServletException: Handler dispatch failed; nested exception is java.lang.NoSuchMethodError: org.king.common.utils.Kings.getUploadAvatarPath(Ljava/lang/String;)Ljava/lang/String;\",\"msg\":\"Handler dispatch failed; nested exception is java.lang.NoSuchMethodError: org.king.common.utils.Kings.getUploadAvatarPath(Ljava/lang/String;)Ljava/lang/String;\",\"status\":500,\"time\":\"2020-09-04T14:29:38.943\"},\"runTime\":\"33048ms\",\"url\":\"/King/peotry/user/updateAvatar\"}', '2020-09-04 14:29:39');
INSERT INTO `sys_exce_log` VALUES (98, '/King/system/dict/remove', 'crown', 'org.king.project.system.dict.controller.DictTypeController.remove()', '15ms', '未获取地址', '{\"actionMethod\":\"org.king.project.system.dict.controller.DictTypeController.remove()\",\"ip\":\"112.27.240.222\",\"loginName\":\"crown\",\"method\":\"POST\",\"parameterMap\":{\"ids\":[\"10\"]},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"古诗朝代已分配，不能删除\",\"status\":400,\"time\":\"2020-09-04T16:00:47.627\"},\"runTime\":\"15ms\",\"uid\":\"1\",\"url\":\"/King/system/dict/remove\"}', '2020-09-04 16:00:48');
INSERT INTO `sys_exce_log` VALUES (99, '/King/system/dict/remove', 'crown', 'org.king.project.system.dict.controller.DictTypeController.remove()', '16ms', '未获取地址', '{\"actionMethod\":\"org.king.project.system.dict.controller.DictTypeController.remove()\",\"ip\":\"112.27.240.222\",\"loginName\":\"crown\",\"method\":\"POST\",\"parameterMap\":{\"ids\":[\"10\"]},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"古诗朝代已分配，不能删除\",\"status\":400,\"time\":\"2020-09-04T16:01:04.893\"},\"runTime\":\"16ms\",\"uid\":\"1\",\"url\":\"/King/system/dict/remove\"}', '2020-09-04 16:01:05');
INSERT INTO `sys_exce_log` VALUES (100, '/King/peotry/collection/list', 'crown', 'org.king.project.peotry.controller.PeotryCollectionController.list()', '21293ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryCollectionController.list()\",\"ip\":\"127.0.0.1\",\"loginName\":\"crown\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'params\' in \'class org.king.project.peotry.domain.PeotryCollection\'\",\"msg\":\"nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'params\' in \'class org.king.project.peotry.domain.PeotryCollection\'\",\"status\":500,\"time\":\"2020-09-06T15:12:42.626\"},\"runTime\":\"21293ms\",\"uid\":\"1\",\"url\":\"/King/peotry/collection/list\"}', '2020-09-06 15:12:43');
INSERT INTO `sys_exce_log` VALUES (101, '/King/peotry/collection/list', 'crown', 'org.king.project.peotry.controller.PeotryCollectionController.list()', '26426ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryCollectionController.list()\",\"ip\":\"127.0.0.1\",\"loginName\":\"crown\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"org.springframework.jdbc.BadSqlGrammarException: \\r\\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'sys_peotry_author.peotry_id\' in \'on clause\'\\r\\n### The error may exist in file [E:\\\\Program Files\\\\JetBrains\\\\IntelliJ IDEA 2020.2.1 Project\\\\King\\\\out\\\\production\\\\resources\\\\mapper\\\\peotry\\\\PeotryCollectionMapper.xml]\\r\\n### The error may involve org.king.project.peotry.mapper.PeotryCollectionMapper.selectPeotryCollectionList-Inline\\r\\n### The error occurred while setting parameters\\r\\n### SQL: SELECT count(0) FROM sys_peotry_collection INNER JOIN sys_peotry_author ON sys_peotry_collection.peotry_id = sys_peotry_author.peotry_id WHERE 1 = 1\\r\\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'sys_peotry_author.peotry_id\' in \'on clause\'\\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'sys_peotry_author.peotry_id\' in \'on clause\'\",\"msg\":\"\\r\\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'sys_peotry_author.peotry_id\' in \'on clause\'\\r\\n### The error may exist in file [E:\\\\Program Files\\\\JetBrains\\\\IntelliJ IDEA 2020.2.1 Project\\\\King\\\\out\\\\production\\\\resources\\\\mapper\\\\peotry\\\\PeotryCollectionMapper.xml]\\r\\n### The error may involve org.king.project.peotry.mapper.PeotryCollectionMapper.selectPeotryCollectionList-Inline\\r\\n### The error occurred while setting parameters\\r\\n### SQL: SELECT count(0) FROM sys_peotry_collection INNER JOIN sys_peotry_author ON sys_peotry_collection.peotry_id = sys_peotry_author.peotry_id WHERE 1 = 1\\r\\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'sys_peotry_author.peotry_id\' in \'on clause\'\\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'sys_peotry_author.peotry_id\' in \'on clause\'\",\"status\":500,\"time\":\"2020-09-06T15:36:27.350\"},\"runTime\":\"26426ms\",\"uid\":\"1\",\"url\":\"/King/peotry/collection/list\"}', '2020-09-06 15:36:27');
INSERT INTO `sys_exce_log` VALUES (102, '/King/peotry/collection/list', 'crown', 'org.king.project.peotry.controller.PeotryCollectionController.list()', '19262ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryCollectionController.list()\",\"ip\":\"127.0.0.1\",\"loginName\":\"crown\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"org.springframework.jdbc.BadSqlGrammarException: \\r\\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'sys_peotry_collection.email\' in \'field list\'\\r\\n### The error may exist in file [E:\\\\Program Files\\\\JetBrains\\\\IntelliJ IDEA 2020.2.1 Project\\\\King\\\\out\\\\production\\\\resources\\\\mapper\\\\peotry\\\\PeotryCollectionMapper.xml]\\r\\n### The error may involve org.king.project.peotry.mapper.PeotryCollectionMapper.selectPeotryCollectionList-Inline\\r\\n### The error occurred while setting parameters\\r\\n### SQL: select sys_peotry_collection.peotry_id, sys_peotry_collection.peotry_name, sys_peotry_collection.author_id, sys_peotry_collection.dynasty, sys_peotry_collection.original_content, sys_peotry_collection.translation_content, sys_peotry_collection.rank, sys_peotry_collection.email, sys_peotry_collection.pronunciation, sys_peotry_collection.create_time,         sys_peotry_author.author_name,sys_peotry_author.introduction         from sys_peotry_collection inner join sys_peotry_author on sys_peotry_collection.author_id = sys_peotry_author.author_id               where 1=1                             order by sys_peotry_collection.peotry_id, sys_peotry_collection.create_time LIMIT ?\\r\\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'sys_peotry_collection.email\' in \'field list\'\\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'sys_peotry_collection.email\' in \'field list\'\",\"msg\":\"\\r\\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'sys_peotry_collection.email\' in \'field list\'\\r\\n### The error may exist in file [E:\\\\Program Files\\\\JetBrains\\\\IntelliJ IDEA 2020.2.1 Project\\\\King\\\\out\\\\production\\\\resources\\\\mapper\\\\peotry\\\\PeotryCollectionMapper.xml]\\r\\n### The error may involve org.king.project.peotry.mapper.PeotryCollectionMapper.selectPeotryCollectionList-Inline\\r\\n### The error occurred while setting parameters\\r\\n### SQL: select sys_peotry_collection.peotry_id, sys_peotry_collection.peotry_name, sys_peotry_collection.author_id, sys_peotry_collection.dynasty, sys_peotry_collection.original_content, sys_peotry_collection.translation_content, sys_peotry_collection.rank, sys_peotry_collection.email, sys_peotry_collection.pronunciation, sys_peotry_collection.create_time,         sys_peotry_author.author_name,sys_peotry_author.introduction         from sys_peotry_collection inner join sys_peotry_author on sys_peotry_collection.author_id = sys_peotry_author.author_id               where 1=1                             order by sys_peotry_collection.peotry_id, sys_peotry_collection.create_time LIMIT ?\\r\\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'sys_peotry_collection.email\' in \'field list\'\\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'sys_peotry_collection.email\' in \'field list\'\",\"status\":500,\"time\":\"2020-09-06T15:40:10.184\"},\"runTime\":\"19262ms\",\"uid\":\"1\",\"url\":\"/King/peotry/collection/list\"}', '2020-09-06 15:40:10');
INSERT INTO `sys_exce_log` VALUES (103, '/King/peotry/collection/list', 'crown', 'org.king.project.peotry.controller.PeotryCollectionController.list()', '11561ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryCollectionController.list()\",\"ip\":\"127.0.0.1\",\"loginName\":\"crown\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.reflection.ReflectionException: Could not set property \'peotryNme\' of \'class org.king.project.peotry.domain.PeotryCollection\' with value \'曹刿论战\' Cause: org.apache.ibatis.reflection.ReflectionException: There is no setter for property named \'peotryNme\' in \'class org.king.project.peotry.domain.PeotryCollection\'\",\"msg\":\"nested exception is org.apache.ibatis.reflection.ReflectionException: Could not set property \'peotryNme\' of \'class org.king.project.peotry.domain.PeotryCollection\' with value \'曹刿论战\' Cause: org.apache.ibatis.reflection.ReflectionException: There is no setter for property named \'peotryNme\' in \'class org.king.project.peotry.domain.PeotryCollection\'\",\"status\":500,\"time\":\"2020-09-06T16:21:55.112\"},\"runTime\":\"11561ms\",\"uid\":\"1\",\"url\":\"/King/peotry/collection/list\"}', '2020-09-06 16:21:55');
INSERT INTO `sys_exce_log` VALUES (104, '/King/peotry/collection/list', 'crown', 'org.king.project.peotry.controller.PeotryCollectionController.list()', '13664ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryCollectionController.list()\",\"ip\":\"127.0.0.1\",\"loginName\":\"crown\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.reflection.ReflectionException: Could not set property \'peotryNme\' of \'class org.king.project.peotry.domain.PeotryCollection\' with value \'曹刿论战\' Cause: org.apache.ibatis.reflection.ReflectionException: There is no setter for property named \'peotryNme\' in \'class org.king.project.peotry.domain.PeotryCollection\'\",\"msg\":\"nested exception is org.apache.ibatis.reflection.ReflectionException: Could not set property \'peotryNme\' of \'class org.king.project.peotry.domain.PeotryCollection\' with value \'曹刿论战\' Cause: org.apache.ibatis.reflection.ReflectionException: There is no setter for property named \'peotryNme\' in \'class org.king.project.peotry.domain.PeotryCollection\'\",\"status\":500,\"time\":\"2020-09-06T16:32:35.119\"},\"runTime\":\"13664ms\",\"uid\":\"1\",\"url\":\"/King/peotry/collection/list\"}', '2020-09-06 16:32:35');
INSERT INTO `sys_exce_log` VALUES (105, '/King/peotry/user/add', NULL, '-', '16ms', '未获取地址', '{\"ip\":\"114.102.184.40\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"BAD_REQUEST\",\"exception\":\"org.springframework.validation.BindException: org.springframework.validation.BeanPropertyBindingResult: 1 errors\\nField error in object \'peotryUser\' on field \'loginName\': rejected value [null]; codes [NotBlank.peotryUser.loginName,NotBlank.loginName,NotBlank.java.lang.String,NotBlank]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes [peotryUser.loginName,loginName]; arguments []; default message [loginName]]; default message [登录账号不能为空]\",\"msg\":\"登录账号不能为空\",\"status\":400,\"time\":\"2020-09-06T22:50:06.440\"},\"runTime\":\"16ms\",\"url\":\"/King/peotry/user/add\"}', '2020-09-06 22:50:06');
INSERT INTO `sys_exce_log` VALUES (106, '/King/peotry/user/add', NULL, '-', '0ms', '未获取地址', '{\"ip\":\"114.102.184.40\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"BAD_REQUEST\",\"exception\":\"org.springframework.validation.BindException: org.springframework.validation.BeanPropertyBindingResult: 1 errors\\nField error in object \'peotryUser\' on field \'loginName\': rejected value [null]; codes [NotBlank.peotryUser.loginName,NotBlank.loginName,NotBlank.java.lang.String,NotBlank]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes [peotryUser.loginName,loginName]; arguments []; default message [loginName]]; default message [登录账号不能为空]\",\"msg\":\"登录账号不能为空\",\"status\":400,\"time\":\"2020-09-06T22:50:08.909\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/user/add\"}', '2020-09-06 22:50:09');
INSERT INTO `sys_exce_log` VALUES (107, '/King/peotry/user/add', NULL, '-', '0ms', '未获取地址', '{\"ip\":\"114.102.184.40\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"BAD_REQUEST\",\"exception\":\"org.springframework.validation.BindException: org.springframework.validation.BeanPropertyBindingResult: 1 errors\\nField error in object \'peotryUser\' on field \'loginName\': rejected value [null]; codes [NotBlank.peotryUser.loginName,NotBlank.loginName,NotBlank.java.lang.String,NotBlank]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes [peotryUser.loginName,loginName]; arguments []; default message [loginName]]; default message [登录账号不能为空]\",\"msg\":\"登录账号不能为空\",\"status\":400,\"time\":\"2020-09-06T22:50:11.721\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/user/add\"}', '2020-09-06 22:50:12');
INSERT INTO `sys_exce_log` VALUES (108, '/King/peotry/user/add', NULL, '-', '3ms', '未获取地址', '{\"ip\":\"114.102.184.40\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"BAD_REQUEST\",\"exception\":\"org.springframework.validation.BindException: org.springframework.validation.BeanPropertyBindingResult: 1 errors\\nField error in object \'peotryUser\' on field \'loginName\': rejected value [null]; codes [NotBlank.peotryUser.loginName,NotBlank.loginName,NotBlank.java.lang.String,NotBlank]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes [peotryUser.loginName,loginName]; arguments []; default message [loginName]]; default message [登录账号不能为空]\",\"msg\":\"登录账号不能为空\",\"status\":400,\"time\":\"2020-09-06T22:50:15.266\"},\"runTime\":\"3ms\",\"url\":\"/King/peotry/user/add\"}', '2020-09-06 22:50:15');
INSERT INTO `sys_exce_log` VALUES (109, '/King/peotry/user/add', NULL, '-', '0ms', '未获取地址', '{\"ip\":\"114.102.184.40\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"BAD_REQUEST\",\"exception\":\"org.springframework.validation.BindException: org.springframework.validation.BeanPropertyBindingResult: 1 errors\\nField error in object \'peotryUser\' on field \'loginName\': rejected value [null]; codes [NotBlank.peotryUser.loginName,NotBlank.loginName,NotBlank.java.lang.String,NotBlank]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes [peotryUser.loginName,loginName]; arguments []; default message [loginName]]; default message [登录账号不能为空]\",\"msg\":\"登录账号不能为空\",\"status\":400,\"time\":\"2020-09-06T22:50:58.440\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/user/add\"}', '2020-09-06 22:50:58');
INSERT INTO `sys_exce_log` VALUES (110, '/King/peotry/user/add', NULL, '-', '0ms', '未获取地址', '{\"ip\":\"114.102.184.40\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"BAD_REQUEST\",\"exception\":\"org.springframework.validation.BindException: org.springframework.validation.BeanPropertyBindingResult: 1 errors\\nField error in object \'peotryUser\' on field \'loginName\': rejected value [null]; codes [NotBlank.peotryUser.loginName,NotBlank.loginName,NotBlank.java.lang.String,NotBlank]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes [peotryUser.loginName,loginName]; arguments []; default message [loginName]]; default message [登录账号不能为空]\",\"msg\":\"登录账号不能为空\",\"status\":400,\"time\":\"2020-09-06T22:51:01.534\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/user/add\"}', '2020-09-06 22:51:02');
INSERT INTO `sys_exce_log` VALUES (111, '/King/peotry/user/add', NULL, '-', '0ms', '未获取地址', '{\"ip\":\"114.102.184.40\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"BAD_REQUEST\",\"exception\":\"org.springframework.validation.BindException: org.springframework.validation.BeanPropertyBindingResult: 1 errors\\nField error in object \'peotryUser\' on field \'loginName\': rejected value [null]; codes [NotBlank.peotryUser.loginName,NotBlank.loginName,NotBlank.java.lang.String,NotBlank]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes [peotryUser.loginName,loginName]; arguments []; default message [loginName]]; default message [登录账号不能为空]\",\"msg\":\"登录账号不能为空\",\"status\":400,\"time\":\"2020-09-06T22:51:57.018\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/user/add\"}', '2020-09-06 22:51:57');
INSERT INTO `sys_exce_log` VALUES (112, '/King/peotry/user/add', NULL, '-', '0ms', '未获取地址', '{\"ip\":\"114.102.184.40\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"BAD_REQUEST\",\"exception\":\"org.springframework.web.method.annotation.MethodArgumentTypeMismatchException: Failed to convert value of type \'java.lang.String\' to required type \'java.lang.Integer\'; nested exception is java.lang.NumberFormatException: For input string: \\\"add\\\"\",\"msg\":\"请求参数有误\",\"status\":400,\"time\":\"2020-09-06T22:54:58.362\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/user/add\"}', '2020-09-06 22:54:58');
INSERT INTO `sys_exce_log` VALUES (113, '/King/peotry/user/add', NULL, '-', '0ms', '未获取地址', '{\"ip\":\"114.102.184.40\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"BAD_REQUEST\",\"exception\":\"org.springframework.validation.BindException: org.springframework.validation.BeanPropertyBindingResult: 1 errors\\nField error in object \'peotryUser\' on field \'loginName\': rejected value [null]; codes [NotBlank.peotryUser.loginName,NotBlank.loginName,NotBlank.java.lang.String,NotBlank]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes [peotryUser.loginName,loginName]; arguments []; default message [loginName]]; default message [登录账号不能为空]\",\"msg\":\"登录账号不能为空\",\"status\":400,\"time\":\"2020-09-06T22:56:55.690\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/user/add\"}', '2020-09-06 22:56:56');
INSERT INTO `sys_exce_log` VALUES (114, '/King/peotry/user/add', NULL, '-', '0ms', '未获取地址', '{\"ip\":\"114.102.184.40\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"BAD_REQUEST\",\"exception\":\"org.springframework.validation.BindException: org.springframework.validation.BeanPropertyBindingResult: 1 errors\\nField error in object \'peotryUser\' on field \'loginName\': rejected value [null]; codes [NotBlank.peotryUser.loginName,NotBlank.loginName,NotBlank.java.lang.String,NotBlank]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes [peotryUser.loginName,loginName]; arguments []; default message [loginName]]; default message [登录账号不能为空]\",\"msg\":\"登录账号不能为空\",\"status\":400,\"time\":\"2020-09-07T06:44:47.674\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/user/add\"}', '2020-09-07 06:44:48');
INSERT INTO `sys_exce_log` VALUES (115, '/King/peotry/user/add', NULL, '-', '0ms', '未获取地址', '{\"ip\":\"183.160.212.249\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"BAD_REQUEST\",\"exception\":\"org.springframework.validation.BindException: org.springframework.validation.BeanPropertyBindingResult: 1 errors\\nField error in object \'peotryUser\' on field \'loginName\': rejected value [null]; codes [NotBlank.peotryUser.loginName,NotBlank.loginName,NotBlank.java.lang.String,NotBlank]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes [peotryUser.loginName,loginName]; arguments []; default message [loginName]]; default message [登录账号不能为空]\",\"msg\":\"登录账号不能为空\",\"status\":400,\"time\":\"2020-09-07T08:36:12.862\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/user/add\"}', '2020-09-07 08:36:13');
INSERT INTO `sys_exce_log` VALUES (116, '/King/peotry/user/add', NULL, '-', '16ms', '未获取地址', '{\"ip\":\"183.160.212.249\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"BAD_REQUEST\",\"exception\":\"org.springframework.validation.BindException: org.springframework.validation.BeanPropertyBindingResult: 1 errors\\nField error in object \'peotryUser\' on field \'loginName\': rejected value [null]; codes [NotBlank.peotryUser.loginName,NotBlank.loginName,NotBlank.java.lang.String,NotBlank]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes [peotryUser.loginName,loginName]; arguments []; default message [loginName]]; default message [登录账号不能为空]\",\"msg\":\"登录账号不能为空\",\"status\":400,\"time\":\"2020-09-07T08:36:17.112\"},\"runTime\":\"16ms\",\"url\":\"/King/peotry/user/add\"}', '2020-09-07 08:36:17');
INSERT INTO `sys_exce_log` VALUES (117, '/King/peotry/user/add', NULL, '-', '0ms', '未获取地址', '{\"ip\":\"183.160.212.249\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"BAD_REQUEST\",\"exception\":\"org.springframework.validation.BindException: org.springframework.validation.BeanPropertyBindingResult: 1 errors\\nField error in object \'peotryUser\' on field \'loginName\': rejected value [null]; codes [NotBlank.peotryUser.loginName,NotBlank.loginName,NotBlank.java.lang.String,NotBlank]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes [peotryUser.loginName,loginName]; arguments []; default message [loginName]]; default message [登录账号不能为空]\",\"msg\":\"登录账号不能为空\",\"status\":400,\"time\":\"2020-09-07T09:17:20.221\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/user/add\"}', '2020-09-07 09:17:20');
INSERT INTO `sys_exce_log` VALUES (118, '/King/peotry/user/add', NULL, '-', '0ms', '未获取地址', '{\"ip\":\"183.160.212.249\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"BAD_REQUEST\",\"exception\":\"org.springframework.validation.BindException: org.springframework.validation.BeanPropertyBindingResult: 1 errors\\nField error in object \'peotryUser\' on field \'loginName\': rejected value [null]; codes [NotBlank.peotryUser.loginName,NotBlank.loginName,NotBlank.java.lang.String,NotBlank]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes [peotryUser.loginName,loginName]; arguments []; default message [loginName]]; default message [登录账号不能为空]\",\"msg\":\"登录账号不能为空\",\"status\":400,\"time\":\"2020-09-07T09:17:22.831\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/user/add\"}', '2020-09-07 09:17:23');
INSERT INTO `sys_exce_log` VALUES (119, '/King/peotry/user/add', NULL, '-', '0ms', '未获取地址', '{\"ip\":\"183.160.212.249\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"BAD_REQUEST\",\"exception\":\"org.springframework.validation.BindException: org.springframework.validation.BeanPropertyBindingResult: 1 errors\\nField error in object \'peotryUser\' on field \'loginName\': rejected value [null]; codes [NotBlank.peotryUser.loginName,NotBlank.loginName,NotBlank.java.lang.String,NotBlank]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes [peotryUser.loginName,loginName]; arguments []; default message [loginName]]; default message [登录账号不能为空]\",\"msg\":\"登录账号不能为空\",\"status\":400,\"time\":\"2020-09-07T09:30:34.752\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/user/add\"}', '2020-09-07 09:30:35');
INSERT INTO `sys_exce_log` VALUES (120, '/King/peotry/user/add', NULL, '-', '16ms', '未获取地址', '{\"ip\":\"183.160.212.249\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"BAD_REQUEST\",\"exception\":\"org.springframework.validation.BindException: org.springframework.validation.BeanPropertyBindingResult: 1 errors\\nField error in object \'peotryUser\' on field \'loginName\': rejected value [null]; codes [NotBlank.peotryUser.loginName,NotBlank.loginName,NotBlank.java.lang.String,NotBlank]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes [peotryUser.loginName,loginName]; arguments []; default message [loginName]]; default message [登录账号不能为空]\",\"msg\":\"登录账号不能为空\",\"status\":400,\"time\":\"2020-09-07T09:31:25.331\"},\"runTime\":\"16ms\",\"url\":\"/King/peotry/user/add\"}', '2020-09-07 09:31:25');
INSERT INTO `sys_exce_log` VALUES (121, '/King/peotry/collection/list', 'crown', 'org.king.project.peotry.controller.PeotryCollectionController.list()', '69806ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryCollectionController.list()\",\"ip\":\"192.168.1.175\",\"loginName\":\"crown\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.reflection.ReflectionException: Could not set property \'peotryNme\' of \'class org.king.project.peotry.domain.PeotryCollection\' with value \'曹刿论战\' Cause: org.apache.ibatis.reflection.ReflectionException: There is no setter for property named \'peotryNme\' in \'class org.king.project.peotry.domain.PeotryCollection\'\",\"msg\":\"nested exception is org.apache.ibatis.reflection.ReflectionException: Could not set property \'peotryNme\' of \'class org.king.project.peotry.domain.PeotryCollection\' with value \'曹刿论战\' Cause: org.apache.ibatis.reflection.ReflectionException: There is no setter for property named \'peotryNme\' in \'class org.king.project.peotry.domain.PeotryCollection\'\",\"status\":500,\"time\":\"2020-09-07T09:49:06.183\"},\"runTime\":\"69806ms\",\"uid\":\"1\",\"url\":\"/King/peotry/collection/list\"}', '2020-09-07 09:49:06');
INSERT INTO `sys_exce_log` VALUES (122, '/King/peotry/collection/list', 'crown', 'org.king.project.peotry.controller.PeotryCollectionController.list()', '10347ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryCollectionController.list()\",\"ip\":\"192.168.1.175\",\"loginName\":\"crown\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.reflection.ReflectionException: Could not set property \'peotryNme\' of \'class org.king.project.peotry.domain.PeotryCollection\' with value \'曹刿论战\' Cause: org.apache.ibatis.reflection.ReflectionException: There is no setter for property named \'peotryNme\' in \'class org.king.project.peotry.domain.PeotryCollection\'\",\"msg\":\"nested exception is org.apache.ibatis.reflection.ReflectionException: Could not set property \'peotryNme\' of \'class org.king.project.peotry.domain.PeotryCollection\' with value \'曹刿论战\' Cause: org.apache.ibatis.reflection.ReflectionException: There is no setter for property named \'peotryNme\' in \'class org.king.project.peotry.domain.PeotryCollection\'\",\"status\":500,\"time\":\"2020-09-07T09:52:16.562\"},\"runTime\":\"10347ms\",\"uid\":\"1\",\"url\":\"/King/peotry/collection/list\"}', '2020-09-07 09:52:17');
INSERT INTO `sys_exce_log` VALUES (123, '/King/peotry/collection/statistic', 'crown', 'org.king.project.peotry.controller.PeotryCollectionController.getCollectionStatistic()', '44ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryCollectionController.getCollectionStatistic()\",\"ip\":\"192.168.1.175\",\"loginName\":\"crown\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"java.lang.ClassCastException: java.lang.Integer cannot be cast to java.lang.String\",\"msg\":\"java.lang.Integer cannot be cast to java.lang.String\",\"status\":500,\"time\":\"2020-09-07T14:41:43.059\"},\"runTime\":\"44ms\",\"uid\":\"1\",\"url\":\"/King/peotry/collection/statistic\"}', '2020-09-07 14:41:43');
INSERT INTO `sys_exce_log` VALUES (124, '/King/peotry/collection/statistic', 'crown', 'org.king.project.peotry.controller.PeotryCollectionController.getCollectionStatistic()', '12ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryCollectionController.getCollectionStatistic()\",\"ip\":\"192.168.1.175\",\"loginName\":\"crown\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"java.lang.ClassCastException: java.lang.Integer cannot be cast to java.lang.String\",\"msg\":\"java.lang.Integer cannot be cast to java.lang.String\",\"status\":500,\"time\":\"2020-09-07T14:41:43.380\"},\"runTime\":\"12ms\",\"uid\":\"1\",\"url\":\"/King/peotry/collection/statistic\"}', '2020-09-07 14:41:43');
INSERT INTO `sys_exce_log` VALUES (125, '/King/peotry/collection/statistic', 'crown', 'org.king.project.peotry.controller.PeotryCollectionController.getCollectionStatistic()', '22747ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryCollectionController.getCollectionStatistic()\",\"ip\":\"192.168.1.175\",\"loginName\":\"crown\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"java.lang.ClassCastException: java.lang.Integer cannot be cast to java.lang.String\",\"msg\":\"java.lang.Integer cannot be cast to java.lang.String\",\"status\":500,\"time\":\"2020-09-07T14:43:21.255\"},\"runTime\":\"22747ms\",\"uid\":\"1\",\"url\":\"/King/peotry/collection/statistic\"}', '2020-09-07 14:43:21');
INSERT INTO `sys_exce_log` VALUES (126, '/King/peotry/collection/list', 'crown', 'org.king.project.peotry.controller.PeotryCollectionController.list()', '70ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryCollectionController.list()\",\"ip\":\"192.168.1.175\",\"loginName\":\"crown\",\"method\":\"POST\",\"parameterMap\":{\"authorId\":[\"1\"]},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'dynasty\' in \'class org.king.project.peotry.domain.PeotryCollection\'\",\"msg\":\"nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'dynasty\' in \'class org.king.project.peotry.domain.PeotryCollection\'\",\"status\":500,\"time\":\"2020-09-07T15:23:37.471\"},\"runTime\":\"70ms\",\"uid\":\"1\",\"url\":\"/King/peotry/collection/list\"}', '2020-09-07 15:23:38');
INSERT INTO `sys_exce_log` VALUES (127, '/King/peotry/collection/list', 'crown', 'org.king.project.peotry.controller.PeotryCollectionController.list()', '86ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryCollectionController.list()\",\"ip\":\"192.168.1.175\",\"loginName\":\"crown\",\"method\":\"POST\",\"parameterMap\":{\"authorId\":[\"1\"]},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'dynasty\' in \'class org.king.project.peotry.domain.PeotryCollection\'\",\"msg\":\"nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'dynasty\' in \'class org.king.project.peotry.domain.PeotryCollection\'\",\"status\":500,\"time\":\"2020-09-07T15:26:01.717\"},\"runTime\":\"86ms\",\"uid\":\"1\",\"url\":\"/King/peotry/collection/list\"}', '2020-09-07 15:26:02');
INSERT INTO `sys_exce_log` VALUES (128, '/King/peotry/collection/list', 'crown', 'org.king.project.peotry.controller.PeotryCollectionController.list()', '63ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryCollectionController.list()\",\"ip\":\"192.168.1.175\",\"loginName\":\"crown\",\"method\":\"POST\",\"parameterMap\":{\"authorId\":[\"1\"]},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'dynasty\' in \'class org.king.project.peotry.domain.PeotryCollection\'\",\"msg\":\"nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'dynasty\' in \'class org.king.project.peotry.domain.PeotryCollection\'\",\"status\":500,\"time\":\"2020-09-07T15:32:39.295\"},\"runTime\":\"63ms\",\"uid\":\"1\",\"url\":\"/King/peotry/collection/list\"}', '2020-09-07 15:32:39');
INSERT INTO `sys_exce_log` VALUES (129, '/King/peotry/collection/list', 'crown', 'org.king.project.peotry.controller.PeotryCollectionController.list()', '76ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryCollectionController.list()\",\"ip\":\"192.168.1.175\",\"loginName\":\"crown\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'dynasty\' in \'class org.king.project.peotry.domain.PeotryCollection\'\",\"msg\":\"nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'dynasty\' in \'class org.king.project.peotry.domain.PeotryCollection\'\",\"status\":500,\"time\":\"2020-09-07T15:38:26.067\"},\"runTime\":\"76ms\",\"uid\":\"1\",\"url\":\"/King/peotry/collection/list\"}', '2020-09-07 15:38:26');
INSERT INTO `sys_exce_log` VALUES (130, '/King/peotry/collection/list', 'crown', 'org.king.project.peotry.controller.PeotryCollectionController.list()', '61ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryCollectionController.list()\",\"ip\":\"192.168.1.175\",\"loginName\":\"crown\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'dynasty\' in \'class org.king.project.peotry.domain.PeotryCollection\'\",\"msg\":\"nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'dynasty\' in \'class org.king.project.peotry.domain.PeotryCollection\'\",\"status\":500,\"time\":\"2020-09-07T15:43:31.164\"},\"runTime\":\"61ms\",\"uid\":\"1\",\"url\":\"/King/peotry/collection/list\"}', '2020-09-07 15:43:31');
INSERT INTO `sys_exce_log` VALUES (131, '/King/peotry/collection/list', 'crown', 'org.king.project.peotry.controller.PeotryCollectionController.list()', '64ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryCollectionController.list()\",\"ip\":\"192.168.1.175\",\"loginName\":\"crown\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'dynasty\' in \'class org.king.project.peotry.domain.PeotryCollection\'\",\"msg\":\"nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'dynasty\' in \'class org.king.project.peotry.domain.PeotryCollection\'\",\"status\":500,\"time\":\"2020-09-07T15:48:09.440\"},\"runTime\":\"64ms\",\"uid\":\"1\",\"url\":\"/King/peotry/collection/list\"}', '2020-09-07 15:48:09');
INSERT INTO `sys_exce_log` VALUES (132, '/King/peotry/user/login', NULL, 'org.king.project.peotry.controller.PeotryUserController.login()', '156ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.login()\",\"ip\":\"36.5.144.117\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名或密码不能为空\",\"status\":400,\"time\":\"2020-09-07T15:50:46.299\"},\"runTime\":\"156ms\",\"url\":\"/King/peotry/user/login\"}', '2020-09-07 15:50:47');
INSERT INTO `sys_exce_log` VALUES (133, '/King/peotry/user/login', NULL, 'org.king.project.peotry.controller.PeotryUserController.login()', '15ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.login()\",\"ip\":\"36.5.144.117\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名或密码不能为空\",\"status\":400,\"time\":\"2020-09-07T15:50:51.924\"},\"runTime\":\"15ms\",\"url\":\"/King/peotry/user/login\"}', '2020-09-07 15:50:52');
INSERT INTO `sys_exce_log` VALUES (134, '/King/peotry/user/login', NULL, 'org.king.project.peotry.controller.PeotryUserController.login()', '15ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.login()\",\"ip\":\"36.5.144.117\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名或密码不能为空\",\"status\":400,\"time\":\"2020-09-07T15:51:00.346\"},\"runTime\":\"15ms\",\"url\":\"/King/peotry/user/login\"}', '2020-09-07 15:51:00');
INSERT INTO `sys_exce_log` VALUES (135, '/King/peotry/collection/list', 'crown', 'org.king.project.peotry.controller.PeotryCollectionController.list()', '64ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryCollectionController.list()\",\"ip\":\"192.168.1.175\",\"loginName\":\"crown\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.builder.BuilderException: Error evaluating expression \'sysPeotryAuthor.dynasty != null and sysPeotryAuthor.dynasty != \'\'\'. Cause: org.apache.ibatis.ognl.OgnlException: source is null for getProperty(null, \\\"dynasty\\\")\",\"msg\":\"nested exception is org.apache.ibatis.builder.BuilderException: Error evaluating expression \'sysPeotryAuthor.dynasty != null and sysPeotryAuthor.dynasty != \'\'\'. Cause: org.apache.ibatis.ognl.OgnlException: source is null for getProperty(null, \\\"dynasty\\\")\",\"status\":500,\"time\":\"2020-09-07T15:51:14.782\"},\"runTime\":\"64ms\",\"uid\":\"1\",\"url\":\"/King/peotry/collection/list\"}', '2020-09-07 15:51:15');
INSERT INTO `sys_exce_log` VALUES (136, '/King/peotry/user/login', NULL, 'org.king.project.peotry.controller.PeotryUserController.login()', '2ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.login()\",\"ip\":\"36.5.144.117\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名或密码不能为空\",\"status\":400,\"time\":\"2020-09-07T15:52:18.226\"},\"runTime\":\"2ms\",\"url\":\"/King/peotry/user/login\"}', '2020-09-07 15:52:18');
INSERT INTO `sys_exce_log` VALUES (137, '/King/peotry/user/login', NULL, 'org.king.project.peotry.controller.PeotryUserController.login()', '0ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.login()\",\"ip\":\"36.5.144.117\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名或密码不能为空\",\"status\":400,\"time\":\"2020-09-07T15:52:45.049\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/user/login\"}', '2020-09-07 15:52:45');
INSERT INTO `sys_exce_log` VALUES (138, '/King/peotry/user/login', NULL, 'org.king.project.peotry.controller.PeotryUserController.login()', '0ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.login()\",\"ip\":\"36.5.144.117\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名或密码不能为空\",\"status\":400,\"time\":\"2020-09-07T15:53:45.909\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/user/login\"}', '2020-09-07 15:53:46');
INSERT INTO `sys_exce_log` VALUES (139, '/King/peotry/collection/list', 'crown', 'org.king.project.peotry.controller.PeotryCollectionController.list()', '59ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryCollectionController.list()\",\"ip\":\"192.168.1.175\",\"loginName\":\"crown\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'dynasty\' in \'class org.king.project.peotry.domain.PeotryCollection\'\",\"msg\":\"nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'dynasty\' in \'class org.king.project.peotry.domain.PeotryCollection\'\",\"status\":500,\"time\":\"2020-09-07T15:57:09.161\"},\"runTime\":\"59ms\",\"uid\":\"1\",\"url\":\"/King/peotry/collection/list\"}', '2020-09-07 15:57:09');
INSERT INTO `sys_exce_log` VALUES (140, '/King/peotry/user/login', NULL, 'org.king.project.peotry.controller.PeotryUserController.login()', '58ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.login()\",\"ip\":\"192.168.1.175\",\"method\":\"POST\",\"parameterMap\":{\"password\":[\"123456\"],\"loginName\":[\"adb123\"]},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名或密码错误\",\"status\":400,\"time\":\"2020-09-07T16:04:04.982\"},\"runTime\":\"58ms\",\"url\":\"/King/peotry/user/login\"}', '2020-09-07 16:04:05');
INSERT INTO `sys_exce_log` VALUES (141, '/King/peotry/author/list', 'crown', 'org.king.project.peotry.controller.SysPeotryAuthorController.list()', '131ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.SysPeotryAuthorController.list()\",\"ip\":\"192.168.1.175\",\"loginName\":\"crown\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"org.springframework.jdbc.BadSqlGrammarException: \\r\\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Table \'king.sys_sys_peotry_author\' doesn\'t exist\\r\\n### The error may exist in org/king/project/peotry/mapper/SysPeotryAuthorMapper.java (best guess)\\r\\n### The error may involve defaultParameterMap\\r\\n### The error occurred while setting parameters\\r\\n### SQL: SELECT count(0) FROM sys_sys_peotry_author\\r\\n### Cause: java.sql.SQLSyntaxErrorException: Table \'king.sys_sys_peotry_author\' doesn\'t exist\\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Table \'king.sys_sys_peotry_author\' doesn\'t exist\",\"msg\":\"\\r\\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Table \'king.sys_sys_peotry_author\' doesn\'t exist\\r\\n### The error may exist in org/king/project/peotry/mapper/SysPeotryAuthorMapper.java (best guess)\\r\\n### The error may involve defaultParameterMap\\r\\n### The error occurred while setting parameters\\r\\n### SQL: SELECT count(0) FROM sys_sys_peotry_author\\r\\n### Cause: java.sql.SQLSyntaxErrorException: Table \'king.sys_sys_peotry_author\' doesn\'t exist\\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Table \'king.sys_sys_peotry_author\' doesn\'t exist\",\"status\":500,\"time\":\"2020-09-07T16:15:35.635\"},\"runTime\":\"131ms\",\"uid\":\"1\",\"url\":\"/King/peotry/author/list\"}', '2020-09-07 16:15:36');
INSERT INTO `sys_exce_log` VALUES (142, '/King/peotry/author/list', 'crown', 'org.king.project.peotry.controller.PeotryAuthorController.list()', '196ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryAuthorController.list()\",\"ip\":\"192.168.1.175\",\"loginName\":\"crown\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"org.springframework.jdbc.BadSqlGrammarException: \\r\\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'dynasty_name\' in \'field list\'\\r\\n### The error may exist in org/king/project/peotry/mapper/PeotryAuthorMapper.java (best guess)\\r\\n### The error may involve defaultParameterMap\\r\\n### The error occurred while setting parameters\\r\\n### SQL: SELECT  author_id,dynasty,create_time,author_name,dynasty_name,peotry_ids,introduction  FROM sys_peotry_author LIMIT ?\\r\\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'dynasty_name\' in \'field list\'\\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'dynasty_name\' in \'field list\'\",\"msg\":\"\\r\\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'dynasty_name\' in \'field list\'\\r\\n### The error may exist in org/king/project/peotry/mapper/PeotryAuthorMapper.java (best guess)\\r\\n### The error may involve defaultParameterMap\\r\\n### The error occurred while setting parameters\\r\\n### SQL: SELECT  author_id,dynasty,create_time,author_name,dynasty_name,peotry_ids,introduction  FROM sys_peotry_author LIMIT ?\\r\\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'dynasty_name\' in \'field list\'\\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'dynasty_name\' in \'field list\'\",\"status\":500,\"time\":\"2020-09-07T16:48:18.236\"},\"runTime\":\"196ms\",\"uid\":\"1\",\"url\":\"/King/peotry/author/list\"}', '2020-09-07 16:48:18');
INSERT INTO `sys_exce_log` VALUES (143, '/King/peotry/author/list', 'crown', 'org.king.project.peotry.controller.PeotryAuthorController.list()', '106ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryAuthorController.list()\",\"ip\":\"192.168.1.175\",\"loginName\":\"crown\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"org.springframework.jdbc.BadSqlGrammarException: \\r\\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'dynasty_name\' in \'field list\'\\r\\n### The error may exist in org/king/project/peotry/mapper/PeotryAuthorMapper.java (best guess)\\r\\n### The error may involve defaultParameterMap\\r\\n### The error occurred while setting parameters\\r\\n### SQL: SELECT  author_id,dynasty,create_time,author_name,dynasty_name,peotry_ids,introduction  FROM sys_peotry_author LIMIT ?\\r\\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'dynasty_name\' in \'field list\'\\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'dynasty_name\' in \'field list\'\",\"msg\":\"\\r\\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'dynasty_name\' in \'field list\'\\r\\n### The error may exist in org/king/project/peotry/mapper/PeotryAuthorMapper.java (best guess)\\r\\n### The error may involve defaultParameterMap\\r\\n### The error occurred while setting parameters\\r\\n### SQL: SELECT  author_id,dynasty,create_time,author_name,dynasty_name,peotry_ids,introduction  FROM sys_peotry_author LIMIT ?\\r\\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'dynasty_name\' in \'field list\'\\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'dynasty_name\' in \'field list\'\",\"status\":500,\"time\":\"2020-09-07T16:51:48.855\"},\"runTime\":\"106ms\",\"uid\":\"1\",\"url\":\"/King/peotry/author/list\"}', '2020-09-07 16:51:49');
INSERT INTO `sys_exce_log` VALUES (144, '/King/peotry/user/6', NULL, 'org.king.project.peotry.controller.PeotryUserController.getUser()', '0ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.getUser()\",\"ip\":\"36.5.144.117\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名未登录\",\"status\":401,\"time\":\"2020-09-07T17:19:29.940\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/user/6\"}', '2020-09-07 17:19:30');
INSERT INTO `sys_exce_log` VALUES (145, '/King/peotry/user/6', NULL, 'org.king.project.peotry.controller.PeotryUserController.getUser()', '0ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.getUser()\",\"ip\":\"36.5.144.117\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名未登录\",\"status\":401,\"time\":\"2020-09-07T17:20:14.159\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/user/6\"}', '2020-09-07 17:20:14');
INSERT INTO `sys_exce_log` VALUES (146, '/King/peotry/user/6', NULL, 'org.king.project.peotry.controller.PeotryUserController.getUser()', '0ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.getUser()\",\"ip\":\"36.5.144.117\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名未登录\",\"status\":401,\"time\":\"2020-09-07T17:20:20.909\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/user/6\"}', '2020-09-07 17:20:21');
INSERT INTO `sys_exce_log` VALUES (147, '/King/peotry/user/6', NULL, 'org.king.project.peotry.controller.PeotryUserController.getUser()', '0ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.getUser()\",\"ip\":\"36.5.144.117\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名未登录\",\"status\":401,\"time\":\"2020-09-07T17:22:25.440\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/user/6\"}', '2020-09-07 17:22:25');
INSERT INTO `sys_exce_log` VALUES (148, '/King/peotry/user/6', NULL, 'org.king.project.peotry.controller.PeotryUserController.getUser()', '0ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.getUser()\",\"ip\":\"36.5.144.117\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名未登录\",\"status\":401,\"time\":\"2020-09-07T17:23:18.956\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/user/6\"}', '2020-09-07 17:23:19');
INSERT INTO `sys_exce_log` VALUES (149, '/King/peotry/user/6', NULL, 'org.king.project.peotry.controller.PeotryUserController.getUser()', '15ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.getUser()\",\"ip\":\"36.5.144.117\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名未登录\",\"status\":401,\"time\":\"2020-09-07T17:27:25.862\"},\"runTime\":\"15ms\",\"url\":\"/King/peotry/user/6\"}', '2020-09-07 17:27:26');
INSERT INTO `sys_exce_log` VALUES (150, '/King/peotry/user/6', NULL, 'org.king.project.peotry.controller.PeotryUserController.getUser()', '0ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.getUser()\",\"ip\":\"36.5.144.117\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名未登录\",\"status\":401,\"time\":\"2020-09-07T17:44:02.081\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/user/6\"}', '2020-09-07 17:44:02');
INSERT INTO `sys_exce_log` VALUES (151, '/King/peotry/user/6', NULL, 'org.king.project.peotry.controller.PeotryUserController.getUser()', '15ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.getUser()\",\"ip\":\"36.5.144.117\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名未登录\",\"status\":401,\"time\":\"2020-09-07T17:46:27.612\"},\"runTime\":\"15ms\",\"url\":\"/King/peotry/user/6\"}', '2020-09-07 17:46:28');
INSERT INTO `sys_exce_log` VALUES (152, '/King/peotry/user/6', NULL, 'org.king.project.peotry.controller.PeotryUserController.getUser()', '0ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.getUser()\",\"ip\":\"36.5.144.117\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名未登录\",\"status\":401,\"time\":\"2020-09-07T17:48:09.081\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/user/6\"}', '2020-09-07 17:48:09');
INSERT INTO `sys_exce_log` VALUES (153, '/King/peotry/user/6', NULL, 'org.king.project.peotry.controller.PeotryUserController.getUser()', '0ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.getUser()\",\"ip\":\"36.5.144.117\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名未登录\",\"status\":401,\"time\":\"2020-09-07T17:49:55.206\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/user/6\"}', '2020-09-07 17:49:55');
INSERT INTO `sys_exce_log` VALUES (154, '/King/peotry/user/6', NULL, 'org.king.project.peotry.controller.PeotryUserController.getUser()', '15ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.getUser()\",\"ip\":\"36.5.144.117\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名未登录\",\"status\":401,\"time\":\"2020-09-07T17:50:35.721\"},\"runTime\":\"15ms\",\"url\":\"/King/peotry/user/6\"}', '2020-09-07 17:50:36');
INSERT INTO `sys_exce_log` VALUES (155, '/King/peotry/user/6', NULL, 'org.king.project.peotry.controller.PeotryUserController.getUser()', '0ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.getUser()\",\"ip\":\"36.5.144.117\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名未登录\",\"status\":401,\"time\":\"2020-09-07T17:53:06.971\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/user/6\"}', '2020-09-07 17:53:07');
INSERT INTO `sys_exce_log` VALUES (156, '/King/peotry/user/6', NULL, 'org.king.project.peotry.controller.PeotryUserController.getUser()', '0ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.getUser()\",\"ip\":\"36.5.144.117\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名未登录\",\"status\":401,\"time\":\"2020-09-07T17:53:59.143\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/user/6\"}', '2020-09-07 17:53:59');
INSERT INTO `sys_exce_log` VALUES (157, '/King/peotry/user/6', NULL, 'org.king.project.peotry.controller.PeotryUserController.getUser()', '0ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.getUser()\",\"ip\":\"36.5.144.117\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名未登录\",\"status\":401,\"time\":\"2020-09-07T17:54:52.752\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/user/6\"}', '2020-09-07 17:54:53');
INSERT INTO `sys_exce_log` VALUES (158, '/King/peotry/user/6', NULL, 'org.king.project.peotry.controller.PeotryUserController.getUser()', '16ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.getUser()\",\"ip\":\"36.5.144.117\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名未登录\",\"status\":401,\"time\":\"2020-09-07T17:55:27.612\"},\"runTime\":\"16ms\",\"url\":\"/King/peotry/user/6\"}', '2020-09-07 17:55:28');
INSERT INTO `sys_exce_log` VALUES (159, '/King/peotry/user/6', NULL, 'org.king.project.peotry.controller.PeotryUserController.getUser()', '3ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.getUser()\",\"ip\":\"36.5.144.117\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名未登录\",\"status\":401,\"time\":\"2020-09-07T17:56:11.087\"},\"runTime\":\"3ms\",\"url\":\"/King/peotry/user/6\"}', '2020-09-07 17:56:11');
INSERT INTO `sys_exce_log` VALUES (160, '/King/peotry/user/6', NULL, 'org.king.project.peotry.controller.PeotryUserController.getUser()', '3ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.getUser()\",\"ip\":\"36.5.144.117\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名未登录\",\"status\":401,\"time\":\"2020-09-07T17:56:45.281\"},\"runTime\":\"3ms\",\"url\":\"/King/peotry/user/6\"}', '2020-09-07 17:56:45');
INSERT INTO `sys_exce_log` VALUES (161, '/King/peotry/user/6', NULL, 'org.king.project.peotry.controller.PeotryUserController.getUser()', '0ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.getUser()\",\"ip\":\"36.5.144.117\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名未登录\",\"status\":401,\"time\":\"2020-09-07T18:00:17.831\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/user/6\"}', '2020-09-07 18:00:18');
INSERT INTO `sys_exce_log` VALUES (162, '/King/peotry/user/6', NULL, 'org.king.project.peotry.controller.PeotryUserController.getUser()', '0ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.getUser()\",\"ip\":\"36.5.144.117\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名未登录\",\"status\":401,\"time\":\"2020-09-07T18:01:18.799\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/user/6\"}', '2020-09-07 18:01:19');
INSERT INTO `sys_exce_log` VALUES (163, '/King/peotry/user/6', NULL, 'org.king.project.peotry.controller.PeotryUserController.getUser()', '0ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.getUser()\",\"ip\":\"36.5.144.117\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名未登录\",\"status\":401,\"time\":\"2020-09-07T18:01:52.987\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/user/6\"}', '2020-09-07 18:01:53');
INSERT INTO `sys_exce_log` VALUES (164, '/King/peotry/user/6', NULL, 'org.king.project.peotry.controller.PeotryUserController.getUser()', '0ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.getUser()\",\"ip\":\"36.5.144.117\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名未登录\",\"status\":401,\"time\":\"2020-09-07T18:05:12.721\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/user/6\"}', '2020-09-07 18:05:13');
INSERT INTO `sys_exce_log` VALUES (165, '/King/peotry/user/6', NULL, 'org.king.project.peotry.controller.PeotryUserController.getUser()', '0ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.getUser()\",\"ip\":\"36.5.144.117\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名未登录\",\"status\":401,\"time\":\"2020-09-07T18:05:37.456\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/user/6\"}', '2020-09-07 18:05:38');
INSERT INTO `sys_exce_log` VALUES (166, '/King/peotry/user/6', NULL, 'org.king.project.peotry.controller.PeotryUserController.getUser()', '0ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.getUser()\",\"ip\":\"36.5.144.117\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名未登录\",\"status\":401,\"time\":\"2020-09-07T18:12:12.409\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/user/6\"}', '2020-09-07 18:12:12');
INSERT INTO `sys_exce_log` VALUES (167, '/King/peotry/author/7', 'crown', 'org.king.project.peotry.controller.PeotryAuthorController.getAuthor()', '50ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryAuthorController.getAuthor()\",\"ip\":\"0:0:0:0:0:0:0:1\",\"loginName\":\"crown\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=\'authorId\', mode=IN, javaType=class java.lang.Long, jdbcType=null, numericScale=null, resultMapId=\'null\', jdbcTypeName=\'null\', expression=\'null\'}. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: java.lang.ClassCastException: java.lang.Integer cannot be cast to java.lang.Long\",\"msg\":\"nested exception is org.apache.ibatis.type.TypeException: Could not set parameters for mapping: ParameterMapping{property=\'authorId\', mode=IN, javaType=class java.lang.Long, jdbcType=null, numericScale=null, resultMapId=\'null\', jdbcTypeName=\'null\', expression=\'null\'}. Cause: org.apache.ibatis.type.TypeException: Error setting non null for parameter #1 with JdbcType null . Try setting a different JdbcType for this parameter or a different configuration property. Cause: java.lang.ClassCastException: java.lang.Integer cannot be cast to java.lang.Long\",\"status\":500,\"time\":\"2020-09-07T19:48:58.928\"},\"runTime\":\"50ms\",\"uid\":\"1\",\"url\":\"/King/peotry/author/7\"}', '2020-09-07 19:48:59');
INSERT INTO `sys_exce_log` VALUES (168, '/King/peotry/user/6', NULL, 'org.king.project.peotry.controller.PeotryUserController.getUser()', '32ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.getUser()\",\"ip\":\"114.102.186.40\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名未登录\",\"status\":401,\"time\":\"2020-09-07T22:23:50.331\"},\"runTime\":\"32ms\",\"url\":\"/King/peotry/user/6\"}', '2020-09-07 22:23:50');
INSERT INTO `sys_exce_log` VALUES (169, '/King/peotry/author/list', NULL, 'org.king.project.peotry.controller.PeotryAuthorController.list()', '46ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryAuthorController.list()\",\"ip\":\"127.0.0.1\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.builder.BuilderException: Error evaluating expression \'ew.entity.introduction != null and ew.entity.introduction != \'\'\'. Cause: org.apache.ibatis.ognl.OgnlException: introduction [java.lang.NullPointerException]\",\"msg\":\"nested exception is org.apache.ibatis.builder.BuilderException: Error evaluating expression \'ew.entity.introduction != null and ew.entity.introduction != \'\'\'. Cause: org.apache.ibatis.ognl.OgnlException: introduction [java.lang.NullPointerException]\",\"status\":500,\"time\":\"2020-09-07T23:03:22.839\"},\"runTime\":\"46ms\",\"url\":\"/King/peotry/author/list\"}', '2020-09-07 23:03:23');
INSERT INTO `sys_exce_log` VALUES (170, '/King/peotry/author/list', NULL, 'org.king.project.peotry.controller.PeotryAuthorController.list()', '5ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryAuthorController.list()\",\"ip\":\"127.0.0.1\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.builder.BuilderException: Error evaluating expression \'ew.entity.introduction != null and ew.entity.introduction != \'\'\'. Cause: org.apache.ibatis.ognl.OgnlException: introduction [java.lang.NullPointerException]\",\"msg\":\"nested exception is org.apache.ibatis.builder.BuilderException: Error evaluating expression \'ew.entity.introduction != null and ew.entity.introduction != \'\'\'. Cause: org.apache.ibatis.ognl.OgnlException: introduction [java.lang.NullPointerException]\",\"status\":500,\"time\":\"2020-09-07T23:06:01.484\"},\"runTime\":\"5ms\",\"url\":\"/King/peotry/author/list\"}', '2020-09-07 23:06:02');
INSERT INTO `sys_exce_log` VALUES (171, '/King/peotry/author/list', NULL, 'org.king.project.peotry.controller.PeotryAuthorController.list()', '48ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryAuthorController.list()\",\"ip\":\"127.0.0.1\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.builder.BuilderException: Error evaluating expression \'ew.entity.introduction != null and ew.entity.introduction != \'\'\'. Cause: org.apache.ibatis.ognl.OgnlException: introduction [java.lang.NullPointerException]\",\"msg\":\"nested exception is org.apache.ibatis.builder.BuilderException: Error evaluating expression \'ew.entity.introduction != null and ew.entity.introduction != \'\'\'. Cause: org.apache.ibatis.ognl.OgnlException: introduction [java.lang.NullPointerException]\",\"status\":500,\"time\":\"2020-09-07T23:07:16.174\"},\"runTime\":\"48ms\",\"url\":\"/King/peotry/author/list\"}', '2020-09-07 23:07:16');
INSERT INTO `sys_exce_log` VALUES (172, '/King/peotry/collection/list', NULL, 'org.king.project.peotry.controller.PeotryCollectionController.list()', '76ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryCollectionController.list()\",\"ip\":\"127.0.0.1\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.PersistenceException: \\r\\n### Error querying database.  Cause: java.lang.NullPointerException\\r\\n### The error may exist in file [E:\\\\Program Files\\\\JetBrains\\\\IntelliJ IDEA 2020.2.1 Project\\\\King\\\\out\\\\production\\\\resources\\\\mapper\\\\peotry\\\\PeotryCollectionMapper.xml]\\r\\n### The error may involve org.king.project.peotry.mapper.PeotryCollectionMapper.selectPeotryCollectionList_COUNT\\r\\n### The error occurred while handling results\\r\\n### SQL: SELECT count(0) FROM sys_peotry_collection INNER JOIN sys_peotry_author ON sys_peotry_collection.author_id = sys_peotry_author.author_id WHERE 1 = 1\\r\\n### Cause: java.lang.NullPointerException\",\"msg\":\"nested exception is org.apache.ibatis.exceptions.PersistenceException: \\r\\n### Error querying database.  Cause: java.lang.NullPointerException\\r\\n### The error may exist in file [E:\\\\Program Files\\\\JetBrains\\\\IntelliJ IDEA 2020.2.1 Project\\\\King\\\\out\\\\production\\\\resources\\\\mapper\\\\peotry\\\\PeotryCollectionMapper.xml]\\r\\n### The error may involve org.king.project.peotry.mapper.PeotryCollectionMapper.selectPeotryCollectionList_COUNT\\r\\n### The error occurred while handling results\\r\\n### SQL: SELECT count(0) FROM sys_peotry_collection INNER JOIN sys_peotry_author ON sys_peotry_collection.author_id = sys_peotry_author.author_id WHERE 1 = 1\\r\\n### Cause: java.lang.NullPointerException\",\"status\":500,\"time\":\"2020-09-07T23:07:27.801\"},\"runTime\":\"76ms\",\"url\":\"/King/peotry/collection/list\"}', '2020-09-07 23:07:28');
INSERT INTO `sys_exce_log` VALUES (173, '/King/peotry/author/list', NULL, 'org.king.project.peotry.controller.PeotryAuthorController.list()', '47ms', '内网IP', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryAuthorController.list()\",\"ip\":\"127.0.0.1\",\"method\":\"POST\",\"parameterMap\":{},\"result\":{\"error\":\"INTERNAL_SERVER_ERROR\",\"exception\":\"org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.builder.BuilderException: Error evaluating expression \'ew.entity.introduction != null and ew.entity.introduction != \'\'\'. Cause: org.apache.ibatis.ognl.OgnlException: introduction [java.lang.NullPointerException]\",\"msg\":\"nested exception is org.apache.ibatis.builder.BuilderException: Error evaluating expression \'ew.entity.introduction != null and ew.entity.introduction != \'\'\'. Cause: org.apache.ibatis.ognl.OgnlException: introduction [java.lang.NullPointerException]\",\"status\":500,\"time\":\"2020-09-07T23:10:22.349\"},\"runTime\":\"47ms\",\"url\":\"/King/peotry/author/list\"}', '2020-09-07 23:10:22');
INSERT INTO `sys_exce_log` VALUES (174, '/King/peotry/collection/(null)', NULL, '-', '16ms', '未获取地址', '{\"ip\":\"114.102.186.40\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"BAD_REQUEST\",\"exception\":\"org.springframework.web.method.annotation.MethodArgumentTypeMismatchException: Failed to convert value of type \'java.lang.String\' to required type \'java.lang.Long\'; nested exception is java.lang.NumberFormatException: For input string: \\\"(null)\\\"\",\"msg\":\"请求参数有误\",\"status\":400,\"time\":\"2020-09-07T23:58:14.690\"},\"runTime\":\"16ms\",\"url\":\"/King/peotry/collection/(null)\"}', '2020-09-07 23:58:15');
INSERT INTO `sys_exce_log` VALUES (175, '/King/peotry/user/6', NULL, 'org.king.project.peotry.controller.PeotryUserController.getUser()', '16ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.getUser()\",\"ip\":\"114.102.186.40\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名未登录\",\"status\":401,\"time\":\"2020-09-08T00:05:01.909\"},\"runTime\":\"16ms\",\"url\":\"/King/peotry/user/6\"}', '2020-09-08 00:05:02');
INSERT INTO `sys_exce_log` VALUES (176, '/King/peotry/author/list', NULL, '-', '0ms', '未获取地址', '{\"ip\":\"114.102.186.40\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"BAD_REQUEST\",\"exception\":\"org.springframework.web.method.annotation.MethodArgumentTypeMismatchException: Failed to convert value of type \'java.lang.String\' to required type \'java.lang.Long\'; nested exception is java.lang.NumberFormatException: For input string: \\\"list\\\"\",\"msg\":\"请求参数有误\",\"status\":400,\"time\":\"2020-09-08T00:23:48.018\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/author/list\"}', '2020-09-08 00:23:48');
INSERT INTO `sys_exce_log` VALUES (177, '/King/peotry/author/list', NULL, '-', '16ms', '未获取地址', '{\"ip\":\"114.102.186.40\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"BAD_REQUEST\",\"exception\":\"org.springframework.web.method.annotation.MethodArgumentTypeMismatchException: Failed to convert value of type \'java.lang.String\' to required type \'java.lang.Long\'; nested exception is java.lang.NumberFormatException: For input string: \\\"list\\\"\",\"msg\":\"请求参数有误\",\"status\":400,\"time\":\"2020-09-08T00:24:31.612\"},\"runTime\":\"16ms\",\"url\":\"/King/peotry/author/list\"}', '2020-09-08 00:24:32');
INSERT INTO `sys_exce_log` VALUES (178, '/King/peotry/author/list', NULL, '-', '0ms', '未获取地址', '{\"ip\":\"114.102.186.40\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"BAD_REQUEST\",\"exception\":\"org.springframework.web.method.annotation.MethodArgumentTypeMismatchException: Failed to convert value of type \'java.lang.String\' to required type \'java.lang.Long\'; nested exception is java.lang.NumberFormatException: For input string: \\\"list\\\"\",\"msg\":\"请求参数有误\",\"status\":400,\"time\":\"2020-09-08T00:25:20.409\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/author/list\"}', '2020-09-08 00:25:20');
INSERT INTO `sys_exce_log` VALUES (179, '/King/peotry/author/list', NULL, '-', '16ms', '未获取地址', '{\"ip\":\"114.102.186.40\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"BAD_REQUEST\",\"exception\":\"org.springframework.web.method.annotation.MethodArgumentTypeMismatchException: Failed to convert value of type \'java.lang.String\' to required type \'java.lang.Long\'; nested exception is java.lang.NumberFormatException: For input string: \\\"list\\\"\",\"msg\":\"请求参数有误\",\"status\":400,\"time\":\"2020-09-08T00:25:35.768\"},\"runTime\":\"16ms\",\"url\":\"/King/peotry/author/list\"}', '2020-09-08 00:25:36');
INSERT INTO `sys_exce_log` VALUES (180, '/King/peotry/author/list', NULL, '-', '0ms', '未获取地址', '{\"ip\":\"114.102.186.40\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"BAD_REQUEST\",\"exception\":\"org.springframework.web.method.annotation.MethodArgumentTypeMismatchException: Failed to convert value of type \'java.lang.String\' to required type \'java.lang.Long\'; nested exception is java.lang.NumberFormatException: For input string: \\\"list\\\"\",\"msg\":\"请求参数有误\",\"status\":400,\"time\":\"2020-09-08T00:44:21.752\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/author/list\"}', '2020-09-08 00:44:22');
INSERT INTO `sys_exce_log` VALUES (181, '/King/peotry/author/list', NULL, '-', '16ms', '未获取地址', '{\"ip\":\"114.100.53.49\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"BAD_REQUEST\",\"exception\":\"org.springframework.web.method.annotation.MethodArgumentTypeMismatchException: Failed to convert value of type \'java.lang.String\' to required type \'java.lang.Long\'; nested exception is java.lang.NumberFormatException: For input string: \\\"list\\\"\",\"msg\":\"请求参数有误\",\"status\":400,\"time\":\"2020-09-08T16:35:03.768\"},\"runTime\":\"16ms\",\"url\":\"/King/peotry/author/list\"}', '2020-09-08 16:35:04');
INSERT INTO `sys_exce_log` VALUES (182, '/King/peotry/author/list', NULL, '-', '0ms', '未获取地址', '{\"ip\":\"114.100.53.49\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"BAD_REQUEST\",\"exception\":\"org.springframework.web.method.annotation.MethodArgumentTypeMismatchException: Failed to convert value of type \'java.lang.String\' to required type \'java.lang.Long\'; nested exception is java.lang.NumberFormatException: For input string: \\\"list\\\"\",\"msg\":\"请求参数有误\",\"status\":400,\"time\":\"2020-09-08T16:36:39.862\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/author/list\"}', '2020-09-08 16:36:40');
INSERT INTO `sys_exce_log` VALUES (183, '/King/peotry/author/list', NULL, '-', '0ms', '未获取地址', '{\"ip\":\"114.100.53.49\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"BAD_REQUEST\",\"exception\":\"org.springframework.web.method.annotation.MethodArgumentTypeMismatchException: Failed to convert value of type \'java.lang.String\' to required type \'java.lang.Long\'; nested exception is java.lang.NumberFormatException: For input string: \\\"list\\\"\",\"msg\":\"请求参数有误\",\"status\":400,\"time\":\"2020-09-08T16:38:18.909\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/author/list\"}', '2020-09-08 16:38:19');
INSERT INTO `sys_exce_log` VALUES (184, '/King/peotry/user/6', NULL, 'org.king.project.peotry.controller.PeotryUserController.getUser()', '16ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.getUser()\",\"ip\":\"114.100.53.49\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名未登录\",\"status\":401,\"time\":\"2020-09-08T17:28:19.143\"},\"runTime\":\"16ms\",\"url\":\"/King/peotry/user/6\"}', '2020-09-08 17:28:19');
INSERT INTO `sys_exce_log` VALUES (185, '/King/peotry/user/6', NULL, 'org.king.project.peotry.controller.PeotryUserController.getUser()', '0ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.getUser()\",\"ip\":\"114.100.53.49\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名未登录\",\"status\":401,\"time\":\"2020-09-08T17:31:42.331\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/user/6\"}', '2020-09-08 17:31:42');
INSERT INTO `sys_exce_log` VALUES (186, '/King/peotry/user/edit', NULL, '-', '109ms', '未获取地址', '{\"ip\":\"114.100.53.49\",\"method\":\"POST\",\"parameterMap\":{\"userName\":[\"abc\"]},\"result\":{\"error\":\"BAD_REQUEST\",\"exception\":\"org.springframework.validation.BindException: org.springframework.validation.BeanPropertyBindingResult: 1 errors\\nField error in object \'peotryUser\' on field \'loginName\': rejected value [null]; codes [NotBlank.peotryUser.loginName,NotBlank.loginName,NotBlank.java.lang.String,NotBlank]; arguments [org.springframework.context.support.DefaultMessageSourceResolvable: codes [peotryUser.loginName,loginName]; arguments []; default message [loginName]]; default message [登录账号不能为空]\",\"msg\":\"登录账号不能为空\",\"status\":400,\"time\":\"2020-09-08T17:31:53.752\"},\"runTime\":\"109ms\",\"url\":\"/King/peotry/user/edit\"}', '2020-09-08 17:31:54');
INSERT INTO `sys_exce_log` VALUES (187, '/King/peotry/user/6', NULL, 'org.king.project.peotry.controller.PeotryUserController.getUser()', '0ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.getUser()\",\"ip\":\"114.100.53.49\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名未登录\",\"status\":401,\"time\":\"2020-09-08T17:34:08.393\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/user/6\"}', '2020-09-08 17:34:08');
INSERT INTO `sys_exce_log` VALUES (188, '/King/peotry/user/6', NULL, 'org.king.project.peotry.controller.PeotryUserController.getUser()', '0ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.getUser()\",\"ip\":\"114.100.53.49\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名未登录\",\"status\":401,\"time\":\"2020-09-08T17:36:49.393\"},\"runTime\":\"0ms\",\"url\":\"/King/peotry/user/6\"}', '2020-09-08 17:36:49');
INSERT INTO `sys_exce_log` VALUES (189, '/King/peotry/user/6', NULL, 'org.king.project.peotry.controller.PeotryUserController.getUser()', '19ms', '未获取地址', '{\"actionMethod\":\"org.king.project.peotry.controller.PeotryUserController.getUser()\",\"ip\":\"58.243.250.171\",\"method\":\"GET\",\"parameterMap\":{},\"result\":{\"error\":\"MSG_EXCEPTION\",\"msg\":\"用户名未登录\",\"status\":401,\"time\":\"2020-09-08T18:15:10.770\"},\"runTime\":\"19ms\",\"url\":\"/King/peotry/user/6\"}', '2020-09-08 18:15:26');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL,
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '任务名称',
  `class_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Class名称',
  `job_params` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '{}' COMMENT '参数',
  `cron` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'cron表达式',
  `paused` bit(1) NOT NULL COMMENT '是否启动',
  `remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '备注',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `deleted` bit(1) NULL DEFAULT NULL COMMENT '删除标志（0代表存在 1代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`job_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '定时任务' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '欢迎来到king', 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '{}', '0 0/5 * * * ?', b'0', '欢迎来到king', '2019-09-10 18:10:00', '2019-05-29 15:40:41', b'0', 'king', NULL);

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Class名称',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `cron` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'cron表达式',
  `exception` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '异常信息',
  `status` smallint(1) NOT NULL COMMENT '执行状态（1成功 0失败）',
  `job_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_params` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数',
  `run_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '运行时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1601 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
INSERT INTO `sys_job_log` VALUES (1, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-03 23:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '2ms');
INSERT INTO `sys_job_log` VALUES (2, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-03 23:10:13', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1281ms');
INSERT INTO `sys_job_log` VALUES (3, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-03 23:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (4, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-03 23:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (5, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-03 23:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (6, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 00:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (7, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 00:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (8, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 00:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (9, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 00:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (10, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 00:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (11, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 00:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (12, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 00:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (13, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 00:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (14, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 00:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (15, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 00:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (16, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 00:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (17, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 00:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (18, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 01:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (19, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 01:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (20, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 01:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (21, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 01:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (22, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 01:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (23, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 01:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (24, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 01:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (25, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 01:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (26, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 01:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (27, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 01:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (28, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 01:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (29, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 01:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (30, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 02:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (31, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 02:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (32, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 02:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (33, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 02:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (34, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 02:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (35, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 02:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (36, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 02:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (37, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 02:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (38, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 02:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (39, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 02:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (40, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 02:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (41, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 02:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (42, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 03:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (43, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 03:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (44, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 03:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (45, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 03:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (46, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 03:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (47, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 03:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (48, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 03:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (49, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 03:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (50, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 03:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (51, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 03:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (52, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 03:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (53, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 03:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (54, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 04:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (55, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 04:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (56, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 04:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (57, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 04:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (58, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 04:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (59, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 04:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (60, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 04:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (61, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 04:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (62, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 04:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (63, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 04:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (64, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 04:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (65, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 04:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (66, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 05:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (67, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 05:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (68, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 05:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (69, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 05:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (70, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 05:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (71, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 05:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (72, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 05:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (73, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 05:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (74, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 05:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (75, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 05:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (76, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 05:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (77, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 05:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (78, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 06:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (79, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 06:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (80, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 06:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (81, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 06:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (82, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 06:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (83, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 06:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (84, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 06:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (85, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 06:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (86, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 06:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (87, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 06:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (88, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 06:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (89, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 06:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (90, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 07:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (91, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 07:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (92, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 07:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (93, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 07:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (94, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 07:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (95, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 07:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (96, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 07:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (97, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 07:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (98, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 07:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (99, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 07:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (100, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 07:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (101, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 07:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (102, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 08:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (103, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 08:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (104, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 08:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (105, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 08:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (106, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 08:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (107, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 08:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (108, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 08:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (109, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 08:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (110, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 08:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (111, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 08:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (112, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 08:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (113, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 08:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (114, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 09:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (115, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 09:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (116, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 09:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (117, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 09:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (118, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 09:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (119, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 09:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (120, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 09:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (121, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 09:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (122, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 09:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (123, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 09:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (124, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 09:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (125, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 09:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (126, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 10:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (127, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 10:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (128, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 10:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '5ms');
INSERT INTO `sys_job_log` VALUES (129, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 10:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (130, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 10:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '12ms');
INSERT INTO `sys_job_log` VALUES (131, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 10:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (132, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 10:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '6ms');
INSERT INTO `sys_job_log` VALUES (133, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 10:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (134, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 10:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '21ms');
INSERT INTO `sys_job_log` VALUES (135, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 10:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (136, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 10:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '4ms');
INSERT INTO `sys_job_log` VALUES (137, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 10:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (138, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 10:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '3ms');
INSERT INTO `sys_job_log` VALUES (139, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 10:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (140, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 10:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '21ms');
INSERT INTO `sys_job_log` VALUES (141, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 10:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (142, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 10:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '14ms');
INSERT INTO `sys_job_log` VALUES (143, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 10:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (144, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 10:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '11ms');
INSERT INTO `sys_job_log` VALUES (145, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 10:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (146, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 10:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '9ms');
INSERT INTO `sys_job_log` VALUES (147, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 10:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (148, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 11:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '5ms');
INSERT INTO `sys_job_log` VALUES (149, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 11:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (150, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 11:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '15ms');
INSERT INTO `sys_job_log` VALUES (151, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 11:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (152, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 11:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (153, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 11:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '4ms');
INSERT INTO `sys_job_log` VALUES (154, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 11:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (155, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 11:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '9ms');
INSERT INTO `sys_job_log` VALUES (156, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 11:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (157, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 11:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (158, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 11:25:40', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1292ms');
INSERT INTO `sys_job_log` VALUES (159, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 11:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '111ms');
INSERT INTO `sys_job_log` VALUES (160, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 11:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (161, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 11:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (162, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 11:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (163, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 11:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '8ms');
INSERT INTO `sys_job_log` VALUES (164, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 11:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (165, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 11:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '72ms');
INSERT INTO `sys_job_log` VALUES (166, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 11:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (167, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 11:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (168, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 12:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (169, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 12:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (170, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 12:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (171, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 12:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (172, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 12:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (173, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 12:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (174, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 12:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (175, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 12:32:01', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '5ms');
INSERT INTO `sys_job_log` VALUES (176, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 12:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (177, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 12:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '9ms');
INSERT INTO `sys_job_log` VALUES (178, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 12:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (179, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 12:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (180, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 12:45:29', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '319ms');
INSERT INTO `sys_job_log` VALUES (181, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 12:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (182, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 12:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '7ms');
INSERT INTO `sys_job_log` VALUES (183, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 12:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (184, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 12:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '21ms');
INSERT INTO `sys_job_log` VALUES (185, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 13:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (186, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 13:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '7ms');
INSERT INTO `sys_job_log` VALUES (187, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 13:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (188, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 13:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '14ms');
INSERT INTO `sys_job_log` VALUES (189, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 13:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (190, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 13:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '21ms');
INSERT INTO `sys_job_log` VALUES (191, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 13:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (192, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 13:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '7ms');
INSERT INTO `sys_job_log` VALUES (193, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 13:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (194, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 13:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '3ms');
INSERT INTO `sys_job_log` VALUES (195, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 13:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (196, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 13:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '12ms');
INSERT INTO `sys_job_log` VALUES (197, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 13:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (198, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 13:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '12ms');
INSERT INTO `sys_job_log` VALUES (199, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 13:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (200, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 13:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '4ms');
INSERT INTO `sys_job_log` VALUES (201, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 13:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (202, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 13:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '22ms');
INSERT INTO `sys_job_log` VALUES (203, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 13:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (204, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 13:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '23ms');
INSERT INTO `sys_job_log` VALUES (205, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 13:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (206, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 13:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '15ms');
INSERT INTO `sys_job_log` VALUES (207, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 13:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (208, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 13:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '5ms');
INSERT INTO `sys_job_log` VALUES (209, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 14:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (210, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 14:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '4ms');
INSERT INTO `sys_job_log` VALUES (211, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 14:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (212, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 14:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '3ms');
INSERT INTO `sys_job_log` VALUES (213, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 14:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (214, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 14:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '5ms');
INSERT INTO `sys_job_log` VALUES (215, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 14:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '2ms');
INSERT INTO `sys_job_log` VALUES (216, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 14:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (217, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 14:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '5ms');
INSERT INTO `sys_job_log` VALUES (218, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 14:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (219, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 14:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '63ms');
INSERT INTO `sys_job_log` VALUES (220, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 14:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (221, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 14:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '11ms');
INSERT INTO `sys_job_log` VALUES (222, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 14:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (223, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 14:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '4ms');
INSERT INTO `sys_job_log` VALUES (224, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 14:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (225, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 14:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (226, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 14:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (227, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 15:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (228, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 15:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (229, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 15:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (230, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 15:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (231, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 15:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (232, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 15:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (233, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 15:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (234, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 15:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (235, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 15:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (236, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 15:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (237, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 16:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (238, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 16:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (239, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 16:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (240, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 16:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (241, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 16:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (242, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 16:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (243, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 16:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (244, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 16:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (245, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 16:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (246, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 16:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (247, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 16:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (248, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 16:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (249, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 17:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (250, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 17:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (251, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 17:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (252, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 17:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (253, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 17:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (254, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 17:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (255, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 17:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (256, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 17:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (257, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 17:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (258, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 17:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (259, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 17:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (260, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 17:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (261, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 18:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (262, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 18:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (263, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 18:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (264, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 18:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (265, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 18:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (266, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 18:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (267, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 18:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (268, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 18:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (269, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 18:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (270, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 18:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (271, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 18:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (272, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 18:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (273, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 19:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (274, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 19:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (275, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 19:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (276, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 19:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (277, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 19:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (278, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 19:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (279, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 19:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (280, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 19:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (281, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 19:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (282, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 19:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (283, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 19:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (284, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 19:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (285, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 20:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (286, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 20:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (287, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 20:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (288, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 20:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (289, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 20:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (290, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 20:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (291, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 20:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (292, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 20:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (293, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 20:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (294, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 20:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (295, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 20:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (296, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 20:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (297, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 21:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (298, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 21:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (299, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 21:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (300, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 21:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (301, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 21:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (302, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 21:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (303, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 21:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (304, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 21:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (305, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 21:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (306, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 21:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (307, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 21:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (308, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 21:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (309, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 22:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (310, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 22:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (311, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 22:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (312, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 22:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (313, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 22:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (314, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 22:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (315, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 22:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (316, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 22:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (317, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 22:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (318, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 22:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (319, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 22:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (320, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 22:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (321, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 23:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (322, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 23:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (323, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 23:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (324, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 23:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (325, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 23:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (326, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 23:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (327, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 23:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (328, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 23:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (329, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 23:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (330, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 23:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (331, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 23:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (332, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-04 23:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (333, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 00:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (334, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 00:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (335, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 00:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (336, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 00:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (337, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 00:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (338, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 00:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (339, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 00:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (340, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 00:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (341, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 00:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (342, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 00:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (343, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 00:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (344, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 00:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (345, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 01:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (346, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 01:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (347, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 01:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (348, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 01:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (349, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 01:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (350, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 01:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (351, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 01:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (352, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 01:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (353, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 01:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (354, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 01:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (355, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 01:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (356, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 01:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (357, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 02:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (358, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 02:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (359, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 02:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (360, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 02:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (361, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 02:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (362, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 02:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (363, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 02:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (364, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 02:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (365, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 02:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (366, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 02:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (367, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 02:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (368, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 02:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (369, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 03:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (370, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 03:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (371, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 03:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (372, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 03:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (373, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 03:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (374, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 03:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (375, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 03:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (376, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 03:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (377, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 03:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (378, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 03:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (379, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 03:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (380, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 03:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (381, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 04:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (382, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 04:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (383, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 04:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (384, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 04:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (385, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 04:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (386, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 04:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (387, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 04:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (388, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 04:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (389, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 04:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (390, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 04:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (391, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 04:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (392, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 04:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (393, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 05:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (394, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 05:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (395, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 05:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (396, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 05:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (397, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 05:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (398, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 05:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (399, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 05:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (400, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 05:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (401, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 05:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (402, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 05:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (403, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 05:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (404, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 05:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (405, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 06:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (406, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 06:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (407, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 06:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (408, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 06:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (409, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 06:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (410, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 06:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (411, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 06:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (412, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 06:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (413, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 06:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (414, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 06:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (415, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 06:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (416, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 06:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (417, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 07:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (418, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 07:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (419, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 07:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (420, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 07:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (421, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 07:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (422, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 07:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (423, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 07:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (424, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 07:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (425, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 07:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (426, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 07:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (427, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 07:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (428, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 07:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (429, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 08:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (430, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 08:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (431, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 08:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (432, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 08:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (433, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 08:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (434, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 08:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (435, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 08:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (436, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 08:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (437, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 08:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (438, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 08:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (439, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 08:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (440, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 08:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (441, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 09:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (442, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 09:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (443, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 09:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (444, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 09:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (445, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 09:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (446, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 09:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (447, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 09:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (448, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 09:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (449, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 09:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (450, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 09:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (451, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 09:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (452, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 09:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (453, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 10:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (454, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 10:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (455, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 10:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (456, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 10:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (457, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 10:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (458, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 10:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (459, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 10:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (460, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 10:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (461, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 10:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (462, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 10:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (463, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 10:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (464, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 10:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (465, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 11:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (466, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 11:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (467, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 11:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (468, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 11:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (469, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 11:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (470, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 11:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (471, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 11:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (472, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 11:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (473, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 11:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (474, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 11:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (475, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 11:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (476, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 11:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (477, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 12:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (478, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 12:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (479, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 12:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (480, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 12:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (481, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 12:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (482, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 12:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (483, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 12:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (484, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 12:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (485, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 12:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (486, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 12:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (487, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 12:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (488, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 12:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (489, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 13:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (490, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 13:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (491, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 13:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (492, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 13:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (493, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 13:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (494, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 13:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (495, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 13:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (496, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 13:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (497, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 13:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (498, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 13:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (499, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 13:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (500, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 13:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (501, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 14:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (502, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 14:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (503, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 14:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (504, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 14:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (505, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 14:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (506, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 14:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (507, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 14:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (508, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 14:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (509, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 14:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (510, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 14:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (511, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 14:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (512, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 14:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (513, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 15:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (514, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 15:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (515, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 15:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (516, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 15:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (517, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 15:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (518, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 15:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (519, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 15:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (520, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 15:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (521, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 15:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (522, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 15:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (523, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 15:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (524, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 15:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (525, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 16:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (526, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 16:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (527, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 16:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (528, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 16:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (529, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 16:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (530, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 16:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (531, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 16:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (532, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 16:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (533, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 16:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (534, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 16:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (535, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 16:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (536, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 16:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (537, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 17:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '16ms');
INSERT INTO `sys_job_log` VALUES (538, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 17:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (539, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 17:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (540, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 17:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (541, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 17:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (542, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 17:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (543, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 17:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (544, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 17:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (545, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 17:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (546, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 17:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (547, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 17:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (548, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 17:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (549, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 18:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (550, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 18:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (551, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 18:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (552, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 18:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (553, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 18:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (554, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 18:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (555, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 18:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (556, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 18:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (557, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 18:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (558, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 18:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (559, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 18:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (560, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 18:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (561, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 19:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (562, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 19:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (563, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 19:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (564, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 19:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (565, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 19:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (566, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 19:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (567, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 19:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (568, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 19:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (569, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 19:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (570, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 19:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (571, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 19:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (572, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 19:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (573, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 20:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (574, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 20:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (575, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 20:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (576, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 20:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (577, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 20:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (578, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 20:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (579, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 20:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (580, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 20:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (581, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 20:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (582, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 20:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (583, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 20:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (584, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 20:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (585, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 21:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (586, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 21:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (587, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 21:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (588, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 21:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (589, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 21:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (590, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 21:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (591, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 21:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (592, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 21:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (593, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 21:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (594, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 21:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (595, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 21:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (596, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 21:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (597, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 22:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (598, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 22:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (599, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 22:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (600, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 22:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (601, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 22:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (602, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 22:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (603, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 22:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (604, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 22:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (605, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 22:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (606, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 22:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (607, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 22:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (608, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 22:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (609, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 23:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (610, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 23:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (611, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 23:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (612, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 23:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (613, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 23:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (614, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 23:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (615, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 23:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '2ms');
INSERT INTO `sys_job_log` VALUES (616, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 23:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (617, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 23:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (618, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 23:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (619, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 23:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (620, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-05 23:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (621, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 00:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (622, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 00:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (623, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 00:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (624, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 00:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (625, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 00:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (626, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 00:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (627, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 00:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (628, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 00:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (629, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 00:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (630, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 00:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (631, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 00:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (632, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 00:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (633, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 01:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (634, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 01:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (635, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 01:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (636, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 01:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (637, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 01:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (638, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 01:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (639, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 01:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (640, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 01:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (641, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 01:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (642, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 01:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (643, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 01:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (644, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 01:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (645, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 02:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (646, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 02:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (647, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 02:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (648, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 02:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (649, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 02:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (650, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 02:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (651, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 02:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (652, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 02:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (653, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 02:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (654, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 02:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (655, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 02:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (656, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 02:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (657, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 03:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (658, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 03:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (659, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 03:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (660, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 03:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (661, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 03:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (662, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 03:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (663, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 03:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (664, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 03:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (665, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 03:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (666, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 03:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (667, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 03:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (668, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 03:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (669, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 04:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (670, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 04:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (671, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 04:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (672, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 04:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (673, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 04:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (674, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 04:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (675, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 04:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (676, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 04:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (677, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 04:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (678, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 04:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (679, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 04:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (680, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 04:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (681, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 05:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (682, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 05:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (683, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 05:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (684, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 05:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (685, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 05:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (686, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 05:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (687, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 05:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (688, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 05:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (689, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 05:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (690, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 05:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (691, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 05:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (692, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 05:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (693, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 06:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (694, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 06:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (695, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 06:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (696, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 06:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (697, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 06:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (698, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 06:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '16ms');
INSERT INTO `sys_job_log` VALUES (699, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 06:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (700, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 06:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (701, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 06:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (702, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 06:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (703, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 06:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (704, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 06:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (705, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 07:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (706, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 07:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (707, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 07:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (708, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 07:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (709, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 07:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (710, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 07:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (711, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 07:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (712, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 07:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (713, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 07:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (714, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 07:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (715, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 07:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (716, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 07:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (717, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 08:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (718, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 08:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (719, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 08:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (720, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 08:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (721, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 08:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (722, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 08:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (723, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 08:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (724, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 08:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (725, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 08:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (726, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 08:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (727, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 08:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (728, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 08:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (729, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 09:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (730, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 09:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (731, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 09:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (732, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 09:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (733, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 09:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (734, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 09:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (735, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 09:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (736, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 09:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (737, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 09:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (738, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 09:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (739, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 09:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (740, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 09:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (741, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 10:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (742, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 10:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (743, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 10:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (744, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 10:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (745, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 10:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (746, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 10:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (747, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 10:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (748, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 10:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (749, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 10:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (750, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 10:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (751, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 10:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (752, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 10:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (753, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 11:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (754, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 11:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (755, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 11:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (756, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 11:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (757, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 11:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (758, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 11:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (759, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 11:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (760, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 11:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (761, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 11:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (762, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 11:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (763, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 11:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (764, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 11:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '9ms');
INSERT INTO `sys_job_log` VALUES (765, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 11:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (766, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 11:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (767, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 11:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (768, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 11:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (769, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 11:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (770, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 11:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (771, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 11:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (772, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 11:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (773, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 11:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (774, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 11:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (775, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 11:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (776, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 11:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (777, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 12:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (778, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 12:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (779, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 12:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (780, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 12:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (781, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 12:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (782, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 12:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (783, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 12:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (784, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 12:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (785, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 12:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (786, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 12:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (787, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 12:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (788, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 12:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (789, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 12:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (790, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 12:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (791, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 12:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (792, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 12:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (793, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 12:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (794, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 12:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (795, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 12:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (796, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 12:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (797, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 12:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (798, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 12:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (799, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 13:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (800, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 13:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (801, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 13:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (802, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 13:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (803, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 13:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (804, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 13:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (805, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 13:25:31', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (806, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 13:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (807, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 13:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (808, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 13:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (809, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 13:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '8ms');
INSERT INTO `sys_job_log` VALUES (810, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 13:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (811, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 13:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '10ms');
INSERT INTO `sys_job_log` VALUES (812, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 13:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (813, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 13:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (814, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 13:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (815, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 13:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '9ms');
INSERT INTO `sys_job_log` VALUES (816, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 13:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (817, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 13:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '10ms');
INSERT INTO `sys_job_log` VALUES (818, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 14:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (819, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 14:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (820, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 14:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (821, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 14:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (822, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 14:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (823, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 14:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (824, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 14:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (825, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 14:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (826, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 14:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (827, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 14:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (828, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 14:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (829, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 14:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (830, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 14:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (831, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 14:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (832, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 14:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (833, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 14:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (834, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 14:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (835, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 14:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (836, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 14:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (837, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 14:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (838, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 14:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (839, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 14:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (840, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 14:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (841, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 14:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '2ms');
INSERT INTO `sys_job_log` VALUES (842, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 15:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (843, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 15:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (844, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 15:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (845, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 15:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (846, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 15:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (847, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 15:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '3ms');
INSERT INTO `sys_job_log` VALUES (848, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 15:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (849, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 15:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (850, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 15:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (851, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 15:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (852, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 15:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (853, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 15:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (854, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 15:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (855, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 15:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '3ms');
INSERT INTO `sys_job_log` VALUES (856, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 15:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (857, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 15:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '2ms');
INSERT INTO `sys_job_log` VALUES (858, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 15:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (859, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 15:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '3ms');
INSERT INTO `sys_job_log` VALUES (860, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 15:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (861, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 15:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (862, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 15:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (863, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 15:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (864, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 16:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (865, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 16:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (866, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 16:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (867, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 16:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (868, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 16:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (869, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 16:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (870, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 16:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (871, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 16:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (872, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 16:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (873, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 16:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (874, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 16:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (875, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 16:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (876, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 16:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (877, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 16:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (878, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 16:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '2ms');
INSERT INTO `sys_job_log` VALUES (879, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 16:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (880, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 16:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (881, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 16:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (882, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 16:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (883, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 16:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (884, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 17:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (885, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 17:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (886, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 17:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (887, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 17:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (888, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 17:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (889, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 17:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (890, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 17:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (891, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 17:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (892, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 17:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (893, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 17:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (894, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 17:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (895, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 17:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (896, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 18:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (897, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 18:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (898, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 18:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (899, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 18:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (900, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 18:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (901, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 18:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (902, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 18:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (903, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 18:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (904, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 18:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (905, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 18:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (906, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 18:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (907, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 18:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (908, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 19:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (909, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 19:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (910, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 19:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (911, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 19:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (912, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 19:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (913, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 19:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (914, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 19:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (915, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 19:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (916, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 19:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (917, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 19:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (918, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 19:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (919, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 19:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (920, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 20:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (921, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 20:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (922, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 20:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (923, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 20:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (924, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 20:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (925, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 20:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (926, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 20:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (927, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 20:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (928, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 20:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (929, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 20:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (930, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 20:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (931, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 20:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (932, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 21:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (933, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 21:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (934, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 21:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (935, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 21:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (936, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 21:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (937, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 21:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (938, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 21:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (939, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 21:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (940, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 21:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (941, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 21:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (942, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 21:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (943, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 21:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (944, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 22:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (945, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 22:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (946, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 22:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (947, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 22:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (948, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 22:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (949, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 22:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (950, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 22:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (951, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 22:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (952, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 22:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (953, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 22:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (954, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 22:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (955, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 22:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (956, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 23:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (957, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 23:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (958, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 23:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (959, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 23:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (960, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 23:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (961, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 23:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (962, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 23:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (963, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 23:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (964, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 23:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (965, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 23:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (966, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 23:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (967, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-06 23:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (968, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 00:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (969, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 00:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (970, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 00:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (971, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 00:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (972, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 00:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (973, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 00:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (974, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 00:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (975, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 00:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (976, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 00:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (977, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 00:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (978, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 00:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (979, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 00:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (980, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 01:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (981, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 01:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (982, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 01:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (983, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 01:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (984, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 01:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (985, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 01:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (986, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 01:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (987, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 01:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (988, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 01:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (989, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 01:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (990, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 01:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (991, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 01:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (992, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 02:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (993, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 02:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (994, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 02:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (995, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 02:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (996, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 02:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (997, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 02:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (998, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 02:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (999, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 02:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1000, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 02:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1001, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 02:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1002, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 02:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1003, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 02:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1004, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 03:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1005, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 03:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1006, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 03:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1007, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 03:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1008, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 03:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1009, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 03:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1010, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 03:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1011, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 03:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1012, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 03:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1013, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 03:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1014, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 03:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1015, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 03:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1016, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 04:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1017, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 04:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1018, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 04:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1019, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 04:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1020, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 04:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1021, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 04:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1022, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 04:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1023, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 04:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1024, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 04:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1025, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 04:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1026, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 04:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1027, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 04:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1028, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 05:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1029, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 05:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1030, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 05:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1031, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 05:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1032, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 05:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1033, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 05:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1034, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 05:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1035, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 05:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1036, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 05:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1037, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 05:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1038, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 05:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1039, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 05:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1040, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 06:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1041, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 06:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1042, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 06:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1043, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 06:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1044, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 06:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1045, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 06:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1046, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 06:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1047, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 06:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1048, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 06:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1049, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 06:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1050, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 06:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1051, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 06:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1052, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 07:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1053, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 07:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1054, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 07:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1055, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 07:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1056, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 07:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1057, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 07:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1058, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 07:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1059, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 07:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1060, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 07:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1061, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 07:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1062, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 07:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1063, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 07:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1064, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 08:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1065, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 08:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1066, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 08:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1067, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 08:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1068, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 08:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1069, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 08:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1070, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 08:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1071, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 08:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1072, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 08:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1073, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 08:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1074, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 08:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1075, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 08:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1076, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 09:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1077, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 09:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1078, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 09:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '9ms');
INSERT INTO `sys_job_log` VALUES (1079, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 09:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1080, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 09:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '24ms');
INSERT INTO `sys_job_log` VALUES (1081, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 09:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1082, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 09:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1083, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 09:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1084, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 09:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1085, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 09:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1086, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 09:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '16ms');
INSERT INTO `sys_job_log` VALUES (1087, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 09:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '24ms');
INSERT INTO `sys_job_log` VALUES (1088, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 09:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1089, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 09:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '10ms');
INSERT INTO `sys_job_log` VALUES (1090, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 09:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1091, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 09:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '5ms');
INSERT INTO `sys_job_log` VALUES (1092, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 09:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1093, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 10:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '6ms');
INSERT INTO `sys_job_log` VALUES (1094, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 10:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1095, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 10:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '102ms');
INSERT INTO `sys_job_log` VALUES (1096, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 10:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1097, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 10:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '21ms');
INSERT INTO `sys_job_log` VALUES (1098, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 10:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1099, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 10:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '4ms');
INSERT INTO `sys_job_log` VALUES (1100, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 10:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1101, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 10:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '21ms');
INSERT INTO `sys_job_log` VALUES (1102, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 10:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1103, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 10:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '21ms');
INSERT INTO `sys_job_log` VALUES (1104, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 10:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1105, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 10:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '19ms');
INSERT INTO `sys_job_log` VALUES (1106, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 10:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1107, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 10:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '8ms');
INSERT INTO `sys_job_log` VALUES (1108, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 10:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1109, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 10:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '15ms');
INSERT INTO `sys_job_log` VALUES (1110, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 10:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1111, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 10:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '9ms');
INSERT INTO `sys_job_log` VALUES (1112, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 10:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1113, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 10:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '7ms');
INSERT INTO `sys_job_log` VALUES (1114, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 10:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1115, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 10:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '34ms');
INSERT INTO `sys_job_log` VALUES (1116, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 10:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1117, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 11:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '8ms');
INSERT INTO `sys_job_log` VALUES (1118, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 11:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1119, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 11:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '13ms');
INSERT INTO `sys_job_log` VALUES (1120, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 11:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1121, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 11:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1122, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 11:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '5ms');
INSERT INTO `sys_job_log` VALUES (1123, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 11:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1124, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 11:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '4ms');
INSERT INTO `sys_job_log` VALUES (1125, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 11:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1126, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 11:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '6ms');
INSERT INTO `sys_job_log` VALUES (1127, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 11:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1128, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 11:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '11ms');
INSERT INTO `sys_job_log` VALUES (1129, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 11:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1130, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 11:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '4ms');
INSERT INTO `sys_job_log` VALUES (1131, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 11:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1132, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 11:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '4ms');
INSERT INTO `sys_job_log` VALUES (1133, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 11:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1134, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 11:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '9ms');
INSERT INTO `sys_job_log` VALUES (1135, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 11:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1136, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 11:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '17ms');
INSERT INTO `sys_job_log` VALUES (1137, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 11:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1138, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 11:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '6ms');
INSERT INTO `sys_job_log` VALUES (1139, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 11:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1140, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 12:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1141, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 12:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '15ms');
INSERT INTO `sys_job_log` VALUES (1142, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 12:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1143, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 12:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '13ms');
INSERT INTO `sys_job_log` VALUES (1144, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 12:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1145, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 12:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '13ms');
INSERT INTO `sys_job_log` VALUES (1146, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 12:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1147, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 12:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '17ms');
INSERT INTO `sys_job_log` VALUES (1148, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 12:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1149, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 12:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '20ms');
INSERT INTO `sys_job_log` VALUES (1150, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 12:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1151, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 12:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1152, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 12:33:21', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '10ms');
INSERT INTO `sys_job_log` VALUES (1153, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 12:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1154, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 12:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '13ms');
INSERT INTO `sys_job_log` VALUES (1155, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 12:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1156, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 12:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1157, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 12:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '12ms');
INSERT INTO `sys_job_log` VALUES (1158, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 12:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1159, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 12:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '16ms');
INSERT INTO `sys_job_log` VALUES (1160, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 12:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1161, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 12:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '2ms');
INSERT INTO `sys_job_log` VALUES (1162, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 13:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1163, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 13:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '15ms');
INSERT INTO `sys_job_log` VALUES (1164, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 13:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1165, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 13:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '22ms');
INSERT INTO `sys_job_log` VALUES (1166, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 13:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1167, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 13:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '17ms');
INSERT INTO `sys_job_log` VALUES (1168, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 13:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1169, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 13:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '22ms');
INSERT INTO `sys_job_log` VALUES (1170, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 13:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1171, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 13:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '7ms');
INSERT INTO `sys_job_log` VALUES (1172, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 13:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1173, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 13:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '5ms');
INSERT INTO `sys_job_log` VALUES (1174, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 13:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1175, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 13:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '19ms');
INSERT INTO `sys_job_log` VALUES (1176, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 13:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1177, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 13:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '9ms');
INSERT INTO `sys_job_log` VALUES (1178, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 13:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1179, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 13:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '20ms');
INSERT INTO `sys_job_log` VALUES (1180, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 13:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1181, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 13:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '42ms');
INSERT INTO `sys_job_log` VALUES (1182, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 13:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1183, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 13:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '11ms');
INSERT INTO `sys_job_log` VALUES (1184, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 13:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1185, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 13:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '15ms');
INSERT INTO `sys_job_log` VALUES (1186, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 14:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1187, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 14:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '17ms');
INSERT INTO `sys_job_log` VALUES (1188, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 14:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1189, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 14:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '2ms');
INSERT INTO `sys_job_log` VALUES (1190, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 14:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1191, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 14:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '4ms');
INSERT INTO `sys_job_log` VALUES (1192, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 14:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1193, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 14:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '15ms');
INSERT INTO `sys_job_log` VALUES (1194, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 14:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1195, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 14:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '25ms');
INSERT INTO `sys_job_log` VALUES (1196, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 14:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1197, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 14:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '37ms');
INSERT INTO `sys_job_log` VALUES (1198, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 14:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1199, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 14:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '4ms');
INSERT INTO `sys_job_log` VALUES (1200, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 14:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1201, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 14:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '9ms');
INSERT INTO `sys_job_log` VALUES (1202, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 14:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1203, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 14:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1204, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 14:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '4ms');
INSERT INTO `sys_job_log` VALUES (1205, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 14:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1206, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 14:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '8ms');
INSERT INTO `sys_job_log` VALUES (1207, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 14:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1208, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 14:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '3ms');
INSERT INTO `sys_job_log` VALUES (1209, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 15:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1210, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 15:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '17ms');
INSERT INTO `sys_job_log` VALUES (1211, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 15:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1212, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 15:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '16ms');
INSERT INTO `sys_job_log` VALUES (1213, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 15:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1214, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 15:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '7ms');
INSERT INTO `sys_job_log` VALUES (1215, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 15:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1216, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 15:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '23ms');
INSERT INTO `sys_job_log` VALUES (1217, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 15:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1218, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 15:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '46ms');
INSERT INTO `sys_job_log` VALUES (1219, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 15:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1220, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 15:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1221, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 15:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '3ms');
INSERT INTO `sys_job_log` VALUES (1222, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 15:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1223, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 15:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '10ms');
INSERT INTO `sys_job_log` VALUES (1224, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 15:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1225, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 15:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '7ms');
INSERT INTO `sys_job_log` VALUES (1226, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 15:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1227, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 15:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '10ms');
INSERT INTO `sys_job_log` VALUES (1228, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 15:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1229, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 15:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '4ms');
INSERT INTO `sys_job_log` VALUES (1230, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 15:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1231, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 15:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '3ms');
INSERT INTO `sys_job_log` VALUES (1232, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 16:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1233, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 16:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '10ms');
INSERT INTO `sys_job_log` VALUES (1234, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 16:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1235, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 16:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '17ms');
INSERT INTO `sys_job_log` VALUES (1236, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 16:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1237, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 16:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '10ms');
INSERT INTO `sys_job_log` VALUES (1238, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 16:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1239, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 16:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '7ms');
INSERT INTO `sys_job_log` VALUES (1240, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 16:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1241, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 16:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '14ms');
INSERT INTO `sys_job_log` VALUES (1242, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 16:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1243, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 16:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1244, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 16:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1245, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 16:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1246, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 16:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1247, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 16:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1248, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 16:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '14ms');
INSERT INTO `sys_job_log` VALUES (1249, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 16:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1250, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 16:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '25ms');
INSERT INTO `sys_job_log` VALUES (1251, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 17:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1252, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 17:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '6ms');
INSERT INTO `sys_job_log` VALUES (1253, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 17:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1254, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 17:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '37ms');
INSERT INTO `sys_job_log` VALUES (1255, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 17:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1256, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 17:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '17ms');
INSERT INTO `sys_job_log` VALUES (1257, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 17:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1258, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 17:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '115ms');
INSERT INTO `sys_job_log` VALUES (1259, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 17:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1260, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 17:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '17ms');
INSERT INTO `sys_job_log` VALUES (1261, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 17:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1262, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 17:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '38ms');
INSERT INTO `sys_job_log` VALUES (1263, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 17:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1264, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 17:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1265, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 17:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1266, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 17:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1267, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 17:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1268, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 17:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1269, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 18:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1270, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 18:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1271, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 18:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1272, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 18:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1273, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 18:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1274, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 18:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1275, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 18:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1276, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 18:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1277, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 18:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1278, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 18:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1279, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 18:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1280, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 18:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1281, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 19:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1282, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 19:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1283, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 19:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1284, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 19:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1285, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 19:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1286, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 19:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1287, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 19:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1288, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 19:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1289, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 19:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1290, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 19:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1291, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 19:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1292, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 19:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '2ms');
INSERT INTO `sys_job_log` VALUES (1293, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 19:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1294, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 19:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1295, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 20:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1296, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 20:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1297, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 20:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1298, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 20:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1299, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 20:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1300, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 20:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1301, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 20:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1302, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 20:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '2ms');
INSERT INTO `sys_job_log` VALUES (1303, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 20:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1304, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 20:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '2ms');
INSERT INTO `sys_job_log` VALUES (1305, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 20:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1306, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 20:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '2ms');
INSERT INTO `sys_job_log` VALUES (1307, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 20:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1308, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 20:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '2ms');
INSERT INTO `sys_job_log` VALUES (1309, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 20:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1310, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 20:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '2ms');
INSERT INTO `sys_job_log` VALUES (1311, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 20:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1312, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 20:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1313, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 20:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1314, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 20:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1315, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 21:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1316, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 21:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '2ms');
INSERT INTO `sys_job_log` VALUES (1317, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 21:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1318, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 21:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1319, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 21:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1320, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 21:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1321, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 21:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1322, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 21:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1323, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 21:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1324, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 21:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1325, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 21:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1326, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 21:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1327, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 21:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1328, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 21:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1329, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 21:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1330, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 22:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1331, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 22:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1332, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 22:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1333, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 22:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1334, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 22:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1335, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 22:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1336, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 22:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1337, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 22:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1338, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 22:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1339, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 22:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1340, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 22:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1341, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 22:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1342, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 23:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1343, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 23:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1344, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 23:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '2ms');
INSERT INTO `sys_job_log` VALUES (1345, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 23:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1346, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 23:10:01', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '10ms');
INSERT INTO `sys_job_log` VALUES (1347, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 23:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1348, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 23:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1349, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 23:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1350, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 23:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1351, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 23:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1352, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 23:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1353, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 23:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1354, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 23:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '5ms');
INSERT INTO `sys_job_log` VALUES (1355, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 23:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1356, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 23:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1357, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-07 23:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1358, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 00:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1359, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 00:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1360, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 00:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1361, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 00:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1362, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 00:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1363, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 00:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1364, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 00:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1365, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 00:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1366, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 00:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1367, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 00:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1368, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 00:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1369, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 00:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1370, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 01:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1371, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 01:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1372, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 01:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1373, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 01:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1374, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 01:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1375, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 01:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1376, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 01:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1377, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 01:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '2ms');
INSERT INTO `sys_job_log` VALUES (1378, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 01:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1379, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 01:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1380, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 01:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1381, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 01:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1382, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 02:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1383, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 02:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1384, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 02:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1385, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 02:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1386, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 02:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1387, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 02:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1388, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 02:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1389, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 02:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1390, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 02:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1391, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 02:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1392, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 02:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1393, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 02:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1394, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 03:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1395, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 03:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1396, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 03:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1397, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 03:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1398, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 03:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1399, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 03:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1400, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 03:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1401, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 03:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1402, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 03:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1403, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 03:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1404, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 03:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1405, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 03:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1406, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 04:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1407, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 04:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1408, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 04:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1409, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 04:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1410, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 04:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1411, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 04:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1412, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 04:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1413, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 04:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1414, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 04:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1415, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 04:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1416, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 04:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1417, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 04:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1418, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 05:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1419, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 05:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1420, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 05:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1421, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 05:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1422, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 05:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1423, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 05:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1424, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 05:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1425, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 05:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1426, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 05:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1427, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 05:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1428, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 05:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1429, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 05:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1430, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 06:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1431, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 06:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1432, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 06:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1433, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 06:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1434, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 06:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1435, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 06:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1436, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 06:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1437, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 06:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1438, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 06:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1439, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 06:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1440, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 06:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1441, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 06:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1442, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 07:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1443, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 07:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1444, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 07:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1445, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 07:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1446, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 07:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1447, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 07:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1448, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 07:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1449, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 07:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1450, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 07:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1451, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 07:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1452, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 07:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1453, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 07:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1454, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 08:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1455, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 08:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1456, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 08:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1457, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 08:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1458, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 08:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1459, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 08:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1460, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 08:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1461, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 08:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1462, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 08:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1463, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 08:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1464, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 08:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1465, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 08:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1466, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 09:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1467, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 09:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '8ms');
INSERT INTO `sys_job_log` VALUES (1468, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 09:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1469, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 09:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '19ms');
INSERT INTO `sys_job_log` VALUES (1470, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 09:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1471, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 09:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1472, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 09:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '11ms');
INSERT INTO `sys_job_log` VALUES (1473, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 09:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '16ms');
INSERT INTO `sys_job_log` VALUES (1474, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 09:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1475, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 09:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '12ms');
INSERT INTO `sys_job_log` VALUES (1476, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 09:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1477, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 09:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '27ms');
INSERT INTO `sys_job_log` VALUES (1478, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 09:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1479, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 09:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '16ms');
INSERT INTO `sys_job_log` VALUES (1480, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 09:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1481, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 09:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '4ms');
INSERT INTO `sys_job_log` VALUES (1482, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 09:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1483, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 09:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '18ms');
INSERT INTO `sys_job_log` VALUES (1484, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 09:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1485, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 09:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '4ms');
INSERT INTO `sys_job_log` VALUES (1486, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 09:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1487, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 09:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '22ms');
INSERT INTO `sys_job_log` VALUES (1488, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 09:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1489, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 10:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '22ms');
INSERT INTO `sys_job_log` VALUES (1490, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 10:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1491, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 10:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '25ms');
INSERT INTO `sys_job_log` VALUES (1492, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 10:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1493, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 10:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '6ms');
INSERT INTO `sys_job_log` VALUES (1494, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 10:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1495, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 10:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '8ms');
INSERT INTO `sys_job_log` VALUES (1496, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 10:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1497, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 10:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '3ms');
INSERT INTO `sys_job_log` VALUES (1498, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 10:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1499, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 10:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '8ms');
INSERT INTO `sys_job_log` VALUES (1500, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 10:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1501, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 10:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '32ms');
INSERT INTO `sys_job_log` VALUES (1502, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 10:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1503, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 10:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '14ms');
INSERT INTO `sys_job_log` VALUES (1504, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 10:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1505, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 10:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1506, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 10:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1507, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 10:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1508, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 10:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1509, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 11:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1510, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 11:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1511, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 11:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1512, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 11:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1513, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 11:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1514, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 11:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1515, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 11:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1516, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 11:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1517, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 11:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1518, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 11:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1519, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 11:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1520, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 11:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1521, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 12:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1522, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 12:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1523, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 12:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1524, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 12:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1525, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 12:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1526, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 12:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1527, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 12:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1528, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 12:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1529, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 12:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1530, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 12:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1531, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 12:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1532, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 12:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1533, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 13:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1534, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 13:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1535, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 13:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1536, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 13:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1537, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 13:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1538, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 13:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1539, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 13:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1540, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 13:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1541, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 13:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1542, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 13:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1543, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 13:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1544, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 13:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1545, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 14:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1546, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 14:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1547, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 14:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1548, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 14:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1549, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 14:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1550, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 14:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1551, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 14:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1552, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 14:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1553, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 14:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1554, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 14:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1555, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 14:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1556, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 14:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1557, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 15:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1558, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 15:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1559, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 15:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1560, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 15:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1561, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 15:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1562, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 15:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1563, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 15:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1564, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 15:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1565, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 15:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1566, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 15:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1567, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 15:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1568, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 15:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1569, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 16:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1570, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 16:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1571, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 16:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1572, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 16:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1573, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 16:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1574, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 16:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1575, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 16:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1576, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 16:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1577, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 16:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1578, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 16:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1579, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 16:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1580, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 16:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1581, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 17:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1582, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 17:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1583, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 17:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1584, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 17:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1585, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 17:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1586, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 17:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1587, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 17:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1588, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 17:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1589, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 17:40:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1590, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 17:45:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1591, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 17:50:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1592, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 17:55:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1593, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 18:00:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1594, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 18:05:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1595, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 18:10:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1596, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 18:15:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1597, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 18:20:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '1ms');
INSERT INTO `sys_job_log` VALUES (1598, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 18:25:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1599, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 18:30:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');
INSERT INTO `sys_job_log` VALUES (1600, 'org.king.project.monitor.quartz.task.SystemOutWelcomeTask', '2020-09-08 18:35:00', '0 0/5 * * * ?', NULL, 1, '欢迎来到king', '{}', '0ms');

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '操作系统',
  `status` smallint(1) NULL DEFAULT 1 COMMENT '登录状态（1成功 0失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '系统访问记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (1, 'crown', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', 0, '用户名或密码错误', '2020-09-03 23:05:36');
INSERT INTO `sys_logininfor` VALUES (2, 'crown', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', 0, '用户名或密码错误', '2020-09-03 23:05:42');
INSERT INTO `sys_logininfor` VALUES (3, 'crown', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', 0, '用户名或密码错误', '2020-09-03 23:05:49');
INSERT INTO `sys_logininfor` VALUES (4, 'crown', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', 0, '用户名或密码错误', '2020-09-03 23:07:19');
INSERT INTO `sys_logininfor` VALUES (5, 'Crown', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', 0, '用户名或密码错误', '2020-09-03 23:08:17');
INSERT INTO `sys_logininfor` VALUES (6, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', 0, '密码输入错误1次', '2020-09-03 23:08:39');
INSERT INTO `sys_logininfor` VALUES (7, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', 0, '密码输入错误2次', '2020-09-03 23:08:45');
INSERT INTO `sys_logininfor` VALUES (8, 'crown', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', 0, '用户名或密码错误', '2020-09-03 23:11:45');
INSERT INTO `sys_logininfor` VALUES (9, 'crown', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', 1, '登录成功', '2020-09-03 23:12:42');
INSERT INTO `sys_logininfor` VALUES (10, 'crown', '112.32.4.91', '未获取地址', 'Chrome 8', 'Windows 10', 1, '登录成功', '2020-09-03 23:42:32');
INSERT INTO `sys_logininfor` VALUES (11, 'crown', '192.168.1.175', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', '2020-09-04 10:09:25');
INSERT INTO `sys_logininfor` VALUES (12, 'crown', '192.168.1.175', '内网IP', 'Chrome', 'Windows 10', 1, '退出成功', '2020-09-04 10:52:45');
INSERT INTO `sys_logininfor` VALUES (13, 'crown', '192.168.1.175', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', '2020-09-04 14:05:21');
INSERT INTO `sys_logininfor` VALUES (14, 'crown', '112.27.240.222', '未获取地址', 'Chrome', 'Windows 10', 1, '登录成功', '2020-09-04 15:09:36');
INSERT INTO `sys_logininfor` VALUES (15, 'crown', '112.27.240.222', '未获取地址', 'Chrome', 'Windows 10', 1, '登录成功', '2020-09-04 15:48:06');
INSERT INTO `sys_logininfor` VALUES (16, 'crown', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', 1, '登录成功', '2020-09-06 10:57:49');
INSERT INTO `sys_logininfor` VALUES (17, 'crown', '112.32.2.154', '未获取地址', 'Chrome 8', 'Windows 10', 1, '登录成功', '2020-09-07 00:11:25');
INSERT INTO `sys_logininfor` VALUES (18, 'crown', '192.168.1.175', '内网IP', 'Chrome', 'Windows 10', 1, '登录成功', '2020-09-07 09:08:29');
INSERT INTO `sys_logininfor` VALUES (19, 'crown', '112.27.240.222', '未获取地址', 'Chrome', 'Windows 10', 1, '登录成功', '2020-09-07 15:53:33');
INSERT INTO `sys_logininfor` VALUES (20, 'crown', '39.144.34.205', '未获取地址', 'Chrome Mobile', 'Android Mobile', 1, '登录成功', '2020-09-07 18:07:57');
INSERT INTO `sys_logininfor` VALUES (21, 'crown', '0:0:0:0:0:0:0:1', '内网IP', 'Chrome 8', 'Windows 10', 1, '登录成功', '2020-09-07 19:46:44');
INSERT INTO `sys_logininfor` VALUES (22, 'crown', '112.32.4.91', '未获取地址', 'Chrome 8', 'Windows 10', 1, '退出成功', '2020-09-07 21:41:12');
INSERT INTO `sys_logininfor` VALUES (23, 'crown', '112.32.4.91', '未获取地址', 'Chrome 8', 'Windows 10', 1, '登录成功', '2020-09-07 21:41:16');
INSERT INTO `sys_logininfor` VALUES (24, 'crown', '112.27.240.222', '未获取地址', 'Chrome', 'Windows 10', 1, '登录成功', '2020-09-08 08:55:39');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1063 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '菜单权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, '#', '', 'M', '0', '', 'fa fa-gear', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, '#', '', 'M', '0', '', 'fa fa-video-camera', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, '#', '', 'M', '0', '', 'fa fa-bars', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, '/system/user', '', 'C', '0', 'system:user:view', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, '/system/role', '', 'C', '0', 'system:role:view', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, '/system/menu', '', 'C', '0', 'system:menu:view', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, '/system/dept', '', 'C', '0', 'system:dept:view', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, '/system/post', '', 'C', '0', 'system:post:view', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, '/system/dict', '', 'C', '0', 'system:dict:view', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, '/system/config', '', 'C', '0', 'system:config:view', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, '/system/notice', '', 'C', '0', 'system:notice:view', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, '#', '', 'M', '0', '', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, '/monitor/online', '', 'C', '0', 'monitor:online:view', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, '/monitor/job', '', 'C', '0', 'monitor:job:view', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '定时任务菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 3, '/monitor/server', '', 'C', '0', 'monitor:server:view', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '表单构建', 3, 1, '/tool/build', '', 'C', '0', 'tool:build:view', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO `sys_menu` VALUES (114, '代码生成', 3, 2, '/tool/gen', '', 'C', '0', 'tool:gen:view', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES (115, '系统接口', 3, 3, '/tool/swagger', '', 'C', '0', 'tool:swagger:view', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, '/monitor/operlog', '', 'C', '0', 'monitor:operlog:view', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, '/monitor/logininfor', '', 'C', '0', 'monitor:logininfor:view', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '#', '', 'F', '0', 'system:user:list', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '#', '', 'F', '0', 'system:user:add', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '#', '', 'F', '0', 'system:user:edit', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '#', '', 'F', '0', 'system:user:remove', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '#', '', 'F', '0', 'system:user:export', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '#', '', 'F', '0', 'system:user:import', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '#', '', 'F', '0', 'system:user:resetPwd', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '#', '', 'F', '0', 'system:role:list', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '#', '', 'F', '0', 'system:role:add', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '#', '', 'F', '0', 'system:role:edit', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '#', '', 'F', '0', 'system:role:remove', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '#', '', 'F', '0', 'system:role:export', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '#', '', 'F', '0', 'system:menu:list', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '#', '', 'F', '0', 'system:menu:add', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '#', '', 'F', '0', 'system:menu:edit', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '#', '', 'F', '0', 'system:menu:remove', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '#', '', 'F', '0', 'system:dept:list', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '#', '', 'F', '0', 'system:dept:add', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '#', '', 'F', '0', 'system:dept:edit', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '#', '', 'F', '0', 'system:dept:remove', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '#', '', 'F', '0', 'system:post:list', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '#', '', 'F', '0', 'system:post:add', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '#', '', 'F', '0', 'system:post:edit', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '#', '', 'F', '0', 'system:post:remove', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '#', '', 'F', '0', 'system:post:export', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', 'F', '0', 'system:dict:list', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', 'F', '0', 'system:dict:add', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', 'F', '0', 'system:dict:edit', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', 'F', '0', 'system:dict:remove', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', 'F', '0', 'system:dict:export', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', 'F', '0', 'system:config:list', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', 'F', '0', 'system:config:add', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', 'F', '0', 'system:config:edit', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', 'F', '0', 'system:config:remove', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', 'F', '0', 'system:config:export', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', 'F', '0', 'system:notice:list', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', 'F', '0', 'system:notice:add', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', 'F', '0', 'system:notice:edit', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', 'F', '0', 'system:notice:remove', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', 'F', '0', 'monitor:operlog:list', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', 'F', '0', 'monitor:operlog:remove', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1041, '详细信息', 500, 3, '#', '', 'F', '0', 'monitor:operlog:detail', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 'F', '0', 'monitor:operlog:export', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 'F', '0', 'monitor:logininfor:list', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 'F', '0', 'monitor:logininfor:remove', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 'F', '0', 'monitor:logininfor:export', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', 'F', '0', 'monitor:online:list', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', 'F', '0', 'monitor:online:batchForceLogout', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', 'F', '0', 'monitor:online:forceLogout', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', 'F', '0', 'monitor:job:list', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', 'F', '0', 'monitor:job:add', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', 'F', '0', 'monitor:job:edit', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', 'F', '0', 'monitor:job:remove', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', 'F', '0', 'monitor:job:changeStatus', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1054, '任务详细', 110, 6, '#', '', 'F', '0', 'monitor:job:detail', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1055, '任务导出', 110, 7, '#', '', 'F', '0', 'monitor:job:export', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1056, '生成查询', 114, 1, '#', '', 'F', '0', 'tool:gen:list', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1057, '生成代码', 114, 2, '#', '', 'F', '0', 'tool:gen:code', '#', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1058, '即时日志', 2, 4, '/monitor/consolelog', 'menuItem', 'C', '0', 'monitor:consolelog:view', '', 'king', '2019-07-25 01:59:15', NULL, '2019-07-25 09:52:52', '');
INSERT INTO `sys_menu` VALUES (1059, '异常日志', 2, 1, '/monitor/exceLog', 'menuItem', 'C', '0', 'monitor:exceLog:view', '#', 'king', '2018-06-28 00:00:00', NULL, '2019-07-27 14:48:54', '异常日志菜单');
INSERT INTO `sys_menu` VALUES (1060, '异常日志查询', 1059, 1, '#', 'menuItem', 'F', '0', 'monitor:exceLog:list', '#', 'king', '2018-06-28 00:00:00', NULL, '2019-07-27 14:49:10', '');
INSERT INTO `sys_menu` VALUES (1061, '异常日志删除', 1059, 4, '#', 'menuItem', 'F', '0', 'monitor:exceLog:remove', '#', 'king', '2018-06-28 00:00:00', NULL, '2019-07-27 14:49:22', '');
INSERT INTO `sys_menu` VALUES (1062, '异常日志详情', 1059, 3, '', 'menuItem', 'F', '0', 'monitor:exceLog:detail', '', 'king', '2019-07-27 16:48:20', NULL, '2019-07-27 16:48:48', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '通知公告表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 king新版本发布啦', '2', '新版本内容', '0', 'king', '2018-03-16 11:33:00', NULL, '2019-07-23 17:05:28', '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '方法名称',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '请求参数',
  `status` smallint(1) NULL DEFAULT 1 COMMENT '操作状态（1正常 0异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '操作日志记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (1, '古诗词-注册用户', 1, 'org.king.project.peotry.controller.PeotryUserController.addSave()', 1, 'crown', '测试部门', '/King/peotry/user/add', '192.168.1.175', '内网IP', '{\"password\":[\"123456\"],\"loginName\":[\"黄忠\"],\"userName\":[\"黄忠\"]}', 1, '', '2020-09-04 10:13:46');
INSERT INTO `sys_oper_log` VALUES (2, '古诗词-注册用户', 1, 'org.king.project.peotry.controller.PeotryUserController.addSave()', 1, 'crown', '测试部门', '/King/peotry/user/add', '192.168.1.175', '内网IP', '{\"password\":[\"123456\"],\"loginName\":[\"黄忠\"],\"userName\":[\"黄忠\"]}', 0, '账号黄忠已存在', '2020-09-04 10:18:33');
INSERT INTO `sys_oper_log` VALUES (3, '古诗词-修改用户', 2, 'org.king.project.peotry.controller.PeotryUserController.editSave()', 1, 'crown', '测试部门', '/King/peotry/user/edit', '192.168.1.175', '内网IP', '{\"loginName\":[\"黄忠\"],\"userName\":[\"老将黄忠\"],\"userId\":[\"1\"]}', 0, '用户名黄忠不允许修改', '2020-09-04 10:51:04');
INSERT INTO `sys_oper_log` VALUES (4, '古诗词-修改用户', 2, 'org.king.project.peotry.controller.PeotryUserController.editSave()', 1, 'crown', '测试部门', '/King/peotry/user/edit', '192.168.1.175', '内网IP', '{\"loginName\":[\"黄忠\"],\"userName\":[\"老将黄忠\"],\"userId\":[\"1\"]}', 0, '用户名黄忠不允许修改', '2020-09-04 10:52:40');
INSERT INTO `sys_oper_log` VALUES (5, '古诗词-修改用户', 2, 'org.king.project.peotry.controller.PeotryUserController.editSave()', 1, '', '', '/King/peotry/user/edit', '192.168.1.175', '内网IP', '{\"loginName\":[\"黄忠\"],\"userName\":[\"老将黄忠\"],\"userId\":[\"1\"]}', 0, '', '2020-09-04 11:19:58');
INSERT INTO `sys_oper_log` VALUES (6, '古诗词-修改用户', 2, 'org.king.project.peotry.controller.PeotryUserController.editSave()', 1, '', '', '/King/peotry/user/edit', '192.168.1.175', '内网IP', '{\"loginName\":[\"黄忠\"],\"userName\":[\"老将黄忠\"],\"userId\":[\"1\"]}', 0, '', '2020-09-04 11:25:26');
INSERT INTO `sys_oper_log` VALUES (7, '古诗词-修改用户', 2, 'org.king.project.peotry.controller.PeotryUserController.editSave()', 1, '', '', '/King/peotry/user/edit', '192.168.1.175', '内网IP', '{\"loginName\":[\"黄忠\"],\"userName\":[\"老将黄忠\"],\"userId\":[\"1\"]}', 0, '用户名未登录', '2020-09-04 11:47:47');
INSERT INTO `sys_oper_log` VALUES (8, '古诗词-修改用户', 2, 'org.king.project.peotry.controller.PeotryUserController.editSave()', 1, '', '', '/King/peotry/user/edit', '192.168.1.175', '内网IP', '{\"loginName\":[\"黄忠\"],\"userName\":[\"老将黄忠\"],\"userId\":[\"1\"]}', 0, '', '2020-09-04 11:49:20');
INSERT INTO `sys_oper_log` VALUES (9, '古诗词-修改用户', 2, 'org.king.project.peotry.controller.PeotryUserController.editSave()', 1, '', '', '/King/peotry/user/edit', '192.168.1.175', '内网IP', '{\"loginName\":[\"黄忠\"],\"userName\":[\"老将黄忠\"],\"userId\":[\"1\"]}', 0, '', '2020-09-04 11:50:12');
INSERT INTO `sys_oper_log` VALUES (10, '古诗词-修改用户', 2, 'org.king.project.peotry.controller.PeotryUserController.editSave()', 1, '', '', '/King/peotry/user/edit', '192.168.1.175', '内网IP', '{\"loginName\":[\"黄忠\"],\"userName\":[\"老将黄忠\"],\"userId\":[\"1\"]}', 0, '用户账户黄忠不允许修改', '2020-09-04 11:51:36');
INSERT INTO `sys_oper_log` VALUES (11, '古诗词-修改用户', 2, 'org.king.project.peotry.controller.PeotryUserController.editSave()', 1, '', '', '/King/peotry/user/edit', '192.168.1.175', '内网IP', '{\"loginName\":[\"黄忠\"],\"userName\":[\"老将黄忠\"],\"userId\":[\"1\"]}', 0, '用户名未登录', '2020-09-04 12:34:42');
INSERT INTO `sys_oper_log` VALUES (12, '古诗词-修改用户', 2, 'org.king.project.peotry.controller.PeotryUserController.editSave()', 1, '', '', '/King/peotry/user/edit', '192.168.1.175', '内网IP', '{\"loginName\":[\"黄忠\"],\"userName\":[\"老将黄忠\"],\"userId\":[\"1\"]}', 0, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'null\' in \'class org.king.project.peotry.domain.PeotryUser\'', '2020-09-04 12:35:01');
INSERT INTO `sys_oper_log` VALUES (13, '古诗词-修改用户', 2, 'org.king.project.peotry.controller.PeotryUserController.editSave()', 1, '', '', '/King/peotry/user/edit', '192.168.1.175', '内网IP', '{\"loginName\":[\"黄忠\"],\"userName\":[\"老将黄忠\"],\"userId\":[\"1\"]}', 0, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'null\' in \'class org.king.project.peotry.domain.PeotryUser\'', '2020-09-04 12:36:56');
INSERT INTO `sys_oper_log` VALUES (14, '古诗词-修改用户', 2, 'org.king.project.peotry.controller.PeotryUserController.editSave()', 1, '', '', '/King/peotry/user/edit', '192.168.1.175', '内网IP', '{\"loginName\":[\"黄忠\"],\"userName\":[\"老将黄忠\"],\"userId\":[\"1\"]}', 0, '用户名未登录', '2020-09-04 12:40:51');
INSERT INTO `sys_oper_log` VALUES (15, '古诗词-修改用户', 2, 'org.king.project.peotry.controller.PeotryUserController.editSave()', 1, '', '', '/King/peotry/user/edit', '192.168.1.175', '内网IP', '{\"loginName\":[\"黄忠\"],\"userName\":[\"老将黄忠\"],\"userId\":[\"1\"]}', 0, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'null\' in \'class org.king.project.peotry.domain.PeotryUser\'', '2020-09-04 12:41:31');
INSERT INTO `sys_oper_log` VALUES (16, '古诗词-修改用户', 2, 'org.king.project.peotry.controller.PeotryUserController.editSave()', 1, '', '', '/King/peotry/user/edit', '192.168.1.175', '内网IP', '{\"loginName\":[\"黄忠\"],\"userName\":[\"老将黄忠\"],\"userId\":[\"1\"]}', 0, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'null\' in \'class org.king.project.peotry.domain.PeotryUser\'', '2020-09-04 12:45:29');
INSERT INTO `sys_oper_log` VALUES (17, '古诗词-修改用户', 2, 'org.king.project.peotry.controller.PeotryUserController.editSave()', 1, '', '', '/King/peotry/user/edit', '192.168.1.175', '内网IP', '{\"loginName\":[\"黄忠\"],\"userName\":[\"老将黄忠\"],\"userId\":[\"1\"]}', 0, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'null\' in \'class org.king.project.peotry.domain.PeotryUser\'', '2020-09-04 13:09:30');
INSERT INTO `sys_oper_log` VALUES (18, '古诗词-修改用户', 2, 'org.king.project.peotry.controller.PeotryUserController.editSave()', 1, '', '', '/King/peotry/user/edit', '192.168.1.175', '内网IP', '{\"loginName\":[\"黄忠\"],\"userName\":[\"老将黄忠\"],\"userId\":[\"1\"]}', 1, '', '2020-09-04 13:16:21');
INSERT INTO `sys_oper_log` VALUES (19, '古诗词-修改用户', 2, 'org.king.project.peotry.controller.PeotryUserController.editSave()', 1, '', '', '/King/peotry/user/edit', '192.168.1.175', '内网IP', '{\"signature\":[\"老将黄忠\"],\"loginName\":[\"黄忠\"],\"sex\":[\"1\"],\"userName\":[\"老将黄忠\"],\"userId\":[\"1\"]}', 1, '', '2020-09-04 13:22:45');
INSERT INTO `sys_oper_log` VALUES (20, '更新头像', 2, 'org.king.project.peotry.controller.PeotryUserController.updateAvatar()', 1, '', '', '/King/peotry/user/updateAvatar', '192.168.1.175', '内网IP', '{\"avatarfile\":[]}', 0, '用户名未登录', '2020-09-04 13:56:50');
INSERT INTO `sys_oper_log` VALUES (21, '更新头像', 2, 'org.king.project.peotry.controller.PeotryUserController.updateAvatar()', 1, '', '', '/King/peotry/user/updateAvatar', '192.168.1.175', '内网IP', '{\"avatarfile\":[]}', 1, '', '2020-09-04 13:59:16');
INSERT INTO `sys_oper_log` VALUES (22, '个人信息', 2, 'org.king.project.system.user.controller.ProfileController.updateAvatar()', 1, 'crown', '测试部门', '/King/system/user/profile/updateAvatar', '192.168.1.175', '内网IP', '{\"avatarfile\":[]}', 1, '', '2020-09-04 14:05:44');
INSERT INTO `sys_oper_log` VALUES (23, '更新头像', 2, 'org.king.project.peotry.controller.PeotryUserController.updateAvatar()', 1, 'crown', '测试部门', '/King/peotry/user/updateAvatar', '192.168.1.175', '内网IP', '{\"avatarfile\":[]}', 0, 'org.king.project.system.user.domain.User cannot be cast to java.lang.String', '2020-09-04 14:14:23');
INSERT INTO `sys_oper_log` VALUES (24, '更新头像', 2, 'org.king.project.peotry.controller.PeotryUserController.updateAvatar()', 1, '', '', '/King/peotry/user/updateAvatar', '192.168.1.175', '内网IP', '{\"avatarfile\":[]}', 1, '', '2020-09-04 14:21:20');
INSERT INTO `sys_oper_log` VALUES (25, '更新头像', 2, 'org.king.project.peotry.controller.PeotryUserController.updateAvatar()', 1, '', '', '/King/peotry/user/updateAvatar', '192.168.1.175', '内网IP', '{\"avatarfile\":[]}', 1, '', '2020-09-04 14:33:54');
INSERT INTO `sys_oper_log` VALUES (26, '个人信息', 2, 'org.king.project.system.user.controller.ProfileController.updateAvatar()', 1, 'crown', '测试部门', '/King/system/user/profile/updateAvatar', '112.27.240.222', '未获取地址', '{\"avatarfile\":[]}', 1, '', '2020-09-04 15:49:04');
INSERT INTO `sys_oper_log` VALUES (27, '字典类型', 1, 'org.king.project.system.dict.controller.DictTypeController.addSave()', 1, 'crown', '测试部门', '/King/system/dict/add', '112.27.240.222', '未获取地址', '{\"dictName\":[\"古诗朝代\"],\"remark\":[\"古诗朝代\"],\"dictType\":[\"sys_peotry_collection_dynasty\"],\"status\":[\"0\"]}', 1, '', '2020-09-04 15:55:47');
INSERT INTO `sys_oper_log` VALUES (28, '字典类型', 3, 'org.king.project.system.dict.controller.DictTypeController.remove()', 1, 'crown', '测试部门', '/King/system/dict/remove', '112.27.240.222', '未获取地址', '{\"ids\":[\"10\"]}', 0, '古诗朝代已分配，不能删除', '2020-09-04 16:00:48');
INSERT INTO `sys_oper_log` VALUES (29, '字典类型', 3, 'org.king.project.system.dict.controller.DictTypeController.remove()', 1, 'crown', '测试部门', '/King/system/dict/remove', '112.27.240.222', '未获取地址', '{\"ids\":[\"10\"]}', 0, '古诗朝代已分配，不能删除', '2020-09-04 16:01:05');
INSERT INTO `sys_oper_log` VALUES (30, '代码生成', 6, 'org.king.project.tool.gen.controller.GenController.importTableSave()', 1, 'crown', '测试部门', '/King/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_peotry_author\"]}', 1, '', '2020-09-06 12:09:01');
INSERT INTO `sys_oper_log` VALUES (31, '代码生成', 2, 'org.king.project.tool.gen.controller.GenController.editSave()', 1, 'crown', '测试部门', '/King/tool/gen/edit', '127.0.0.1', '内网IP', '{\"columns[2].columnComment\":[\"简介\"],\"functionAuthor\":[\"Ykyh\"],\"columns[3].columnId\":[\"4\"],\"moduleName\":[\"peotry\"],\"businessName\":[\"author\"],\"columns[3].dictType\":[\"\"],\"columns[4].sort\":[\"5\"],\"tableName\":[\"sys_peotry_author\"],\"columns[3].javaType\":[\"String\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].sort\":[\"2\"],\"columns[3].isEdit\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[4].columnId\":[\"5\"],\"columns[0].columnComment\":[\"作者ID\"],\"columns[2].isRequired\":[\"1\"],\"columns[3].sort\":[\"4\"],\"columns[1].javaField\":[\"authorName\"],\"columns[3].isList\":[\"1\"],\"columns[1].isRequired\":[\"1\"],\"columns[0].sort\":[\"1\"],\"params[treeCode]\":[\"\"],\"columns[3].htmlType\":[\"input\"],\"columns[0].columnId\":[\"1\"],\"columns[4].javaType\":[\"Date\"],\"columns[0].javaField\":[\"authorId\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[2].isInsert\":[\"1\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[1].dictType\":[\"\"],\"columns[1].javaType\":[\"String\"],\"className\":[\"SysPeotryAuthor\"],\"remark\":[\"\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].columnComment\":[\"名称\"],\"columns[1].isList\":[\"1\"],\"columns[1].htmlType\":[\"input\"],\"columns[3].isInsert\":[\"1\"],\"columns[4].dictType\":[\"\"],\"columns[2].isEdit\":[\"1\"],\"packageName\":[\"org.king.project.peotry\"],\"columns[0].javaType\":[\"Long\"],\"columns[2].javaField\":[\"introduction\"],\"columns[4].queryType\":[\"EQ\"],\"columns[1].columnId\":[\"2\"],\"columns[2].isQuery\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[2].dictType\":[\"\"],\"columns[4].javaField\":[\"createTime\"],\"functionName\":[\"古诗词-作者\"],\"params[treeParentCode]\":[\"\"],\"columns[3].queryType\":[\"EQ\"],\"tableComment\":[\"古诗词-作者表\"],\"columns[0].isInsert\":[\"1\"],\"columns[4].columnComment\":[\"创建时间\"],\"columns[2].javaType\":[\"String\"],\"columns[2].isList\":[\"1\"],\"tplCategory\":[\"crud\"],\"columns[3].javaField\":[\"peotryIds\"],\"columns[3].columnComment\":[\"代表作（@#区分）\"],\"columns[2].htmlType\":[\"textarea\"],\"columns[4].isInsert\":[\"1\"],\"params[treeName]\":[\"\"],\"columns[2].sort\":[\"3\"],\"tableId\":[\"1\"],\"columns[2].columnId\":[\"3\"],\"column', 1, '', '2020-09-06 12:10:34');
INSERT INTO `sys_oper_log` VALUES (32, '代码生成', 8, 'org.king.project.tool.gen.controller.GenController.genCode()', 1, 'crown', '测试部门', '/King/tool/gen/genCode/sys_peotry_author', '127.0.0.1', '内网IP', '{}', 1, '', '2020-09-06 13:45:16');
INSERT INTO `sys_oper_log` VALUES (33, '个人信息', 2, 'org.king.project.system.user.controller.ProfileController.updateAvatar()', 1, 'crown', '测试部门', '/King/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{\"avatarfile\":[]}', 1, '', '2020-09-06 15:10:02');
INSERT INTO `sys_oper_log` VALUES (34, '个人信息', 2, 'org.king.project.system.user.controller.ProfileController.update()', 1, 'crown', '测试部门', '/King/system/user/profile/update', '127.0.0.1', '内网IP', '{\"sex\":[\"1\"],\"phonenumber\":[\"15666666666\"],\"id\":[\"\"],\"userName\":[\"Crown\"],\"email\":[\"king@qq.com\"]}', 1, '', '2020-09-06 15:10:08');
INSERT INTO `sys_oper_log` VALUES (35, '古诗词-注册用户', 1, 'org.king.project.peotry.controller.PeotryUserController.addSave()', 1, 'crown', '测试部门', '/King/peotry/user/add', '112.32.2.154', '未获取地址', '{\"password\":[\"123456\"],\"loginName\":[\"不知火舞\"],\"userName\":[\"不知火舞\"]}', 1, '', '2020-09-07 00:12:22');
INSERT INTO `sys_oper_log` VALUES (36, '古诗词-注册用户', 1, 'org.king.project.peotry.controller.PeotryUserController.addSave()', 1, '', '', '/King/peotry/user/add', '192.168.1.175', '内网IP', '{\"password\":[\"123456\"],\"loginName\":[\"吕布\"],\"userName\":[\"吕布\"]}', 1, '', '2020-09-07 09:11:30');
INSERT INTO `sys_oper_log` VALUES (37, '古诗词-注册用户', 1, 'org.king.project.peotry.controller.PeotryUserController.addSave()', 1, '', '', '/King/peotry/user/add', '112.27.240.222', '未获取地址', '{\"password\":[\"123456\"],\"loginName\":[\"百里守约\"],\"userName\":[\"百里守约\"]}', 1, '', '2020-09-07 09:13:17');
INSERT INTO `sys_oper_log` VALUES (38, '古诗词-注册用户', 1, 'org.king.project.peotry.controller.PeotryUserController.addSave()', 1, '', '', '/King/peotry/user/add', '112.27.240.222', '未获取地址', '{\"\":[\"\"],\"password\":[\"123456\"],\"loginName\":[\"鲁班\"],\"userName\":[\"鲁班\"]}', 1, '', '2020-09-07 09:29:25');
INSERT INTO `sys_oper_log` VALUES (39, '古诗词-注册用户', 1, 'org.king.project.peotry.controller.PeotryUserController.addSave()', 1, '', '', '/King/peotry/user/add', '183.160.212.249', '未获取地址', '{\"password\":[\"123456\"],\"loginName\":[\"abc123\"],\"userName\":[\"dadazi\"]}', 1, '', '2020-09-07 09:33:55');
INSERT INTO `sys_oper_log` VALUES (40, '更新头像', 2, 'org.king.project.peotry.controller.PeotryUserController.updateAvatar()', 1, '', '', '/King/peotry/user/updateAvatar', '36.5.144.117', '未获取地址', '{\"avatarfile\":[]}', 1, '', '2020-09-07 17:57:06');
INSERT INTO `sys_oper_log` VALUES (41, '更新头像', 2, 'org.king.project.peotry.controller.PeotryUserController.updateAvatar()', 1, '', '', '/King/peotry/user/updateAvatar', '36.5.144.117', '未获取地址', '{\"avatarfile\":[]}', 1, '', '2020-09-07 18:12:21');
INSERT INTO `sys_oper_log` VALUES (42, '个人信息', 2, 'org.king.project.system.user.controller.ProfileController.updateAvatar()', 1, 'crown', '测试部门', '/King/system/user/profile/updateAvatar', '112.32.4.91', '未获取地址', '{\"avatarfile\":[]}', 1, '', '2020-09-07 21:41:03');
INSERT INTO `sys_oper_log` VALUES (43, '更新头像', 2, 'org.king.project.peotry.controller.PeotryUserController.updateAvatar()', 1, '', '', '/King/peotry/user/updateAvatar', '114.102.186.40', '未获取地址', '{\"avatarfile\":[]}', 1, '', '2020-09-08 00:05:20');
INSERT INTO `sys_oper_log` VALUES (44, '更新头像', 2, 'org.king.project.peotry.controller.PeotryUserController.updateAvatar()', 1, '', '', '/King/peotry/user/updateAvatar', '114.100.53.49', '未获取地址', '{\"avatarfile\":[]}', 1, '', '2020-09-08 17:21:38');
INSERT INTO `sys_oper_log` VALUES (45, '更新头像', 2, 'org.king.project.peotry.controller.PeotryUserController.updateAvatar()', 1, '', '', '/King/peotry/user/updateAvatar', '114.100.53.49', '未获取地址', '{\"avatarfile\":[]}', 1, '', '2020-09-08 17:21:58');
INSERT INTO `sys_oper_log` VALUES (46, '更新头像', 2, 'org.king.project.peotry.controller.PeotryUserController.updateAvatar()', 1, '', '', '/King/peotry/user/updateAvatar', '119.123.76.193', '未获取地址', '{\"avatarfile\":[]}', 1, '', '2020-09-08 17:23:51');
INSERT INTO `sys_oper_log` VALUES (47, '古诗词-修改用户', 2, 'org.king.project.peotry.controller.PeotryUserController.editSave()', 1, '', '', '/King/peotry/user/edit', '114.100.53.49', '未获取地址', '{\"loginName\":[\"abc123\"],\"userName\":[\"abc\"],\"userId\":[\"6\"]}', 1, '', '2020-09-08 17:34:17');
INSERT INTO `sys_oper_log` VALUES (48, '古诗词-修改用户', 2, 'org.king.project.peotry.controller.PeotryUserController.editSave()', 1, '', '', '/King/peotry/user/edit', '114.100.53.49', '未获取地址', '{\"loginName\":[\"abc123\"],\"sex\":[\"1\"],\"userId\":[\"6\"]}', 1, '', '2020-09-08 17:34:21');
INSERT INTO `sys_oper_log` VALUES (49, '古诗词-修改用户', 2, 'org.king.project.peotry.controller.PeotryUserController.editSave()', 1, '', '', '/King/peotry/user/edit', '114.100.53.49', '未获取地址', '{\"loginName\":[\"abc123\"],\"sex\":[\"0\"],\"userId\":[\"6\"]}', 1, '', '2020-09-08 17:34:25');
INSERT INTO `sys_oper_log` VALUES (50, '古诗词-修改用户', 2, 'org.king.project.peotry.controller.PeotryUserController.editSave()', 1, '', '', '/King/peotry/user/edit', '114.100.53.49', '未获取地址', '{\"loginName\":[\"abc123\"],\"userName\":[\"dadazi\"],\"userId\":[\"6\"]}', 1, '', '2020-09-08 17:34:36');

-- ----------------------------
-- Table structure for sys_peotry_author
-- ----------------------------
DROP TABLE IF EXISTS `sys_peotry_author`;
CREATE TABLE `sys_peotry_author`  (
  `author_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '作者ID',
  `author_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '名称',
  `introduction` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '简介',
  `peotry_ids` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '代表作（@#区分）',
  `dynasty` int(5) NOT NULL COMMENT '朝代（1-先秦；2-两汉；3-魏晋；4-南北朝；5-隋朝；6-唐朝；7-宋朝；8-元朝；9-明朝；10-清朝）',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`author_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '古诗词-作者表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_peotry_author
-- ----------------------------
INSERT INTO `sys_peotry_author` VALUES (1, '左丘明', '<p>\r\n    丘明（姓姜，氏丘，名明），华夏人，生于前502年，死于前422年，享年80岁。丘穆公吕印的后代。本名丘明，因其先祖曾任楚国的左史官，故在姓前添“左”字，故称左史官丘明先生，世称“左丘明”，后为鲁国太史 。左氏世为鲁国太史，至丘明则约与孔子（前551-479）同时，而年辈稍晚。他是当时著名史家、学者与思想家，著有《春秋左氏传》、《国语》等。左丘明的最重要贡献在于其所著《春秋左氏传》与《国语》二书。左氏家族世为太史，左丘明又与孔子一起“如周，观书于周史”，故熟悉诸国史事，并深刻理解孔子思想。\r\n</p>', '1', 1, '2020-09-06 11:39:27');
INSERT INTO `sys_peotry_author` VALUES (2, '司马相如', '<p>    司马相如（约公元前179年—前118年），字长卿，汉族，巴郡安汉县（今四川省南充市蓬安县）人，一说蜀郡（今四川成都）人。西汉大辞赋家。司马相如是中国文化史文学史上杰出的代表，是西汉盛世汉武帝时期伟大的文学家、杰出的政治家。景帝时为武骑常侍，因病免。工辞赋，其代表作品为《子虚赋》。作品词藻富丽，结构宏大，使他成为汉赋的代表作家，后人称之为赋圣和“辞宗”。他与卓文君的爱情故事也广为流传。鲁迅的《汉文学史纲要》中还把二人放在一个专节里加以评述，指出：“武帝时文人，赋莫若司马相如，文莫若司马迁。”\r\n</p>', '2', 2, '2020-09-06 11:43:11');
INSERT INTO `sys_peotry_author` VALUES (3, '陶渊明', '<p>\r\n    陶渊明（352或365年—427年），名潜，字渊明，又字元亮，自号“五柳先生”，私谥“靖节”，世称靖节先生，浔阳柴桑人。东晋末至南朝宋初期伟大的诗人、辞赋家。曾任江州祭酒、建威参军、镇军参军、彭泽县令等职，最末一次出仕为彭泽县令，八十多天便弃职而去，从此归隐田园。他是中国第一位田园诗人，被称为“古今隐逸诗人之宗”，有《陶渊明集》。陶渊明（352或365年—427年），名潜，字渊明，又字元亮，自号“五柳先生”，私谥“靖节”，世称靖节先生，浔阳柴桑人。东晋末至南朝宋初期伟大的诗人、辞赋家。曾任江州祭酒、建威参军、镇军参军、彭泽县令等职，最末一次出仕为彭泽县令，八十多天便弃职而去，从此归隐田园。他是中国第一位田园诗人，被称为“古今隐逸诗人之宗”，有《陶渊明集》。\r\n</p>', '3@#16', 3, '2020-09-06 11:47:34');
INSERT INTO `sys_peotry_author` VALUES (4, '谢灵运', '<p>\r\n    谢灵运（385年－433年），东晋陈郡阳夏（今河南太康）人，出生在会稽始宁（今浙江上虞），原为陈郡谢氏士族。东晋名将谢玄之孙，小名“客”，人称谢客。又以袭封康乐公，称谢康公、谢康乐。著名山水诗人，主要创作活动在刘宋时代，中国文学史上山水诗派的开创者。由谢灵运始，山水诗乃成中国文学史上的一大流派，最著名的是《山居赋》，也是见诸史册的第一位大旅行家。谢灵运还兼通史学，工于书法，翻译佛经，曾奉诏撰《晋书》。《隋书·经籍志》、《晋书》录有《谢灵运集》等14种。\r\n</p>', '4', 4, '2020-09-06 11:50:55');
INSERT INTO `sys_peotry_author` VALUES (5, '薛道衡', '<p>\r\n    薛道衡(540～609) 隋代诗人。字玄卿。汉族，河东汾阴(今山西万荣)人。历仕北齐、北周。隋朝建立后，任内史侍郎，加开府仪同三司。炀帝时，出为番州刺史，改任司隶大夫。他和卢思道齐名，在隋代诗人中艺术成就最高。有集30卷已佚。今存《薛司隶集》1卷。《先秦汉魏晋南北朝诗》录存其诗20余首，《全上古三代秦汉三国六朝文》录存其文 8篇。事迹见《隋书》、《北史》本传。\r\n</p>', '5', 5, '2020-09-06 11:52:08');
INSERT INTO `sys_peotry_author` VALUES (6, '李白', '<p>\r\n    李白（701年－762年） ，字太白，号青莲居士，又号“谪仙人”，唐代伟大的浪漫主义诗人，被后人誉为“诗仙”，与杜甫并称为“李杜”，为了与另两位诗人李商隐与杜牧即“小李杜”区别，杜甫与李白又合称“大李杜”。据《新唐书》记载，李白为兴圣皇帝（凉武昭王李暠）九世孙，与李唐诸王同宗。其人爽朗大方，爱饮酒作诗，喜交友。李白深受黄老列庄思想影响，有《李太白集》传世，诗作中多以醉时写的，代表作有《望庐山瀑布》《行路难》《蜀道难》《将进酒》《明堂赋》《早发白帝城》等多首。\r\n</p>', '6', 6, '2020-09-06 11:53:40');
INSERT INTO `sys_peotry_author` VALUES (7, '苏轼', '<p>\r\n    苏轼（1037年1月8日-1101年8月24日）字子瞻、和仲，号铁冠道人、东坡居士，世称苏东坡、苏仙，汉族，眉州眉山（四川省眉山市）人，祖籍河北栾城，北宋著名文学家、书法家、画家，历史治水名人。苏轼是北宋中期文坛领袖，在诗、词、散文、书、画等方面取得很高成就。文纵横恣肆；诗题材广阔，清新豪健，善用夸张比喻，独具风格，与黄庭坚并称“苏黄”；词开豪放一派，与辛弃疾同是豪放派代表，并称“苏辛”；散文著述宏富，豪放自如，与欧阳修并称“欧苏”，为“唐宋八大家”之一。苏轼善书，“宋四家”之一；擅长文人画，尤擅墨竹、怪石、枯木等。作品有《东坡七集》《东坡易传》《东坡乐府》《潇湘竹石图卷》《古木怪石图卷》等。\r\n</p>', '7@#12', 7, '2020-09-06 11:54:29');
INSERT INTO `sys_peotry_author` VALUES (8, '马致远', '<p>\r\n    马致远（1250年-1321年），字千里，号东篱（一说字致远，晚号“东篱”），汉族，大都（今北京，有异议）人。他的年辈晚于关汉卿、白朴等人，生年当在至元（始于1264）之前，卒年当在至治改元到泰定元年（1321—1324）之间，与关汉卿、郑光祖、白朴并称“元曲四大家”，是我国元代时著名大戏剧家、散曲家。\r\n</p>', '8', 8, '2020-09-06 11:56:07');
INSERT INTO `sys_peotry_author` VALUES (9, '张岱', '<p>\r\n    张岱（1597年～1679年）又名维城，字宗子，又字石公，号陶庵、天孙，别号蝶庵居士，晚号六休居士，汉族，山阴(今浙江绍兴)人。寓居杭州。出生仕宦世家，少为富贵公子，精于茶艺鉴赏，爱繁华，好山水，晓音乐，戏曲，明亡后不仕，入山著书以终。张岱为明末清初文学家、史学家，其最擅长散文，著有《琅嬛文集》《陶庵梦忆》《西湖梦寻》《三不朽图赞》《夜航船》等绝代文学名著。\r\n</p>', '9', 9, '2020-09-06 11:56:57');
INSERT INTO `sys_peotry_author` VALUES (10, '纳兰性德', '<p>\r\n    <span style=\"line-height: 14px; font-size: 14px; \">纳兰性德</span><span style=\"color: rgb(15, 15, 15);  font-size: 14px; \">（1655－1685），满洲人，字容若，号楞伽山人，清代最著名词人之一。其诗词“纳兰词”在清代以至整个中国词坛上都享有很高的声誉，在中国文学史上也占有光彩夺目的一席。他生活于满汉融合时期，其贵族家庭兴衰具有关联于王朝国事的典型性。虽侍从帝王，却向往经历平淡。特殊的生活环境背景，加之个人的超逸才华，使其诗词创作呈现出独特的个性和鲜明的艺术风格。流传至今的《木兰花令·拟古决绝词》——“人生若只如初见，何事秋风悲画扇？等闲变却故人心，却道故人心易变。”富于意境，是其众多代表作之一。</span>\r\n</p>', '10', 10, '2020-09-06 11:59:19');
INSERT INTO `sys_peotry_author` VALUES (11, '刘禹锡', '<p>\r\n    刘禹锡（772－842），字梦得，汉族，中国唐朝彭城（今徐州）人，祖籍洛阳，唐朝文学家，哲学家，自称是汉中山靖王后裔，曾任监察御史，是王叔文政治改革集团的一员。唐代中晚期著名诗人，有“诗豪”之称。他的家庭是一个世代以儒学相传的书香门第。政治上主张革新，是王叔文派政治革新活动的中心人物之一。后来永贞革新失败被贬为朗州司马（今湖南常德）。据湖南常德历史学家、收藏家周新国先生考证刘禹锡被贬为朗州司马其间写了著名的“汉寿城春望”。\r\n</p>', '11', 6, '2020-09-06 12:00:31');
INSERT INTO `sys_peotry_author` VALUES (12, '白朴', '<p>\r\n    白朴（1226—约1306） 原名恒，字仁甫，后改名朴，字太素，号兰谷。汉族，祖籍隩州（今山西河曲附近），后徙居真定（今河北正定县），晚岁寓居金陵（今南京市），终身未仕。他是元代著名的文学家、曲作家、杂剧家，与关汉卿、马致远、郑光祖合称为元曲四大家。代表作主要有《唐明皇秋夜梧桐雨》、《裴少俊墙头马上》、《董月英花月东墙记》等。\r\n</p>', '13', 8, '2020-09-06 12:03:18');
INSERT INTO `sys_peotry_author` VALUES (13, '孟子及其弟子', '<p>\r\n    《孟子》是中国儒家典籍中的一部，记录了战国时期思想家孟子的治国思想和政治策略，是孟子和他的弟子记录并整理而成的。《孟子》在儒家典籍中占有很重要的地位，为“四书”之一\r\n</p>', '14', 1, '2020-09-08 17:14:31');
INSERT INTO `sys_peotry_author` VALUES (14, '曹操 ', '<p>\r\n    曹操（155年－220年正月庚子），字孟德，一名吉利，小字阿瞒，沛国谯（今安徽亳州）人，汉族。东汉末年杰出的政治家、军事家、文学家、书法家。三国中曹魏政权的缔造者，其子曹丕称帝后，追尊为武皇帝，庙号太祖。曹操精兵法，善诗歌，抒发自己的政治抱负，并反映汉末人民的苦难生活，气魄雄伟，慷慨悲凉；散文亦清峻整洁，开启并繁荣了建安文学，给后人留下了宝贵的精神财富，史称建安风骨，鲁迅评价其为“改造文章的祖师”。同时曹操也擅长书法，尤工章草，唐朝张怀瓘在《书断》中评其为“妙品”。\r\n</p>', '15', 2, '2020-09-08 17:18:46');
INSERT INTO `sys_peotry_author` VALUES (15, '乐府诗集', '<p>\r\n    《乐府诗集》是汉朝、魏晋、南北朝民歌精华所在。内容十分丰富，反映社会生活面很广，主要辑录汉魏到唐、五代的乐府歌辞兼及先秦至唐末的歌谣，共5000多首。它搜集广泛，各类有总序，每曲有题解。乐府原是古代掌管音乐的官署，其中就包括著名的民歌《木兰诗》。\r\n</p>', '17', 4, '2020-09-08 17:29:25');
INSERT INTO `sys_peotry_author` VALUES (16, '杨广', '<p>\r\n    隋炀帝杨广（569年－618年4月11日），华阴人（今陕西华阴）人，生于隋京师长安，是隋朝第二位皇帝，一名英，小字阿麽。隋文帝杨坚、独孤皇后的次子，开皇元年（581年）立为晋王，开皇二十年（600年）十一月立为太子，仁寿四年（604年）七月继位。他在位期间修建大运河（开通永济渠、通济渠，加修邗沟、江南运河），营建东都洛阳，开创科举制度，亲征吐谷浑，三征高句丽，因为滥用民力，造成天下大乱直接导致了隋朝的灭亡。公元618年在江都被部下缢杀。唐朝谥炀皇帝，夏王窦建德谥闵皇帝，其孙杨侗谥为世祖明皇帝。《全隋诗》录存其诗40多首。\r\n</p>', '18', 5, '2020-09-08 17:32:57');
INSERT INTO `sys_peotry_author` VALUES (17, '杜甫', '<p>\r\n    杜甫（712－770），字子美，自号少陵野老，世称“杜工部”、“杜少陵”等，汉族，河南府巩县（今河南省巩义市）人，唐代伟大的现实主义诗人，杜甫被世人尊为“诗圣”，其诗被称为“诗史”。杜甫与李白合称“李杜”，为了跟另外两位诗人李商隐与杜牧即“小李杜”区别开来，杜甫与李白又合称“大李杜”。他忧国忧民，人格高尚，他的约1400余首诗被保留了下来，诗艺精湛，在中国古典诗歌中备受推崇，影响深远。759-766年间曾居成都，后世有杜甫草堂纪念。\r\n</p>', '19', 6, '2020-09-08 17:36:55');
INSERT INTO `sys_peotry_author` VALUES (18, '周敦颐', '<p>\r\n    周敦颐（1017年6月1日—1073年7月14日），又名周元皓，原名周敦实，字茂叔，谥号元公，道州营道楼田保（今湖南省道县）人，世称濂溪先生。是北宋五子之一，宋朝儒家理学思想的开山鼻祖，文学家、哲学家。著有《周元公集》《爱莲说》《太极图说》《通书》（后人整编进《周元公集》）。周敦颐所提出的无极、太极、阴阳、五行、动静、主静、至诚、无欲、顺化等理学基本概念，为后世的理学家反复讨论和发挥，构成理学范畴体系中的重要内容。\r\n</p>', '20', 7, '2020-09-08 17:41:11');
INSERT INTO `sys_peotry_author` VALUES (19, '王冕', '<p>\r\n    王冕（1310年～1359年），字元章，号煮石山农，亦号食中翁、梅花屋主等，浙江省绍兴市诸暨枫桥人，元朝著名画家、诗人、篆刻家。他出身贫寒，幼年替人放牛，靠自学成才。有《竹斋集》3卷，续集2卷。一生爱好梅花，种梅、咏梅，又攻画梅。所画梅花花密枝繁，生意盎然，劲健有力，对后世影响较大。存世画迹有《南枝春早图》《墨梅图》《三君子图》等。能治印，创用花乳石刻印章，篆法绝妙。《明史》有传。\r\n</p>', '21', 8, '2020-09-08 17:44:58');

-- ----------------------------
-- Table structure for sys_peotry_collection
-- ----------------------------
DROP TABLE IF EXISTS `sys_peotry_collection`;
CREATE TABLE `sys_peotry_collection`  (
  `peotry_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '古诗ID',
  `peotry_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '名称',
  `author_id` int(10) NOT NULL DEFAULT 0 COMMENT '作者ID（0-无名氏或佚名）',
  `original_content` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '原文',
  `translation_content` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '译文',
  `rank` int(11) NULL DEFAULT NULL COMMENT '排序',
  `pronunciation` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '发音',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`peotry_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '古诗词-诗集表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_peotry_collection
-- ----------------------------
INSERT INTO `sys_peotry_collection` VALUES (1, '曹刿论战', 1, '<p>    十年春，齐师伐我。公将战，曹刿请见。其乡人曰：“肉食者谋之，又何间焉？”刿曰：“肉食者鄙，未能远谋。”乃入见。问：“何以战？”公曰：“衣食所安，弗敢专也，必以分人。”对曰：“小惠未遍，民弗从也。”公曰：“牺牲玉帛，弗敢加也，必以信。”对曰：“小信未孚，神弗福也。”公曰：“小大之狱，虽不能察，必以情。”对曰：“忠之属也。可以一战。战则请从。”（遍 同：徧)\r\n</p>\r\n<p>\r\n    　　公与之乘，战于长勺。公将鼓之。刿曰：“未可。”齐人三鼓。刿曰：“可矣。”齐师败绩。公将驰之。刿曰：“未可。”下视其辙，登轼而望之，曰：“可矣。”遂逐齐师。\r\n</p>\r\n<p>\r\n    　　既克，公问其故。对曰：“夫战，勇气也。一鼓作气，再而衰，三而竭。彼竭我盈，故克之。夫大国，难测也，惧有伏焉。吾视其辙乱，望其旗靡，故逐之。”\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '<p>\r\n    鲁庄公十年的春天，齐国军队攻打鲁国。鲁庄公将要迎战。曹刿请求鲁庄公接见自己。他的同乡说：“打仗的事位当权者自会谋划，你又何必参与呢？”曹刿说：“当权者目光短浅，不能深谋远虑。”于是入朝去见鲁庄公。曹刿问：“您凭借什么作战？”鲁庄公说：“衣食这一类安身立命的东西，不敢独自享有，一定把它分给身边的人。”曹刿回答说：“这些小恩惠不能遍及百姓，百姓是不会听从您的。”鲁庄公说：“祭祀神灵的牛、羊、玉帛之类的用品，我(从来)不敢虚报数目，一定按照承诺的去做。”曹刿说：“这只是小信用，未能让神灵信服，神是不会保佑你的。 ”鲁庄公说：“大大小小的案件，即使不能件件都了解得清楚，但一定要处理得合情合理。”曹刿回答说：“这才尽了本职一类的事，可以凭借这个条件打一仗。如果作战，请允许我跟随您一同去。”\r\n</p>\r\n<p>\r\n    鲁庄公和他共坐一辆战车，在长勺和齐军作战。鲁庄公将要下令击鼓进军。曹刿说：“现在不行。”等到齐军三次击鼓之后。曹刿说：“可以击鼓进军了。”齐军溃败。鲁庄公又要下令驾车马追逐齐军。曹刿说：“还不行。”说完就下了战车，查看齐军车轮碾出的痕迹，又登上战车，扶着车前横木远望齐军的队形，这才说：“可以追击了。”于是追击齐军。\r\n</p>\r\n<p>\r\n    战胜齐军后，鲁庄公问他这样做的原因。曹刿回答说：“作战，是靠敢作敢为毫不畏惧的气概。第一次击鼓能够振作士气。第二次击鼓士兵们的士气就开始低落了，第三次击鼓士兵们的士气就耗尽了。他们的士气已经消失而我军的士气正盛，所以才战胜了他们。像齐国这样的大国，他们的情况是难以推测的，怕他们设下埋伏。我看他们车轮碾过的痕迹散乱，望见他们的旗子倒下了，所以决定追击他们。”\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', 1, '', '2020-09-04 16:43:37');
INSERT INTO `sys_peotry_collection` VALUES (2, '琴歌二首（凤兮凤兮归故乡）', 2, '<p>\r\n    凤兮凤兮归故乡，遨游四海求其皇。\r\n</p>\r\n<p>\r\n    时未遇兮无所将，何悟今兮升斯堂！\r\n</p>\r\n<p>\r\n    有艳淑女在闺房，室迩人遐毒我肠。\r\n</p>\r\n<p>\r\n    何缘交颈为鸳鸯，胡颉颃兮共翱翔！\r\n</p>\r\n<p>\r\n    皇兮皇兮从我栖，得托孳尾永为妃。\r\n</p>\r\n<p>\r\n    交情通意心和谐，中夜相从知者谁？\r\n</p>\r\n<p>\r\n    双翼俱起翻高飞，无感我思使余悲。\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '<p>\r\n    凤鸟啊凤鸟，回到了家乡，行踪无定，游览天下只为寻求心中的凰鸟。&nbsp;\r\n</p>\r\n<p>\r\n    未遇凰鸟时啊，不知所往，怎能悟解今日登门后心中所感?&nbsp;\r\n</p>\r\n<p>\r\n    有位美丽而娴雅贞静的女子在她的居室，居处虽近，这美丽女子却离我很远，思念之情，正残虐着我的心肠。&nbsp;\r\n</p>\r\n<p>\r\n    如何能够得此良缘，结为夫妇，做那恩爱的交颈鸳鸯，但愿我这凤鸟，能与你这凰鸟一同双飞，天际游翔。&nbsp;\r\n</p>\r\n<p>\r\n    凰鸟啊凰鸟愿你与我起居相依，形影不离，哺育生子，永远做我的配偶。&nbsp;\r\n</p>\r\n<p>\r\n    情投意合，两心和睦谐顺。半夜里与我互相追随，又有谁会知晓? 展开双翼远走高飞，徒然为你感念相思而使我悲伤。\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', 1, '', '2020-09-04 16:52:12');
INSERT INTO `sys_peotry_collection` VALUES (3, '桃花源记', 3, '<p style=\"padding: 0px; line-height: 24px; color: rgb(51, 51, 51); font-family: 微软雅黑, Arial, Helvetica; font-size: 14px; white-space: normal;\">\r\n    晋太元中，武陵人捕鱼为业。缘溪行，忘路之远近。忽逢桃花林，夹岸数百步，中无杂树，芳草鲜美，落英缤纷，渔人甚异之。复前行，欲穷其林。\r\n</p>\r\n<p style=\"padding: 0px; line-height: 24px; color: rgb(51, 51, 51); font-family: 微软雅黑, Arial, Helvetica; font-size: 14px; white-space: normal;\">\r\n    　　林尽水源，便得一山，山有小口，仿佛若有光。便舍船，从口入。初极狭，才通人。复行数十步，豁然开朗。土地平旷，屋舍俨然，有良田美池桑竹之属。阡陌交通，鸡犬相闻。其中往来种作，男女衣着，悉如外人。黄发垂髫，并怡然自乐。\r\n</p>\r\n<p style=\"padding: 0px; line-height: 24px; color: rgb(51, 51, 51); font-family: 微软雅黑, Arial, Helvetica; font-size: 14px; white-space: normal;\">\r\n    　　见渔人，乃大惊，问所从来。具答之。便要还家，设酒杀鸡作食。村中闻有此人，咸来问讯。自云先世避秦时乱，率妻子邑人来此绝境，不复出焉，遂与外人间隔。问今是何世，乃不知有汉，无论魏晋。此人一一为具言所闻，皆叹惋。余人各复延至其家，皆出酒食。停数日，辞去。此中人语云：“不足为外人道也。”(间隔 一作：隔绝)\r\n</p>\r\n<p style=\"padding: 0px; line-height: 24px; color: rgb(51, 51, 51); font-family: 微软雅黑, Arial, Helvetica; font-size: 14px; white-space: normal;\">\r\n    　　既出，得其船，便扶向路，处处志之。及郡下，诣太守，说如此。太守即遣人随其往，寻向所志，遂迷，不复得路。\r\n</p>\r\n<p style=\"padding: 0px; line-height: 24px; color: rgb(51, 51, 51); font-family: 微软雅黑, Arial, Helvetica; font-size: 14px; white-space: normal;\">\r\n    　　南阳刘子骥，高尚士也，闻之，欣然规往。未果，寻病终，后遂无问津者。\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '<p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(15, 15, 15); line-height: 28px; font-family: ����, Arial, Helvetica; font-size: 14px; white-space: normal; \">\r\n    东晋太元（公元376-396）年间，武陵有个人以捕鱼为生。有一天他沿着溪水划船而行，忘记了路有多远？忽然遇到一片桃花林，在小溪两岸的几百步之内，中间没有其它树木，花草鲜嫩美丽，地上的落花繁多交杂，渔人对此感到非常诧异。他继续往前走，想要走到林子的尽头。\r\n</p>\r\n<p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(15, 15, 15); line-height: 28px; font-family: ����, Arial, Helvetica; font-size: 14px; white-space: normal; \">\r\n    　　桃花林的尽头就是溪水的源头，渔人发现了一座小山，山上有个小洞口，洞子里面隐隐约约透着点光亮。渔人便下了船，从洞口走了进去。最开始非常狭窄，只能容得下一人通过。又行走了几十步，突然变得明亮开阔了。渔人眼前这片土地平坦宽广，房屋排列得非常整齐，还有肥沃的田地、美丽的池塘，以及桑树、竹子这类的植物。田间小路四通八达，鸡鸣狗吠的声音此起彼伏。人们在田间来来往往耕种劳动，男女的穿戴全都与桃花源以外的人一样。老年人和小孩儿，都怡然并自得其乐。\r\n</p>\r\n<p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(15, 15, 15); line-height: 28px; font-family: ����, Arial, Helvetica; font-size: 14px; white-space: normal; \">\r\n    　　这里的人看见了渔人，感觉非常惊讶，问他是从哪里来的。渔人都一一作了回答。这里的人便邀请他到家中做客，摆了酒、杀了鸡用来款待他。村里面的其他人听说来了这么一个人，全都来打听消息。他们自己说他们的先祖是为了躲避秦朝时期的战乱，率领妻儿乡邻们来到这个与世隔绝的地方，从此他们再没有人出去了，所以和外面的人隔绝了一切往来。村里的人问渔人现如今是什么朝代，他们不知道有汉朝，更不用说魏、晋两朝了。渔人把自己知道的所有事都一一说了出来，村民们听了都感叹惋惜。其余的人各自又把渔人邀请到自己的家中，都拿出自己的美酒佳肴来款待他。渔人停留了几日后，就向村里的人告辞。村里的人告诉他：“这里的情况不值得对外面的人说啊。”\r\n</p>\r\n<p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(15, 15, 15); line-height: 28px; font-family: ����, Arial, Helvetica; font-size: 14px; white-space: normal; \">\r\n    　　渔人出来之后，找到了自己的船，就沿着来时的路回去，处处都做了记号。他到了郡城武陵，就去拜见太守，说了自己的这番经历。太守立即派遣人员跟随他前往，寻找渔人先前作的记号，最终迷路了，后来再也找不到通往桃花源的路了。\r\n</p>\r\n<p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(15, 15, 15); line-height: 28px; font-family: ����, Arial, Helvetica; font-size: 14px; white-space: normal; \">\r\n    　　南阳有个叫刘子骥的人，是一个高尚的读书人，他听到了这个消息，非常愉快地计划着前往桃花源。但没有实现，不久后就病死了，后来就再也没有探访桃花源的人了。\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', 1, '', '2020-09-04 17:00:42');
INSERT INTO `sys_peotry_collection` VALUES (4, '游赤石进帆海', 4, '<p>\r\n    首夏犹清和，芳草亦未歇。\r\n</p>\r\n<p>\r\n    水宿淹晨暮，阴霞屡兴没。\r\n</p>\r\n<p>\r\n    周览倦瀛壖，况乃陵穷发。\r\n</p>\r\n<p>\r\n    川后时安流，天吴静不发。\r\n</p>\r\n<p>\r\n    扬帆采石华，挂席拾海月。\r\n</p>\r\n<p>\r\n    溟涨无端倪，虚舟有超越。\r\n</p>\r\n<p>\r\n    仲连轻齐组，子牟眷魏阙。\r\n</p>\r\n<p>\r\n    矜名道不足，适己物可忽。\r\n</p>\r\n<p>\r\n    请附任公言，终然谢天伐。\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 15px; font-family: &quot;Microsoft YaHei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n    “首夏”二句遥应《游南亭》诗“未厌青春好，已睹朱明移”，既点明此游节令，又显示了一种莫可如何而慰情聊胜无的复杂心情。游南亭触景生情，由春夏迭代中，深哀盛年已去，衰疾在斯。这里说，初夏了，天气总算还清爽煦和，芳草也未尝因骄阳的淫威而枯萎。可见诗人似乎已从前诗的悲感中稍稍复苏。尤可注意：“芳草犹未歇”，实反用《离骚》“及年岁之未晏兮，时亦犹其未央，恐鹈鴂之先鸣兮，使夫百草为之不芳”，则又于自幸自慰中，见出谢客这位“逐臣”的傲兀性格来。但是这种欣慰并不能维持多久，在出郡数十里南游赤石中，日复一日地水行水宿，未免单调，而阴晴的变化，云霞的出没，也因屡见而失去了新鲜之感。这滨海的周游，已使人厌厌生“倦”，更何况面临的是极北不毛之地，穷发更北的溟海呢。有人认为“况乃临穷发”是写诗人豪情勃发，顿起泛海之想，然而“况乃”二字分明承“倦瀛壖”来，见出帆海之前，诗人的心情并不甚佳。\r\n</p>\r\n<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-size: 15px; font-family: &quot;Microsoft YaHei&quot;; white-space: normal; background-color: rgb(255, 255, 255);\">\r\n    &nbsp;　　然而当舟船沿港湾进入大海，奇景忽开，水面一平如镜，川后既令江水安流，八首八足八尾背青黄的朝阳谷神水伯天吴，虽然脾气暴虐，此时却也“静不发”，仿佛都在迎接诗人的来游。于是他高张云帆，泛舟海上，随意掇取那形如龟足的石华，那其大如镜白色正圆的海月。而当他抬头回望时，溟海无涯，心情也竟如坐下的轻舟而起凌虚凭空之想。\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', 1, '', '2020-09-04 17:12:08');
INSERT INTO `sys_peotry_collection` VALUES (5, '人日思归', 5, '<p>\r\n    入春才七日，离家已二年。\r\n</p>\r\n<p>\r\n    人归落雁后，思发在花前。\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '<p>\r\n    入春才刚刚七日，离开家已经有两年了。\r\n</p>\r\n<p>\r\n    归家的日期落在春回大地北飞的雁群之后，但是想回家的念头却在春花开放以前就有了。\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', 1, '', '2020-09-04 17:16:26');
INSERT INTO `sys_peotry_collection` VALUES (6, '将进酒', 6, '<p>\r\n    君不见，黄河之水天上来，奔流到海不复回。\r\n</p>\r\n<p>\r\n    君不见，高堂明镜悲白发，朝如青丝暮成雪。\r\n</p>\r\n<p>\r\n    人生得意须尽欢，莫使金樽空对月。\r\n</p>\r\n<p>\r\n    天生我材必有用，千金散尽还复来。\r\n</p>\r\n<p>\r\n    烹羊宰牛且为乐，会须一饮三百杯。\r\n</p>\r\n<p>\r\n    岑夫子，丹丘生，将进酒，杯莫停。\r\n</p>\r\n<p>\r\n    与君歌一曲，请君为我倾耳听。(倾耳听 一作：侧耳听)\r\n</p>\r\n<p>\r\n    钟鼓馔玉不足贵，但愿长醉不愿醒。(不足贵 一作：何足贵；不愿醒 一作：不复醒)\r\n</p>\r\n<p>\r\n    古来圣贤皆寂寞，惟有饮者留其名。(古来 一作：自古；惟 通：唯)\r\n</p>\r\n<p>\r\n    陈王昔时宴平乐，斗酒十千恣欢谑。\r\n</p>\r\n<p>\r\n    主人何为言少钱，径须沽取对君酌。\r\n</p>\r\n<p>\r\n    五花马、千金裘，呼儿将出换美酒，与尔同销万古愁。\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '<p>\r\n    你难道没有看见吗？那黄河之水犹如从天上倾泻而来，波涛翻滚直奔东海从来不会再往回流。\r\n</p>\r\n<p>\r\n    你难道没有看见，在高堂上面对明镜，深沉悲叹那一头白发？早晨还是青丝到了傍晚却变得如雪一般。\r\n</p>\r\n<p>\r\n    人生得意之时就要尽情的享受欢乐，不要让金杯无酒空对皎洁的明月。\r\n</p>\r\n<p>\r\n    上天造就了我的才干就必然是有用处的，千两黄金花完了也能够再次获得。\r\n</p>\r\n<p>\r\n    且把烹煮羔羊和宰牛当成一件快乐的事情，如果需要也应当痛快地喝三百杯。\r\n</p>\r\n<p>\r\n    岑勋，元丹丘，快点喝酒，不要停下来。\r\n</p>\r\n<p>\r\n    我给你们唱一首歌，请你们为我倾耳细听。\r\n</p>\r\n<p>\r\n    山珍海味的豪华生活算不上什么珍贵，只希望能醉生梦死而不愿清醒。\r\n</p>\r\n<p>\r\n    自古以来圣贤都是孤独寂寞的，只有会喝酒的人才能够留传美名。\r\n</p>\r\n<p>\r\n    陈王曹植当年设宴平乐观，喝着名贵的酒纵情地欢乐。\r\n</p>\r\n<p>\r\n    你为何说我的钱不多？只管把这些钱用来买酒一起喝。\r\n</p>\r\n<p>\r\n    名贵的五花良马，昂贵的千金皮衣，叫侍儿拿去统统换美酒，让我们一起来消除这无尽的长愁！\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', 1, '', '2020-09-04 17:20:39');
INSERT INTO `sys_peotry_collection` VALUES (7, '水调歌头·明月几时有', 7, '<p>\r\n    丙辰中秋，欢饮达旦，大醉，作此篇，兼怀子由。\r\n</p>\r\n<p>\r\n    明月几时有？把酒问青天。不知天上宫阙，今夕是何年。我欲乘风归去，又恐琼楼玉宇，高处不胜寒。起舞弄清影，何似在人间。(何似 一作：何时；又恐 一作：惟 / 唯恐)\r\n</p>\r\n<p>\r\n    转朱阁，低绮户，照无眠。不应有恨，何事长向别时圆？人有悲欢离合，月有阴晴圆缺，此事古难全。但愿人长久，千里共婵娟。(长向 一作：偏向)\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '<p>\r\n    丙辰年（公元1076年）的中秋节，高高兴兴地喝酒直到天亮，喝了个大醉，写下这首词，同时也思念弟弟苏辙。\r\n</p>\r\n<p>\r\n    明月从什么时候开始有的呢？我拿着酒杯遥问苍天。不知道天上的宫殿，今晚是哪一年。我想凭借着风力回到天上去看一看，又担心美玉砌成的楼宇太高了，我经受不住寒冷。起身舞蹈玩赏着月光下自己清朗的影子，月宫哪里比得上在人间。\r\n</p>\r\n<p>\r\n    月儿移动，转过了朱红色的楼阁，低低地挂在雕花的窗户上，照着没有睡意的人。明月不应该对人们有什么怨恨吧，可又为什么总是在人们离别之时才圆呢？人有悲欢离合的变迁，月有阴晴圆缺的转换，这事儿自古以来就很难周全。希望人们可以长长久久地在一起，即使相隔千里也能一起欣赏这美好的月亮。\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', 1, '', '2020-09-04 17:24:03');
INSERT INTO `sys_peotry_collection` VALUES (8, '天净沙·秋思', 8, '<p>\r\n    枯藤老树昏鸦，小桥流水人家，古道西风瘦马。夕阳西下，断肠人在天涯。\r\n</p>', '<p>\r\n    天色黄昏，一群乌鸦落在枯藤缠绕的老树上，发出凄厉的哀鸣。小桥下流水哗哗作响，小桥边庄户人家炊烟袅袅。古道上一匹瘦马，顶着西风艰难地前行。夕阳渐渐地失去了光泽，从西边落下。凄寒的夜色里，只有孤独的旅人漂泊在遥远的地方。\r\n</p>', 1, '', '2020-09-04 17:26:22');
INSERT INTO `sys_peotry_collection` VALUES (9, '湖心亭看雪', 9, '<p>\r\n    崇祯五年十二月，余住西湖。大雪三日，湖中人鸟声俱绝。是日更定矣，余拏一小舟，拥毳衣炉火，独往湖心亭看雪。雾凇沆砀，天与云与山与水，上下一白，湖上影子，惟长堤一痕、湖心亭一点、与余舟一芥、舟中人两三粒而已。(余拏 一作：余挐)\r\n</p>\r\n<p>\r\n    　　到亭上，有两人铺毡对坐，一童子烧酒炉正沸。见余大喜曰：“湖中焉得更有此人！”拉余同饮。余强饮三大白而别。问其姓氏，是金陵人，客此。及下船，舟子喃喃曰：“莫说相公痴，更有痴似相公者。”\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '<p>\r\n    崇祯五年十二月，我住在西湖边。大雪接连下了多日，湖中游人全无，连飞鸟的声音都消失了。这天初更时分，我撑着一叶小舟，穿着细毛皮衣，带着火炉，独自前往湖心亭看雪。湖面上冰花一片弥漫，天与云与山与水，浑然一体，白茫茫一片。湖上的影子，只有一道长堤的痕迹，一点湖心亭的轮廓，和我的一叶小舟，舟中的两三粒人影罢了。\r\n</p>\r\n<p>\r\n    到了湖心亭上，看见有两人铺好毡子，相对而坐，一个童子正把酒炉里的酒烧得滚沸。他们看见我，非常高兴地说：“想不到在湖中还会有您这样有闲情逸致的人！”于是拉着我一同饮酒。我尽情喝了三大杯酒，然后和他们道别。问他们的姓氏，得知他们是金陵人，在此地客居。等到了下船的时候，船夫喃喃地说：“不要说相公您痴，还有像相公您一样痴的人啊！”\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', 1, '', '2020-09-04 17:28:30');
INSERT INTO `sys_peotry_collection` VALUES (10, '木兰花·拟古决绝词柬友', 10, '<p>\r\n    人生若只如初见，何事秋风悲画扇。\r\n</p>\r\n<p>\r\n    等闲变却故人心，却道故人心易变。(一作：却道故心人易变)\r\n</p>\r\n<p>\r\n    骊山语罢清宵半，泪雨霖铃终不怨。(一作：泪雨零 / 夜雨霖)\r\n</p>\r\n<p>\r\n    何如薄幸锦衣郎，比翼连枝当日愿。\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '<p>\r\n    人生如果都像初次相遇那般相处该多美好，那样就不会有现在的离别相思凄凉之苦了。\r\n</p>\r\n<p>\r\n    如今轻易地变了心，你却反而说情人间就是容易变心的。\r\n</p>\r\n<p>\r\n    想当初唐皇与贵妃的山盟海誓犹在耳边，却又最终作决绝之别，即使如此，也生不得怨。\r\n</p>\r\n<p>\r\n    但你又怎比得上当年的唐明皇呢，他总还是与杨玉环有过比翼鸟、连理枝的誓愿。\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', 1, '', '2020-09-04 17:30:08');
INSERT INTO `sys_peotry_collection` VALUES (11, '陋室铭', 11, '<p>    山不在高，有仙则名。水不在深，有龙则灵。斯是陋室，惟吾德馨。苔痕上阶绿，草色入帘青。谈笑有鸿儒，往来无白丁。可以调素琴，阅金经。无丝竹之乱耳，无案牍之劳形。南阳诸葛庐，西蜀子云亭。孔子云：何陋之有？\r\n</p>', '<p>\r\n    山不在于高，有了神仙就会有名气。水不在于深，有了龙就会有灵气。这是简陋的房子，只是因为我品德高尚就感觉不到简陋了。苔痕蔓延到台阶上，使台阶都绿了；草色映入竹帘，使室内染上青色。到这里谈笑的都是博学之人，交往的没有知识浅薄之人，可以弹奏不加装饰的琴，阅读佛经。没有弦管奏乐的声音扰乱耳朵，没有官府的公文使身体劳累。南阳有诸葛亮的草庐，西蜀有扬子云的亭子。孔子说：这有什么简陋的呢？\r\n</p>', 2, '', '2020-09-04 17:32:29');
INSERT INTO `sys_peotry_collection` VALUES (12, '念奴娇·赤壁怀古', 7, '<p>\r\n    大江东去，浪淘尽，千古风流人物。\r\n</p>\r\n<p>\r\n    故垒西边，人道是，三国周郎赤壁。\r\n</p>\r\n<p>\r\n    乱石穿空，惊涛拍岸，卷起千堆雪。(穿空 一作：崩云)\r\n</p>\r\n<p>\r\n    江山如画，一时多少豪杰。\r\n</p>\r\n<p>\r\n    遥想公瑾当年，小乔初嫁了，雄姿英发。\r\n</p>\r\n<p>\r\n    羽扇纶巾，谈笑间，樯橹灰飞烟灭。(樯橹 一作：强虏)\r\n</p>\r\n<p>\r\n    故国神游，多情应笑我，早生华发。\r\n</p>\r\n<p>\r\n    人生如梦，一尊还酹江月。(人生 一作：人间；尊 同：樽)\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '<p>\r\n    大江之水滚滚不断向东流去，滔滔巨浪淘尽千古英雄人物。\r\n</p>\r\n<p>\r\n    那旧营垒的西边，人们说那就是三国时周郎大破曹兵的赤壁。\r\n</p>\r\n<p>\r\n    岸边乱石林立，像要刺破天空，惊人的巨浪拍击着江岸，激起的浪花好似千万堆白雪。\r\n</p>\r\n<p>\r\n    雄壮的江山奇丽如图画，一时间涌现出多少英雄豪杰。\r\n</p>\r\n<p>\r\n    遥想当年的周瑜春风得意，小乔刚刚嫁给了他做妻子，英姿雄健风度翩翩神采照人。\r\n</p>\r\n<p>\r\n    手摇羽扇头戴纶巾，谈笑之间，就把强敌的战船烧得灰飞烟灭。\r\n</p>\r\n<p>\r\n    如今我身临古战场神游往昔，可笑我有如此多的怀古柔情，竟如同未老先衰般鬓发斑白。\r\n</p>\r\n<p>\r\n    人生犹如一场梦，且洒一杯酒祭奠江上的明月。\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', 2, '', '2020-09-04 17:33:51');
INSERT INTO `sys_peotry_collection` VALUES (13, '天净沙·秋\r\n\r\n', 12, '<p>\r\n    孤村落日残霞，轻烟老树寒鸦，一点飞鸿影下。青山绿水，白草红叶黄花。\r\n</p>', '<p>\r\n    太阳渐渐西沉，已衔着西山了，天边的晚霞也逐渐开始消散，只残留有几分黯淡的色彩，映照着远处安静的村庄是多么的孤寂。轻烟淡淡飘向空中，几只乌鸦栖息在佝偻的老树上，远处的一只大雁飞掠而下，划过天际。远处一片青山绿水，白草、红叶、黄花互相夹杂，好一幅色彩绚丽的秋景图啊。\r\n</p>', 2, '', '2020-09-04 17:36:36');
INSERT INTO `sys_peotry_collection` VALUES (14, '生于忧患，死于安乐', 13, '<p>\r\n    舜发于畎亩之中，傅说举于版筑之间，胶鬲举于鱼盐之中，管夷吾举于士，孙叔敖举于海，百里奚举于市。故天将降大任于是人也，必先苦其心志，劳其筋骨，饿其体肤，空乏其身，行拂乱其所为，所以动心忍性，曾益其所不能。(是人 一作：斯人)\r\n</p>\r\n<p>\r\n    　　人恒过，然后能改；困于心，衡于虑，而后作；征于色，发于声，而后喻。入则无法家拂士，出则无敌国外患者，国恒亡。然后知生于忧患而死于安乐也。\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '<p>\r\n    舜从田野耕作之中被起用，傅说从筑墙的劳作之中被起用，胶鬲从贩鱼卖盐中被起用，管夷吾被从狱官手里救出来并受到任用，孙叔敖从海滨隐居的地方被起用，百里奚被从奴隶集市里赎买回来并被起用。所以上天要把重任降临在某人的身上，必定要先使他的内心痛苦，使他的筋骨劳累，使他经受饥饿之苦，以致肌肤消瘦，使他受贫困之苦，扰乱其人业已开始的行动，这样来使他的心灵受到震撼，使他的性情坚忍起来，增加他所不具备的能力。\r\n</p>\r\n<p>\r\n    人常常犯错，这样以后才能改正；内心忧困，思想阻塞，然后才能奋起；心绪显露在脸色上，表达在声音中，然后才能被人了解。一个国家，在内如果没有坚守法度的大臣和足以辅佐君王的贤士，在外没有与之匹敌的邻国和来自外国的祸患，就常常会有覆灭的危险。这样，就知道忧愁患害足以使人生存，安逸享乐足以使人灭亡的道理了。\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', 2, '', '2020-09-08 17:10:53');
INSERT INTO `sys_peotry_collection` VALUES (15, '观沧海', 14, '<p>\r\n    东临碣石，以观沧海。\r\n</p>\r\n<p>\r\n    水何澹澹，山岛竦峙。\r\n</p>\r\n<p>\r\n    树木丛生，百草丰茂。\r\n</p>\r\n<p>\r\n    秋风萧瑟，洪波涌起。\r\n</p>\r\n<p>\r\n    日月之行，若出其中；\r\n</p>\r\n<p>\r\n    星汉灿烂，若出其里。\r\n</p>\r\n<p>\r\n    幸甚至哉，歌以咏志。\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '<p>\r\n    东行登上高高的碣石山，来观赏苍茫的大海。\r\n</p>\r\n<p>\r\n    海水多么宽阔浩荡，海中山岛罗列，高耸挺立。\r\n</p>\r\n<p>\r\n    周围树木葱茏，花草丰茂。\r\n</p>\r\n<p>\r\n    萧瑟的风声传来，草木动摇，海中翻涌着巨大的海浪。\r\n</p>\r\n<p>\r\n    太阳和月亮升起降落，好像是从这浩瀚的海洋中发出的。\r\n</p>\r\n<p>\r\n    银河里的灿烂群星，也好像是从大海的怀抱里涌现出来的。\r\n</p>\r\n<p>\r\n    啊，庆幸得很！就用诗歌来表达内心的志向吧。\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', 2, '', '2020-09-08 17:16:04');
INSERT INTO `sys_peotry_collection` VALUES (16, '饮酒·其五', 3, '<p>\r\n    结庐在人境，而无车马喧。\r\n</p>\r\n<p>\r\n    问君何能尔？心远地自偏。\r\n</p>\r\n<p>\r\n    采菊东篱下，悠然见南山。\r\n</p>\r\n<p>\r\n    山气日夕佳，飞鸟相与还。\r\n</p>\r\n<p>\r\n    此中有真意，欲辨已忘言。\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '<p>\r\n    将房屋建造在人来人往的地方，却不会受到世俗交往的喧扰。\r\n</p>\r\n<p>\r\n    问我为什么能这样，只要心志高远，自然就会觉得所处地方僻静了。\r\n</p>\r\n<p>\r\n    在东篱之下采摘菊花，悠然间，那远处的南山映入眼帘。\r\n</p>\r\n<p>\r\n    傍晚时分南山景致甚佳，雾气峰间缭绕，飞鸟结伴而还。\r\n</p>\r\n<p>\r\n    这里面蕴含着人生的真正意义，想要分辨清楚，却不知怎样表达。\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', 2, '', '2020-09-08 17:20:06');
INSERT INTO `sys_peotry_collection` VALUES (17, '木兰诗', 15, '<p>\r\n    唧唧复唧唧，木兰当户织。不闻机杼声，唯闻女叹息。(唯 一作：惟)\r\n</p>\r\n<p>\r\n    问女何所思，问女何所忆。女亦无所思，女亦无所忆。昨夜见军帖，可汗大点兵，军书十二卷，卷卷有爷名。阿爷无大儿，木兰无长兄，愿为市鞍马，从此替爷征。\r\n</p>\r\n<p>\r\n    东市买骏马，西市买鞍鞯，南市买辔头，北市买长鞭。旦辞爷娘去，暮宿黄河边，不闻爷娘唤女声，但闻黄河流水鸣溅溅。旦辞黄河去，暮至黑山头，不闻爷娘唤女声，但闻燕山胡骑鸣啾啾。\r\n</p>\r\n<p>\r\n    万里赴戎机，关山度若飞。朔气传金柝，寒光照铁衣。将军百战死，壮士十年归。\r\n</p>\r\n<p>\r\n    归来见天子，天子坐明堂。策勋十二转，赏赐百千强。可汗问所欲，木兰不用尚书郎，愿驰千里足，送儿还故乡。\r\n</p>\r\n<p>\r\n    爷娘闻女来，出郭相扶将；阿姊闻妹来，当户理红妆；小弟闻姊来，磨刀霍霍向猪羊。开我东阁门，坐我西阁床。脱我战时袍，著我旧时裳。当窗理云鬓，对镜帖花黄。出门看火伴，火伴皆惊忙：同行十二年，不知木兰是女郎。\r\n</p>\r\n<p>\r\n    雄兔脚扑朔，雌兔眼迷离；双兔傍地走，安能辨我是雄雌？\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '<p>\r\n    叹息声一声接着一声，木兰对着房门织布。听不见织布机织布梭的声音，只听见木兰在叹息。\r\n</p>\r\n<p>\r\n    问木兰在想什么？在思念什么？（木兰答道）我也没在想什么，也没在惦记什么。昨天晚上看见了征兵的文书，君主在大规模征兵，征兵的名册有很多卷，每一卷上都有我父亲的名字。父亲没有大儿子，我没有兄长，木兰愿意为此到集市上去买马鞍和马匹，从此开始替代父亲去征战。\r\n</p>\r\n<p>\r\n    在集市各处购买骏马、马鞍、鞍下的垫子、马嚼子、缰绳和马鞭。早上辞别父母上路，晚上宿营在黄河边，听不见父母呼叫女儿的声音，只听见黄河水奔腾流淌的声音。早晨离开黄河上路，晚上到达黑山头，听不见父母呼叫女儿的声音，只听见胡人战马啾啾的鸣叫声。\r\n</p>\r\n<p>\r\n    不远万里奔赴战场，像飞一样地跨过一道道的关，越过一座座的山。北方的寒气传送着打更的声音，冰冷的月光照在将士们的铠甲上。将士们身经百战有的为国捐躯，有的转战多年胜利归来。\r\n</p>\r\n<p>\r\n    胜利归来朝见天子，天子坐在殿堂论功行赏。给木兰记了很大的功勋，赏赐了很多的财物。天子问木兰想要什么，木兰说不愿做尚书郎，希望能骑着千里马，快马加鞭送我回故乡。\r\n</p>\r\n<p>\r\n    父母听说女儿回来了，互相搀扶着到城外迎接她；姐姐听说妹妹回来了，对着门户梳妆打扮起来；弟弟听说姐姐回来了，忙着霍霍地磨刀杀猪宰羊。开我东阁、西阁的门，坐在我的床上，脱去打仗时穿的战袍，穿上以前的女儿装，面对窗户和镜子梳理像云一样柔美的头发，额上贴上花黄。出门去看一起打仗的伙伴，伙伴们都很吃惊，征战同行这么多年，竟然不知木兰是个女子。\r\n</p>\r\n<p>\r\n    提着兔子的耳朵悬在半空时，雄兔两只前脚时常动弹，雌兔两只眼睛时常眯着，所以容易辨认。雄雌两只兔子贴着地面跑，怎能辨别哪个是雄兔哪个是雌兔呢？\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', 2, '', '2020-09-08 17:25:33');
INSERT INTO `sys_peotry_collection` VALUES (18, '春江花月夜二首', 16, '<p>\r\n    暮江平不动，春花满正开。\r\n</p>\r\n<p>\r\n    流波将月去，潮水带星来。\r\n</p>\r\n<p>\r\n    夜露含花气，春潭漾月晖。\r\n</p>\r\n<p>\r\n    汉水逢游女，湘川值二妃。\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '<p>\r\n    傍晚江面风平浪静，远远望去似乎稳稳不动，岸边到处是正在盛开的春花。\r\n</p>\r\n<p>\r\n    流波滚滚，月影沉沉；潮水汹涌，星光闪烁。\r\n</p>\r\n<p>\r\n    春夜的露水含着淡淡花香，点点月色荡漾在小潭的水波里。\r\n</p>\r\n<p>\r\n    不知道面前的水潭是通往哪里，如果是汉水就有缘碰到汉水女神，如果是湘水，就有缘碰到娥皇女英。\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', 2, '', '2020-09-08 17:31:45');
INSERT INTO `sys_peotry_collection` VALUES (19, '春望', 17, '<p>\r\n    国破山河在，城春草木深。\r\n</p>\r\n<p>\r\n    感时花溅泪，恨别鸟惊心。\r\n</p>\r\n<p>\r\n    烽火连三月，家书抵万金。\r\n</p>\r\n<p>\r\n    白头搔更短，浑欲不胜簪。\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '<p>\r\n    长安沦陷，国家破碎，只有山河依旧；春天来了，人烟稀少的长安城里草木茂密。\r\n</p>\r\n<p>\r\n    感于战败的时局，看到花开而潸然泪下，内心惆怅怨恨，听到鸟鸣而心惊胆战。\r\n</p>\r\n<p>\r\n    连绵的战火已经延续了一个春天，家书难得，一封抵得上万两黄金。\r\n</p>\r\n<p>\r\n    愁绪缠绕，搔头思考，白发越搔越短，简直要不能插簪了。\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', 3, '', '2020-09-08 17:35:29');
INSERT INTO `sys_peotry_collection` VALUES (20, '爱莲说', 18, '<p>\r\n    水陆草木之花，可爱者甚蕃。晋陶渊明独爱菊。自李唐来，世人甚爱牡丹。予独爱莲之出淤泥而不染，濯清涟而不妖，中通外直，不蔓不枝，香远益清，亭亭净植，可远观而不可亵玩焉。(甚爱 一作：盛爱)\r\n</p>\r\n<p>\r\n    予谓菊，花之隐逸者也；牡丹，花之富贵者也；莲，花之君子者也。噫！菊之爱，陶后鲜有闻。莲之爱，同予者何人？牡丹之爱，宜乎众矣。\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '<p>\r\n    水上、陆地上各种草本木本的花，值得喜爱的非常多。晋代的陶渊明只喜爱菊花。从李氏唐朝以来，世上的人十分喜爱牡丹。而我唯独喜爱莲花从淤泥中长出却不被污染，经过清水的洗涤却不显得妖艳。它的茎内空外直，不生蔓不长枝，香气远播更加清香，笔直洁净地立在水中。人们只能远远地观赏而不能玩弄它啊。\r\n</p>\r\n<p>\r\n    我认为菊花，是花中的隐士；牡丹，是花中的富贵者；莲花，是花中品德高尚的君子。唉！对于菊花的喜爱，陶渊明以后就很少听到了。对于莲花的喜爱，像我一样的还有什么人呢？对于牡丹的喜爱，当然就很多人了！\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', 3, '', '2020-09-08 17:40:31');
INSERT INTO `sys_peotry_collection` VALUES (21, '墨梅', 19, '<p>\r\n    我家洗砚池头树，朵朵花开淡墨痕。\r\n</p>\r\n<p>\r\n    不要人夸好颜色，只留清气满乾坤。\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', '<p>\r\n    我家洗砚池边有一棵梅树，朵朵开放的梅花都像是用淡淡的墨汁点染而成。\r\n</p>\r\n<p>\r\n    它不需要别人夸奖颜色多么好看，只是要将清香之气弥漫在天地之间。\r\n</p>\r\n<p>\r\n    <br/>\r\n</p>', 3, '', '2020-09-08 17:43:41');

-- ----------------------------
-- Table structure for sys_peotry_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_peotry_user`;
CREATE TABLE `sys_peotry_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `login_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '用户昵称',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '盐加密',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `signature` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '个性签名',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '古诗词-用户信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_peotry_user
-- ----------------------------
INSERT INTO `sys_peotry_user` VALUES (1, '黄忠', '老将黄忠', '1', '/profile/avatar/2020/09/04/bdb22e961a4d563f22bca48cac2acc88.jpg', '41bd83e82f5a8d941bc2d8899a24e414', 'd1daf8', '2020-09-04 10:13:46', '老将黄忠');
INSERT INTO `sys_peotry_user` VALUES (2, '不知火舞', '不知火舞', '0', '', '05f0418fa1b4d7f07390140431264183', '059f4e', '2020-09-07 00:12:22', NULL);
INSERT INTO `sys_peotry_user` VALUES (3, '吕布', '吕布', '0', '', '2f3c380bf68977a98eebcd5055ba98bc', '9c61d3', '2020-09-07 09:11:29', NULL);
INSERT INTO `sys_peotry_user` VALUES (4, '百里守约', '百里守约', '0', '', 'f375bedb1b2d0665ab7b4455a6238f66', '5468b0', '2020-09-07 09:13:17', NULL);
INSERT INTO `sys_peotry_user` VALUES (5, '鲁班', '鲁班', '0', '', '54e2144cac68402047fc51443fbf6a43', '7252ae', '2020-09-07 09:29:25', NULL);
INSERT INTO `sys_peotry_user` VALUES (6, 'abc123', 'dadazi', '0', '/profile/avatar/2020/09/08/e39c36e2ceb1a34c0fe489285fe14c92.jpeg', '93964e718f6782a5dba9cf55f1d1ffc2', '6e6dfd', '2020-09-07 09:33:55', NULL);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '岗位信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'king', '2018-03-16 11:33:00', 'king', '2019-08-28 19:19:29', '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'king', '2018-03-16 11:33:00', 'king', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '角色状态（0正常 1停用）',
  `deleted` bit(1) NULL DEFAULT NULL COMMENT '删除标志（0代表存在 1代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '角色信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '管理员', 'admin', 1, '1', '0', b'0', 'king', '2018-03-16 11:33:00', NULL, '2019-07-23 17:15:23', '管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', '0', b'0', 'king', '2018-03-16 11:33:00', NULL, '2019-08-28 19:17:04', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '角色和部门关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '角色和菜单关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `deleted` bit(1) NULL DEFAULT NULL COMMENT '删除标志（0代表存在 1代表删除）',
  `login_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '用户信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 105, 'crown', 'Crown', '00', 'king@qq.com', '15666666666', '1', '2020/09/07/7f7e92ba3efdd52ba40568af050da2c3.png', '6bb801aa715c8d25d51b781577f2129e', '9a45e9', '0', b'0', '112.27.240.222', '2020-09-08 08:55:38', 'crown', '2018-03-16 11:33:00', '', '2020-09-08 08:55:39', '管理员');
INSERT INTO `sys_user` VALUES (2, 103, 'admin', 'Admin', '00', 'king@163.com', '15888888888', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0', b'0', '0:0:0:0:0:0:0:1', '2019-08-05 17:34:11', 'crown', '2018-03-16 11:33:00', 'king', '2019-08-05 17:34:11', '测试账号');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online`  (
  `sessionId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime(0) NULL DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime(0) NULL DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) NULL DEFAULT 0 COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '在线用户记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '用户与岗位关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '用户和角色关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);

SET FOREIGN_KEY_CHECKS = 1;
