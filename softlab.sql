/*
 Navicat Premium Data Transfer

 Source Server         : mysql-docker
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : softlab

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 15/04/2021 14:19:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `menu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of menu
-- ----------------------------
BEGIN;
INSERT INTO `menu` VALUES ('报名', 1);
INSERT INTO `menu` VALUES ('结果查询', 1);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `qq` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `className` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `profile` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint NOT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES ('1', '1', '1', '1', '1', '1', 2, '2021-04-15 12:45:30');
INSERT INTO `user` VALUES ('123', '123', '女', '1231', '132', '各个部分\n一个完整的搜索流程：\n\n首先离线抓取数据并切词，建立倒排索引库。\n\n其次获取用户query，解析得到term list，拿term list到倒排索引库中找到所有相关网页，计算基础权值并排序，取Top N个搜索结果\n\n最后检索它们的摘要并合并在一起，返回给用户\n\n\n最基础的检索系统包括：建倒排索引库、存储倒排索引、解析用户query、检索、计算权值和排序、获取摘要。 一个最基本的检索系统只需要完成上述几个功能就可以正常工作，但当面对几十亿的用户查询请求和无数的网页需要处理时，还需要额外的策略才能让这个检索系统正常工作。\n\n\n\n\n\n参考资料\n\n【新人串讲】AE在线架构串讲-殷在浩\n串讲准备  （各种名词）\n大搜架构串讲（@程浩 名词解释 和 aladin整合了解）\n\n\n\n\n老架构--->新架构\n\n理念：通过框架和组件实现架构、策略、产品彻底解耦，加强复用。\n\n统一的接口和调度：实现业务聚焦自身的开发\n机制复用：实现能力沉淀和各个业务中共享\n微服务化：彻底独立部署\n难点：\n\n复杂的业务逻辑梳理，抽象和通用化\n高度抽象和业务逻辑的梳理，能否顺利迁移\n存量业务的迁移成本，学习成本，易用性\n各个部分\n一个完整的搜索流程：\n\n首先离线抓取数据并切词，建立倒排索引库。\n\n其次获取用户query，解析得到term list，拿term list到倒排索引库中找到所有相关网页，计算基础权值并排序，取Top N个搜索结果\n\n最后检索它们的摘要并合并在一起，返回给用户\n\n\n最基础的检索系统包括：建倒排索引库、存储倒排索引、解析用户query、检索、计算权值和排序、获取摘要。 一个最基本的检索系统只需要完成上述几个功能就可以正常工作，但当面对几十亿的用户查询请求和无数的网页需要处理时，还需要额外的策略才能让这个检索系统正常工作。\n\n\n\n\n\n参考资料\n\n【新人串讲】AE在线架构串讲-殷在浩\n串讲准备  （各种名词）\n大搜架构串讲（@程浩 名词解释 和 aladin整合了解）\n\n\n\n\n老架构--->新架构\n\n理念：通过框架和组件实现架构、策略、产品彻底解耦，加强复用。\n\n统一的接口和调度：实现业务聚焦自身的开发\n机制复用：实现能力沉淀和各个业务中共享\n微服务化：彻底独立部署\n难点：\n\n复杂的业务逻辑梳理，抽象和通用化\n高度抽象和业务逻辑的梳理，能否顺利迁移\n存量业务的迁移成本，学习成本，易用性\n各个部分\n一个完整的搜索流程：\n\n首先离线抓取数据并切词，建立倒排索引库。\n\n其次获取用户query，解析得到term list，拿term list到倒排索引库中找到所有相关网页，计算基础权值并排序，取Top N个搜索结果\n\n最后检索它们的摘要并合并在一起，返回给用户\n\n\n最基础的检索系统包括：建倒排索引库、存储倒排索引、解析用户query、检索、计算权值和排序、获取摘要。 一个最基本的检索系统只需要完成上述几个功能就可以正常工作，但当面对几十亿的用户查询请求和无数的网页需要处理时，还需要额外的策略才能让这个检索系统正常工作。\n\n\n\n\n\n参考资料\n\n【新人串讲】AE在线架构串讲-殷在浩\n串讲准备  （各种名词）\n大搜架构串讲（@程浩 名词解释 和 aladin整合了解）\n\n\n\n\n老架构--->新架构\n\n理念：通过框架和组件实现架构、策略、产品彻底解耦，加强复用。\n\n统一的接口和调度：实现业务聚焦自身的开发\n机制复用：实现能力沉淀和各个业务中共享\n微服务化：彻底独立部署\n难点：\n\n复杂的业务逻辑梳理，抽象和通用化\n高度抽象和业务逻辑的梳理，能否顺利迁移\n存量业务的迁移成本，学习成本，易用性\n各个部分\n一个完整的搜索流程：\n\n首先离线抓取数据并切词，建立倒排索引库。\n\n其次获取用户query，解析得到term list，拿term list到倒排索引库中找到所有相关网页，计算基础权值并排序，取Top N个搜索结果\n\n最后检索它们的摘要并合并在一起，返回给用户\n\n\n最基础的检索系统包括：建倒排索引库、存储倒排索引、解析用户query、检索、计算权值和排序、获取摘要。 一个最基本的检索系统只需要完成上述几个功能就可以正常工作，但当面对几十亿的用户查询请求和无数的网页需要处理时，还需要额外的策略才能让这个检索系统正常工作。\n\n\n\n\n\n参考资料\n\n【新人串讲】AE在线架构串讲-殷在浩\n串讲准备  （各种名词）\n大搜架构串讲（@程浩 名词解释 和 aladin整合了解）\n\n\n\n\n老架构--->新架构\n\n理念：通过框架和组件实现架构、策略、产品彻底解耦，加强复用。\n\n统一的接口和调度：实现业务聚焦自身的开发\n机制复用：实现能力沉淀和各个业务中共享\n微服务化：彻底独立部署\n难点：\n\n复杂的业务逻辑梳理，抽象和通用化\n高度抽象和业务逻辑的梳理，能否顺利迁移\n存量业务的迁移成本，学习成本，易用性\n各个部分\n一个完整的搜索流程：\n\n首先离线抓取数据并切词，建立倒排索引库。\n\n其次获取用户query，解析得到term list，拿term list到倒排索引库中找到所有相关网页，计算基础权值并排序，取Top N个搜索结果\n\n最后检索它们的摘要并合并在一起，返回给用户\n\n\n最基础的检索系统包括：建倒排索引库、存储倒排索引、解析用户query、检索、计算权值和排序、获取摘要。 一个最基本的检索系统只需要完成上述几个功能就可以正常工作，但当面对几十亿的用户查询请求和无数的网页需要处理时，还需要额外的策略才能让这个检索系统正常工作。\n\n\n\n\n\n参考资料\n\n【新人串讲】AE在线架构串讲-殷在浩\n串讲准备  （各种名词）\n大搜架构串讲（@程浩 名词解释 和 aladin整合了解）\n\n\n\n\n老架构--->新架构\n\n理念：通过框架和组件实现架构、策略、产品彻底解耦，加强复用。\n\n统一的接口和调度：实现业务聚焦自身的开发\n机制复用：实现能力沉淀和各个业务中共享\n微服务化：彻底独立部署\n难点：\n\n复杂的业务逻辑梳理，抽象和通用化\n高度抽象和业务逻辑的梳理，能否顺利迁移\n存量业务的迁移成本，学习成本，易用性\n各个部分\n一个完整的搜索流程：\n\n首先离线抓取数据并切词，建立倒排索引库。\n\n其次获取用户query，解析得到term list，拿term list到倒排索引库中找到所有相关网页，计算基础权值并排序，取Top N个搜索结果\n\n最后检索它们的摘要并合并在一起，返回给用户\n\n\n最基础的检索系统包括：建倒排索引库、存储倒排索引、解析用户query、检索、计算权值和排序、获取摘要。 一个最基本的检索系统只需要完成上述几个功能就可以正常工作，但当面对几十亿的用户查询请求和无数的网页需要处理时，还需要额外的策略才能让这个检索系统正常工作。\n\n\n\n\n\n参考资料\n\n【新人串讲】AE在线架构串讲-殷在浩\n串讲准备  （各种名词）\n大搜架构串讲（@程浩 名词解释 和 aladin整合了解）\n\n\n\n\n老架构--->新架构\n\n理念：通过框架和组件实现架构、策略、产品彻底解耦，加强复用。\n\n统一的接口和调度：实现业务聚焦自身的开发\n机制复用：实现能力沉淀和各个业务中共享\n微服务化：彻底独立部署\n难点：\n\n复杂的业务逻辑梳理，抽象和通用化\n高度抽象和业务逻辑的梳理，能否顺利迁移\n存量业务的迁移成本，学习成本，易用性\n', 0, '2021-04-15 05:45:57');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
