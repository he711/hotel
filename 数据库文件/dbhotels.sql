/*
 Navicat Premium Data Transfer

 Source Server         : d
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : dbhotels

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 18/06/2022 14:38:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for attribute
-- ----------------------------
DROP TABLE IF EXISTS `attribute`;
CREATE TABLE `attribute`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '属性ID',
  `attributeName` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '属性名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of attribute
-- ----------------------------
INSERT INTO `attribute` VALUES (1, '房态');
INSERT INTO `attribute` VALUES (2, '客房等级');
INSERT INTO `attribute` VALUES (3, '商品类别');
INSERT INTO `attribute` VALUES (4, '支付方式');
INSERT INTO `attribute` VALUES (5, '出租方式');
INSERT INTO `attribute` VALUES (6, '结账单位');
INSERT INTO `attribute` VALUES (7, '旅客类别');
INSERT INTO `attribute` VALUES (8, '性别');
INSERT INTO `attribute` VALUES (9, '民族');
INSERT INTO `attribute` VALUES (10, '证件');
INSERT INTO `attribute` VALUES (11, '文化程度');
INSERT INTO `attribute` VALUES (12, '事由');
INSERT INTO `attribute` VALUES (13, '旅客级别');
INSERT INTO `attribute` VALUES (14, '对象类别');
INSERT INTO `attribute` VALUES (15, '计量单位');
INSERT INTO `attribute` VALUES (16, '预定状态');
INSERT INTO `attribute` VALUES (17, '结账');

-- ----------------------------
-- Table structure for attributedetails
-- ----------------------------
DROP TABLE IF EXISTS `attributedetails`;
CREATE TABLE `attributedetails`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '属性明细ID',
  `attributeID` int(11) NULL DEFAULT NULL COMMENT '属性ID',
  `attributeDetailsName` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '属性明细名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of attributedetails
-- ----------------------------
INSERT INTO `attributedetails` VALUES (1, 1, '空房');
INSERT INTO `attributedetails` VALUES (2, 1, '自用房');
INSERT INTO `attributedetails` VALUES (4, 1, '预定');
INSERT INTO `attributedetails` VALUES (5, 1, '待清洁');
INSERT INTO `attributedetails` VALUES (6, 1, '待维修');
INSERT INTO `attributedetails` VALUES (7, 1, '不可用');
INSERT INTO `attributedetails` VALUES (8, 2, '大床房');
INSERT INTO `attributedetails` VALUES (9, 2, '单人普通间');
INSERT INTO `attributedetails` VALUES (10, 2, '二人普通房');
INSERT INTO `attributedetails` VALUES (11, 2, '二人标准间');
INSERT INTO `attributedetails` VALUES (12, 2, '豪华单人间');
INSERT INTO `attributedetails` VALUES (13, 2, '会议室');
INSERT INTO `attributedetails` VALUES (14, 2, '总统套房');
INSERT INTO `attributedetails` VALUES (15, 3, '餐饮类');
INSERT INTO `attributedetails` VALUES (16, 3, '饮料类');
INSERT INTO `attributedetails` VALUES (17, 3, '食品类');
INSERT INTO `attributedetails` VALUES (18, 3, '烟酒类');
INSERT INTO `attributedetails` VALUES (19, 3, '人为损坏类');
INSERT INTO `attributedetails` VALUES (20, 3, '其他');
INSERT INTO `attributedetails` VALUES (21, 4, '现金');
INSERT INTO `attributedetails` VALUES (22, 4, '转账');
INSERT INTO `attributedetails` VALUES (23, 4, '信用卡');
INSERT INTO `attributedetails` VALUES (24, 999, '其他');
INSERT INTO `attributedetails` VALUES (25, 5, '钟点');
INSERT INTO `attributedetails` VALUES (26, 5, '全日');
INSERT INTO `attributedetails` VALUES (27, 6, '旅客自付');
INSERT INTO `attributedetails` VALUES (28, 6, '团队付款');
INSERT INTO `attributedetails` VALUES (29, 7, '国内旅客');
INSERT INTO `attributedetails` VALUES (30, 7, '国外旅客');
INSERT INTO `attributedetails` VALUES (31, 8, '男');
INSERT INTO `attributedetails` VALUES (32, 8, '女');
INSERT INTO `attributedetails` VALUES (33, 9, '汉');
INSERT INTO `attributedetails` VALUES (34, 9, '苗');
INSERT INTO `attributedetails` VALUES (35, 9, '壮');
INSERT INTO `attributedetails` VALUES (36, 9, '其他');
INSERT INTO `attributedetails` VALUES (37, 10, '二代身份证');
INSERT INTO `attributedetails` VALUES (38, 10, '护照');
INSERT INTO `attributedetails` VALUES (39, 10, '其他');
INSERT INTO `attributedetails` VALUES (40, 11, '无');
INSERT INTO `attributedetails` VALUES (41, 11, '小学');
INSERT INTO `attributedetails` VALUES (42, 11, '初中');
INSERT INTO `attributedetails` VALUES (43, 11, '高中');
INSERT INTO `attributedetails` VALUES (44, 11, '大专');
INSERT INTO `attributedetails` VALUES (45, 11, '本科');
INSERT INTO `attributedetails` VALUES (46, 11, '研究生');
INSERT INTO `attributedetails` VALUES (47, 11, '硕士');
INSERT INTO `attributedetails` VALUES (48, 11, '博士');
INSERT INTO `attributedetails` VALUES (49, 11, '其他');
INSERT INTO `attributedetails` VALUES (50, 12, '公务出差');
INSERT INTO `attributedetails` VALUES (51, 12, '个人旅行');
INSERT INTO `attributedetails` VALUES (52, 13, '首次');
INSERT INTO `attributedetails` VALUES (53, 13, '熟客');
INSERT INTO `attributedetails` VALUES (54, 13, 'VIP');
INSERT INTO `attributedetails` VALUES (55, 14, '散客');
INSERT INTO `attributedetails` VALUES (56, 14, '团队');
INSERT INTO `attributedetails` VALUES (57, 15, '瓶');
INSERT INTO `attributedetails` VALUES (58, 15, '台');
INSERT INTO `attributedetails` VALUES (59, 15, '条');
INSERT INTO `attributedetails` VALUES (60, 15, '支');
INSERT INTO `attributedetails` VALUES (61, 15, '个');
INSERT INTO `attributedetails` VALUES (62, 15, '只');
INSERT INTO `attributedetails` VALUES (63, 15, '包');
INSERT INTO `attributedetails` VALUES (65, 1, '满');
INSERT INTO `attributedetails` VALUES (66, 16, '未安排');
INSERT INTO `attributedetails` VALUES (67, 16, '已安排');
INSERT INTO `attributedetails` VALUES (68, 17, '未结账');
INSERT INTO `attributedetails` VALUES (69, 17, '已结账');
INSERT INTO `attributedetails` VALUES (70, 15, '份');
INSERT INTO `attributedetails` VALUES (71, 15, '碟');
INSERT INTO `attributedetails` VALUES (73, 15, '桶');
INSERT INTO `attributedetails` VALUES (74, 2, '浴缸房');
INSERT INTO `attributedetails` VALUES (75, 2, '影视房');
INSERT INTO `attributedetails` VALUES (76, 3, '全部商品');
INSERT INTO `attributedetails` VALUES (77, 2, '豪华双人间');

-- ----------------------------
-- Table structure for commodity
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `commodityTypeID` int(11) NULL DEFAULT NULL COMMENT '商品类别ID',
  `uOMID` int(11) NULL DEFAULT NULL COMMENT '计量单位ID',
  `commodityName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `salePrice` decimal(8, 2) NULL DEFAULT NULL COMMENT '销售价格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of commodity
-- ----------------------------
INSERT INTO `commodity` VALUES (1, 15, 62, '北京烤鸭', 500.00);
INSERT INTO `commodity` VALUES (2, 16, 57, '绿茶', 7.00);
INSERT INTO `commodity` VALUES (3, 16, 57, '可乐', 7.00);
INSERT INTO `commodity` VALUES (4, 19, 58, '空调', 3000.00);
INSERT INTO `commodity` VALUES (5, 17, 63, '薯片王', 21.00);
INSERT INTO `commodity` VALUES (6, 15, 62, '红烧猪蹄', 201.00);
INSERT INTO `commodity` VALUES (7, 76, NULL, '', NULL);
INSERT INTO `commodity` VALUES (8, 16, 57, '红茶', 5.00);
INSERT INTO `commodity` VALUES (9, 18, 63, '经典双喜', 20.00);
INSERT INTO `commodity` VALUES (10, 15, 70, '红色排骨', 129.00);
INSERT INTO `commodity` VALUES (12, 16, 57, '红牛', 8.00);
INSERT INTO `commodity` VALUES (13, 16, 57, '农夫山泉', 2.00);
INSERT INTO `commodity` VALUES (14, 16, 57, '金典', 7.00);
INSERT INTO `commodity` VALUES (15, 16, 57, '怡宝', 3.00);
INSERT INTO `commodity` VALUES (16, 16, 70, '奶茶', 8.00);
INSERT INTO `commodity` VALUES (17, 15, 73, '康师傅红烧牛肉面', 8.00);
INSERT INTO `commodity` VALUES (18, 15, 70, '招牌茄子', 18.00);
INSERT INTO `commodity` VALUES (19, 20, 61, '更换服务', 0.00);
INSERT INTO `commodity` VALUES (20, 19, 61, '烟灰缸', 30.00);
INSERT INTO `commodity` VALUES (21, 19, 61, '电视', 2800.00);
INSERT INTO `commodity` VALUES (22, 17, 61, '奥利奥原味', 8.00);
INSERT INTO `commodity` VALUES (23, 17, 61, '署愿', 8.00);
INSERT INTO `commodity` VALUES (24, 18, 63, '黄鹤楼', 18.00);
INSERT INTO `commodity` VALUES (25, 18, 63, '小苏', 23.00);
INSERT INTO `commodity` VALUES (27, 18, 63, '中华', 70.00);

-- ----------------------------
-- Table structure for consumptiondetails
-- ----------------------------
DROP TABLE IF EXISTS `consumptiondetails`;
CREATE TABLE `consumptiondetails`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '消费明细ID',
  `stayRegisterID` int(11) NULL DEFAULT NULL COMMENT '住宿登记ID',
  `commodityID` int(11) NULL DEFAULT NULL COMMENT '商品ID',
  `consumptionNumber` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消费数量',
  `consumptionMoney` decimal(8, 2) NULL DEFAULT NULL COMMENT '消费金额',
  `consumptionTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '消费时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of consumptiondetails
-- ----------------------------
INSERT INTO `consumptiondetails` VALUES (6, 1, 3, '3', 21.00, '2020-12-05 19:38:21');
INSERT INTO `consumptiondetails` VALUES (8, 6, 1, '2', 1000.00, '2020-12-07 01:02:37');
INSERT INTO `consumptiondetails` VALUES (9, 18, 2, '2', 14.00, '2020-01-10 19:24:40');
INSERT INTO `consumptiondetails` VALUES (10, 18, 3, '1', 7.00, '2020-01-10 19:25:12');
INSERT INTO `consumptiondetails` VALUES (11, 18, 8, '1', 5.00, '2020-01-11 05:22:23');
INSERT INTO `consumptiondetails` VALUES (12, 16, 2, '1', 7.00, '2020-01-11 05:22:50');
INSERT INTO `consumptiondetails` VALUES (13, 16, 3, '1', 7.00, '2020-01-11 05:22:50');
INSERT INTO `consumptiondetails` VALUES (14, 16, 8, '1', 5.00, '2020-01-11 05:22:50');
INSERT INTO `consumptiondetails` VALUES (15, 17, 2, '2', 14.00, '2020-01-11 16:40:36');
INSERT INTO `consumptiondetails` VALUES (16, 17, 3, '1', 7.00, '2020-01-11 16:40:36');
INSERT INTO `consumptiondetails` VALUES (17, 22, 2, '2', 14.00, '2020-01-12 05:08:57');
INSERT INTO `consumptiondetails` VALUES (18, 25, 2, '2', 14.00, '2020-02-21 17:12:05');
INSERT INTO `consumptiondetails` VALUES (20, 26, 2, '1', 7.00, '2020-02-21 23:04:26');
INSERT INTO `consumptiondetails` VALUES (21, 26, 8, '1', 5.00, '2020-02-21 23:04:26');
INSERT INTO `consumptiondetails` VALUES (22, 27, 2, '1', 7.00, '2020-02-21 23:08:36');
INSERT INTO `consumptiondetails` VALUES (23, 28, 5, '2', 42.00, '2020-02-22 00:01:09');
INSERT INTO `consumptiondetails` VALUES (24, 31, 2, '1', 7.00, '2020-02-22 00:12:48');
INSERT INTO `consumptiondetails` VALUES (25, 33, 2, '1', 7.00, '2020-02-22 19:23:40');
INSERT INTO `consumptiondetails` VALUES (26, 32, 5, '1', 21.00, '2020-02-22 19:24:02');
INSERT INTO `consumptiondetails` VALUES (27, 34, 1, '1', 500.00, '2020-02-23 19:15:28');
INSERT INTO `consumptiondetails` VALUES (29, 35, 2, '1', 7.00, '2020-02-23 19:21:37');
INSERT INTO `consumptiondetails` VALUES (30, 36, 4, '1', 3000.00, '2020-02-23 19:22:06');
INSERT INTO `consumptiondetails` VALUES (31, 37, 5, '1', 21.00, '2020-02-23 19:30:19');
INSERT INTO `consumptiondetails` VALUES (32, 42, 2, '1', 7.00, '2020-02-27 17:27:38');
INSERT INTO `consumptiondetails` VALUES (33, 42, 8, '2', 10.00, '2020-02-27 17:27:38');
INSERT INTO `consumptiondetails` VALUES (34, 43, 2, '1', 7.00, '2020-02-28 17:44:46');
INSERT INTO `consumptiondetails` VALUES (35, 41, 8, '2', 10.00, '2020-02-28 17:45:00');
INSERT INTO `consumptiondetails` VALUES (36, 40, 3, '1', 7.00, '2020-02-28 17:45:18');
INSERT INTO `consumptiondetails` VALUES (37, 54, 2, '1', 7.00, '2021-03-19 19:48:49');
INSERT INTO `consumptiondetails` VALUES (38, 54, 3, '1', 7.00, '2021-03-19 19:48:49');
INSERT INTO `consumptiondetails` VALUES (39, 62, 2, '2', 14.00, '2021-03-24 23:40:11');
INSERT INTO `consumptiondetails` VALUES (40, 91, 13, '2', 4.00, '2021-04-08 09:43:16');
INSERT INTO `consumptiondetails` VALUES (41, 103, 26, '1', 100.00, '2021-04-12 17:05:12');
INSERT INTO `consumptiondetails` VALUES (42, 103, 3, '1', 7.00, '2021-04-12 17:05:29');
INSERT INTO `consumptiondetails` VALUES (44, 118, 14, '2', 14.00, '2021-04-19 22:10:34');
INSERT INTO `consumptiondetails` VALUES (45, 118, 12, '1', 8.00, '2021-04-19 22:28:25');
INSERT INTO `consumptiondetails` VALUES (46, 118, 2, '1', 7.00, '2021-04-19 22:29:06');
INSERT INTO `consumptiondetails` VALUES (47, 123, 8, '1', 5.00, '2021-04-25 10:07:10');

-- ----------------------------
-- Table structure for depoit
-- ----------------------------
DROP TABLE IF EXISTS `depoit`;
CREATE TABLE `depoit`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stayRegisterID` int(11) NULL DEFAULT NULL COMMENT '住宿登记ID',
  `payWayID` int(11) NULL DEFAULT NULL COMMENT '支付方式ID',
  `registerTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '登记时间',
  `deposit` decimal(8, 2) NULL DEFAULT NULL COMMENT '押金',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 167 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of depoit
-- ----------------------------
INSERT INTO `depoit` VALUES (1, 1, 21, '2020-12-03 00:44:48', 300.00);
INSERT INTO `depoit` VALUES (3, 3, 21, '2020-12-04 04:12:56', 200.00);
INSERT INTO `depoit` VALUES (4, NULL, NULL, '2020-12-04 19:16:59', 0.00);
INSERT INTO `depoit` VALUES (5, 1, 21, '2020-12-04 19:20:59', 145.00);
INSERT INTO `depoit` VALUES (6, 3, 21, '2020-12-04 19:20:59', 2.00);
INSERT INTO `depoit` VALUES (7, 1, 21, '2020-12-04 19:24:36', 22.00);
INSERT INTO `depoit` VALUES (8, 3, 21, '2020-12-04 19:35:33', 2.00);
INSERT INTO `depoit` VALUES (9, 1, 21, '2020-12-04 22:41:02', 32.00);
INSERT INTO `depoit` VALUES (10, 1, 21, '2020-12-04 22:41:21', 2.00);
INSERT INTO `depoit` VALUES (11, 1, 21, '2020-12-04 22:48:38', 33.00);
INSERT INTO `depoit` VALUES (12, 1, 21, '2020-12-04 23:06:07', 99.00);
INSERT INTO `depoit` VALUES (13, 1, 21, '2020-12-04 23:07:55', 88.00);
INSERT INTO `depoit` VALUES (14, 4, 21, '2020-12-05 23:34:33', 200.00);
INSERT INTO `depoit` VALUES (15, 4, 21, '2020-12-06 00:48:58', 100.00);
INSERT INTO `depoit` VALUES (16, 5, 21, '2020-12-07 00:30:45', 2.00);
INSERT INTO `depoit` VALUES (17, 6, 21, '2020-12-07 00:59:53', 200.00);
INSERT INTO `depoit` VALUES (18, 6, 21, '2020-12-07 01:01:42', 10.00);
INSERT INTO `depoit` VALUES (19, 6, 21, '2020-12-07 01:01:49', 200.00);
INSERT INTO `depoit` VALUES (20, 1, 21, '2020-01-10 00:37:03', 100.00);
INSERT INTO `depoit` VALUES (21, 1, 21, '2020-01-10 00:37:03', 100.00);
INSERT INTO `depoit` VALUES (22, 1, 21, '2020-01-10 00:37:03', 100.00);
INSERT INTO `depoit` VALUES (23, 10, 21, '2020-01-10 00:41:38', 100.00);
INSERT INTO `depoit` VALUES (24, 11, 21, '2020-01-10 00:41:38', 100.00);
INSERT INTO `depoit` VALUES (25, 12, 21, '2020-01-10 00:46:54', 100.00);
INSERT INTO `depoit` VALUES (26, 13, 21, '2020-01-10 00:49:16', 100.00);
INSERT INTO `depoit` VALUES (27, 14, 21, '2020-01-10 04:04:47', 100.00);
INSERT INTO `depoit` VALUES (28, 15, 21, '2020-01-10 04:04:47', 100.00);
INSERT INTO `depoit` VALUES (29, 16, 21, '2020-01-10 04:15:12', 20.00);
INSERT INTO `depoit` VALUES (30, 17, 21, '2020-01-10 18:12:44', 200.00);
INSERT INTO `depoit` VALUES (31, 18, 21, '2020-01-10 19:23:03', 100.00);
INSERT INTO `depoit` VALUES (32, 19, 21, '2020-01-10 19:23:03', 100.00);
INSERT INTO `depoit` VALUES (33, 19, 21, '2020-01-10 19:23:49', 50.00);
INSERT INTO `depoit` VALUES (34, 18, 21, '2020-01-10 19:27:52', 1.00);
INSERT INTO `depoit` VALUES (35, 18, 21, '2020-01-11 05:12:13', 1.00);
INSERT INTO `depoit` VALUES (36, 20, 21, '2020-01-11 17:17:52', 1.00);
INSERT INTO `depoit` VALUES (37, 21, 21, '2020-01-11 17:17:52', 1.00);
INSERT INTO `depoit` VALUES (38, 22, 21, '2020-01-11 23:33:59', 100.00);
INSERT INTO `depoit` VALUES (39, 22, 21, '2020-01-12 05:08:33', 2.00);
INSERT INTO `depoit` VALUES (40, 23, 21, '2020-02-21 16:26:14', 100.00);
INSERT INTO `depoit` VALUES (41, 24, 21, '2020-02-21 16:26:14', 100.00);
INSERT INTO `depoit` VALUES (42, 25, 21, '2020-02-21 17:11:16', 200.00);
INSERT INTO `depoit` VALUES (43, 26, 21, '2020-02-21 23:01:03', 200.00);
INSERT INTO `depoit` VALUES (44, 26, 21, '2020-02-21 23:03:42', 100.00);
INSERT INTO `depoit` VALUES (45, 27, 21, '2020-02-21 23:07:54', 1.00);
INSERT INTO `depoit` VALUES (46, 27, 21, '2020-02-21 23:08:24', 1.00);
INSERT INTO `depoit` VALUES (47, 28, 21, '2020-02-21 23:58:29', 33.33);
INSERT INTO `depoit` VALUES (48, 29, 21, '2020-02-21 23:58:29', 33.33);
INSERT INTO `depoit` VALUES (49, 30, 21, '2020-02-21 23:58:29', 33.33);
INSERT INTO `depoit` VALUES (50, 31, 21, '2020-02-22 00:12:08', 200.00);
INSERT INTO `depoit` VALUES (51, 32, 21, '2020-02-22 19:22:36', 100.00);
INSERT INTO `depoit` VALUES (52, 33, 21, '2020-02-22 19:22:36', 100.00);
INSERT INTO `depoit` VALUES (53, 33, 21, '2020-02-22 19:23:13', 1.00);
INSERT INTO `depoit` VALUES (54, 32, 21, '2020-02-22 19:23:20', 2.00);
INSERT INTO `depoit` VALUES (55, 34, 21, '2020-02-23 19:12:16', 100.00);
INSERT INTO `depoit` VALUES (56, 34, 21, '2020-02-23 19:14:57', 1.00);
INSERT INTO `depoit` VALUES (57, 35, 21, '2020-02-23 19:19:38', 100.00);
INSERT INTO `depoit` VALUES (58, 36, 21, '2020-02-23 19:19:38', 100.00);
INSERT INTO `depoit` VALUES (59, 35, 21, '2020-02-23 19:20:52', 1.00);
INSERT INTO `depoit` VALUES (60, 36, 21, '2020-02-23 19:21:11', 2.00);
INSERT INTO `depoit` VALUES (61, 37, 21, '2020-02-23 19:28:56', 100.00);
INSERT INTO `depoit` VALUES (62, 38, 21, '2020-02-23 19:29:08', 100.00);
INSERT INTO `depoit` VALUES (63, 39, 21, '2020-02-23 19:29:08', 100.00);
INSERT INTO `depoit` VALUES (64, 37, 21, '2020-02-23 19:30:05', 10.00);
INSERT INTO `depoit` VALUES (65, 40, 21, '2020-02-24 23:39:57', 100.00);
INSERT INTO `depoit` VALUES (66, 41, 21, '2020-02-24 23:39:57', 100.00);
INSERT INTO `depoit` VALUES (67, 42, 21, '2020-02-27 05:23:51', 100.00);
INSERT INTO `depoit` VALUES (68, 42, 21, '2020-02-27 19:14:27', 2.00);
INSERT INTO `depoit` VALUES (69, 43, 21, '2020-02-28 04:22:31', 100.00);
INSERT INTO `depoit` VALUES (70, 41, 21, '2020-02-28 17:44:02', 2.00);
INSERT INTO `depoit` VALUES (71, 43, 21, '2020-02-28 17:44:19', 2.00);
INSERT INTO `depoit` VALUES (72, 40, 21, '2020-02-28 17:44:31', 3.00);
INSERT INTO `depoit` VALUES (73, 44, 21, '2020-03-01 16:53:35', 200.00);
INSERT INTO `depoit` VALUES (74, 45, 21, '2020-03-07 05:23:37', 200.00);
INSERT INTO `depoit` VALUES (75, 46, 21, '2020-03-07 05:23:37', 100.00);
INSERT INTO `depoit` VALUES (76, 47, 21, '2020-03-07 05:24:08', 500.00);
INSERT INTO `depoit` VALUES (77, 48, 21, '2020-02-06 10:02:37', 100.00);
INSERT INTO `depoit` VALUES (78, 49, 21, '2020-02-09 05:23:37', 200.00);
INSERT INTO `depoit` VALUES (79, 50, 21, '2020-03-07 06:23:43', 250.00);
INSERT INTO `depoit` VALUES (80, 51, 21, '2019-12-07 04:10:37', 100.00);
INSERT INTO `depoit` VALUES (81, 52, 21, '2021-03-19 19:40:33', 250.00);
INSERT INTO `depoit` VALUES (82, 53, 21, '2021-03-19 19:42:55', 200.00);
INSERT INTO `depoit` VALUES (83, 54, 21, '2021-03-19 19:47:15', 200.00);
INSERT INTO `depoit` VALUES (84, 55, 21, '2021-03-19 19:50:06', 500.00);
INSERT INTO `depoit` VALUES (85, 56, 21, '2021-03-19 19:55:58', 500.00);
INSERT INTO `depoit` VALUES (86, 57, 21, '2021-03-19 19:59:43', 500.00);
INSERT INTO `depoit` VALUES (87, 59, 21, '2021-03-24 23:32:36', 200.00);
INSERT INTO `depoit` VALUES (88, 60, 21, '2021-03-24 23:33:54', 500.00);
INSERT INTO `depoit` VALUES (89, 61, 21, '2021-03-24 23:38:33', 500.00);
INSERT INTO `depoit` VALUES (90, 62, 21, '2021-03-24 23:39:05', 200.00);
INSERT INTO `depoit` VALUES (91, 63, 22, '2021-03-24 23:40:51', 100.00);
INSERT INTO `depoit` VALUES (92, 64, 21, '2021-03-27 17:52:02', 200.00);
INSERT INTO `depoit` VALUES (93, 65, 21, '2021-03-27 17:52:40', 500.00);
INSERT INTO `depoit` VALUES (94, 66, 21, '2021-03-31 17:14:01', 200.00);
INSERT INTO `depoit` VALUES (95, 67, 21, '2021-03-31 19:19:32', 200.00);
INSERT INTO `depoit` VALUES (96, 68, 21, '2021-04-01 02:13:19', 250.00);
INSERT INTO `depoit` VALUES (97, 69, 21, '2021-04-01 02:13:19', 250.00);
INSERT INTO `depoit` VALUES (98, 70, 21, '2021-04-01 02:13:19', 200.00);
INSERT INTO `depoit` VALUES (99, 71, 21, '2021-04-01 02:13:19', 200.00);
INSERT INTO `depoit` VALUES (100, 72, 21, '2021-04-01 02:13:19', 200.00);
INSERT INTO `depoit` VALUES (101, 73, 21, '2021-04-01 02:18:09', 200.00);
INSERT INTO `depoit` VALUES (102, 74, 21, '2021-04-01 02:22:15', 500.00);
INSERT INTO `depoit` VALUES (103, 75, 21, '2021-04-01 02:45:31', 200.00);
INSERT INTO `depoit` VALUES (104, 76, 21, '2021-04-01 03:11:51', 200.00);
INSERT INTO `depoit` VALUES (105, 77, 21, '2021-04-02 17:47:58', 200.00);
INSERT INTO `depoit` VALUES (106, 78, 21, '2021-04-02 18:13:34', 200.00);
INSERT INTO `depoit` VALUES (107, 79, 21, '2021-04-02 10:29:07', 200.00);
INSERT INTO `depoit` VALUES (108, 80, 21, '2021-04-02 10:29:07', 500.00);
INSERT INTO `depoit` VALUES (109, 81, 21, '2021-04-02 10:57:22', 200.00);
INSERT INTO `depoit` VALUES (110, 82, 21, '2021-04-02 10:57:22', 200.00);
INSERT INTO `depoit` VALUES (111, 83, 21, '2021-04-03 13:56:57', 100.00);
INSERT INTO `depoit` VALUES (112, 84, 21, '2021-04-03 13:57:53', 200.00);
INSERT INTO `depoit` VALUES (113, 85, 21, '2021-04-03 14:00:03', 200.00);
INSERT INTO `depoit` VALUES (114, 86, 21, '2021-04-06 15:33:37', 100.00);
INSERT INTO `depoit` VALUES (115, 87, 21, '2021-04-06 15:34:18', 200.00);
INSERT INTO `depoit` VALUES (116, 88, 21, '2021-04-06 15:34:47', 200.00);
INSERT INTO `depoit` VALUES (117, 89, 21, '2021-04-07 20:43:36', 200.00);
INSERT INTO `depoit` VALUES (118, 90, 21, '2021-04-07 20:43:56', 200.00);
INSERT INTO `depoit` VALUES (119, 91, 21, '2021-04-08 09:42:47', 100.00);
INSERT INTO `depoit` VALUES (120, 92, 21, '2021-04-08 09:46:26', 200.00);
INSERT INTO `depoit` VALUES (121, 93, 21, '2021-04-08 09:48:27', 200.00);
INSERT INTO `depoit` VALUES (122, 94, 21, '2021-04-08 18:04:45', 200.00);
INSERT INTO `depoit` VALUES (123, 95, 21, '2021-04-08 18:23:16', 100.00);
INSERT INTO `depoit` VALUES (124, 96, 21, '2021-04-08 13:25:40', 100.00);
INSERT INTO `depoit` VALUES (125, 97, 21, '2021-04-08 13:39:28', 100.00);
INSERT INTO `depoit` VALUES (126, 98, 21, '2021-04-08 13:58:52', 100.00);
INSERT INTO `depoit` VALUES (127, 99, 21, '2021-04-09 10:43:01', 200.00);
INSERT INTO `depoit` VALUES (128, 100, 21, '2021-04-09 10:43:27', 200.00);
INSERT INTO `depoit` VALUES (129, 101, 21, '2021-04-10 15:08:09', 100.00);
INSERT INTO `depoit` VALUES (130, 102, 21, '2021-04-11 10:14:16', 200.00);
INSERT INTO `depoit` VALUES (131, 103, 21, '2021-04-11 19:20:46', 200.00);
INSERT INTO `depoit` VALUES (132, 104, 21, '2021-04-12 08:11:23', 100.00);
INSERT INTO `depoit` VALUES (133, 105, 21, '2021-04-14 10:02:53', 100.00);
INSERT INTO `depoit` VALUES (134, 106, 21, '2021-04-14 12:22:52', 200.00);
INSERT INTO `depoit` VALUES (135, 107, 21, '2021-04-14 15:05:36', 100.00);
INSERT INTO `depoit` VALUES (136, 108, 21, '2021-04-14 15:07:16', 200.00);
INSERT INTO `depoit` VALUES (137, 109, 21, '2021-04-14 15:10:26', 200.00);
INSERT INTO `depoit` VALUES (138, 110, 21, '2021-04-14 15:11:10', 200.00);
INSERT INTO `depoit` VALUES (139, 111, 21, '2021-04-14 20:35:36', 200.00);
INSERT INTO `depoit` VALUES (140, 112, 21, '2021-04-14 21:09:42', 20.00);
INSERT INTO `depoit` VALUES (141, 113, 21, '2021-04-14 21:09:42', 20.00);
INSERT INTO `depoit` VALUES (142, 114, 21, '2021-04-14 21:09:42', 20.00);
INSERT INTO `depoit` VALUES (143, 115, 21, '2021-04-14 21:09:42', 20.00);
INSERT INTO `depoit` VALUES (144, 116, 21, '2021-04-14 21:09:42', 20.00);
INSERT INTO `depoit` VALUES (145, 116, 21, '2021-04-14 21:26:23', 80.00);
INSERT INTO `depoit` VALUES (146, 117, 21, '2021-04-16 09:49:05', 200.00);
INSERT INTO `depoit` VALUES (147, 118, 21, '2021-04-19 21:35:14', 100.00);
INSERT INTO `depoit` VALUES (148, 119, 21, '2021-04-19 22:21:06', 1500.00);
INSERT INTO `depoit` VALUES (149, 120, 21, '2021-04-20 11:02:36', 200.00);
INSERT INTO `depoit` VALUES (150, 121, 21, '2021-04-20 13:16:33', 200.00);
INSERT INTO `depoit` VALUES (151, 122, 21, '2021-04-20 13:19:31', 200.00);
INSERT INTO `depoit` VALUES (152, 123, 21, '2021-04-25 10:05:57', 200.00);
INSERT INTO `depoit` VALUES (153, 124, 21, '2021-04-26 16:10:32', 200.00);
INSERT INTO `depoit` VALUES (154, 125, 21, '2021-04-26 16:11:09', 200.00);
INSERT INTO `depoit` VALUES (155, 126, 21, '2021-05-02 09:16:04', 125.00);
INSERT INTO `depoit` VALUES (156, 127, 21, '2021-05-02 09:16:04', 125.00);
INSERT INTO `depoit` VALUES (157, 128, 21, '2021-05-02 09:16:04', 125.00);
INSERT INTO `depoit` VALUES (158, 129, 21, '2021-05-02 09:16:04', 125.00);
INSERT INTO `depoit` VALUES (159, 130, 21, '2021-05-02 09:20:30', 250.00);
INSERT INTO `depoit` VALUES (160, 131, 21, '2021-05-02 09:20:30', 250.00);
INSERT INTO `depoit` VALUES (161, 132, 21, '2021-05-07 10:46:59', 83.33);
INSERT INTO `depoit` VALUES (162, 133, 21, '2021-05-07 10:46:59', 83.33);
INSERT INTO `depoit` VALUES (163, 134, 21, '2021-05-07 10:46:59', 83.33);
INSERT INTO `depoit` VALUES (164, 135, 21, '2021-05-07 10:46:59', 83.33);
INSERT INTO `depoit` VALUES (165, 136, 21, '2021-05-07 10:46:59', 83.33);
INSERT INTO `depoit` VALUES (166, 137, 21, '2021-05-07 10:46:59', 83.33);
INSERT INTO `depoit` VALUES (167, 138, 21, '2022-06-18 14:19:33', 1000.00);
INSERT INTO `depoit` VALUES (168, 139, 21, '2022-06-18 14:23:39', 1000.00);
INSERT INTO `depoit` VALUES (169, 140, 21, '2022-06-18 14:37:40', 1000.00);

-- ----------------------------
-- Table structure for loginlog
-- ----------------------------
DROP TABLE IF EXISTS `loginlog`;
CREATE TABLE `loginlog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `loginTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `exitTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 195 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of loginlog
-- ----------------------------

-- ----------------------------
-- Table structure for passenger
-- ----------------------------
DROP TABLE IF EXISTS `passenger`;
CREATE TABLE `passenger`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '旅客ID',
  `papersID` int(11) NULL DEFAULT NULL COMMENT '证件ID',
  `educationDegreeID` int(11) NULL DEFAULT NULL COMMENT '文化程度ID',
  `genderID` int(11) NULL DEFAULT NULL COMMENT '性别ID',
  `passengerLevelID` int(11) NULL DEFAULT NULL COMMENT '旅客级别ID',
  `nationID` int(11) NULL DEFAULT NULL COMMENT '民族ID',
  `thingReasonID` int(11) NULL DEFAULT NULL COMMENT '事由',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `papersNumber` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '证件号码',
  `birthDate` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出生日期',
  `licenceIssuingAuthorty` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发证机关',
  `unitsOrAddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位或住址',
  `papersValidity` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '证件有效期',
  `profession` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职业',
  `whereAreFrom` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '从何处来',
  `whereToGo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '到哪里去',
  `contactPhoneNumber` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `remarks` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of passenger
-- ----------------------------
INSERT INTO `passenger` VALUES (2, 37, 44, 31, 54, 33, 51, '赵六', '440981198807214211', '1988-07-21', '广东省高州市', '广东省高州市荷花镇', '2010-01-01 至 2020-01-01', '学生', '广东省高州市荷花镇', '海南省三亚市大东海', '18312636707', '哈啊哈');
INSERT INTO `passenger` VALUES (3, 39, 40, 32, 53, 36, 51, '乔七', '310103199202080412', '1992-02-08', '上海徐汇区', '天桥下', '1921-02-29 至 2921-02-29', '流浪者', '河南省洛阳市', '河南省南阳市', '13800138002', '666');
INSERT INTO `passenger` VALUES (4, 37, 47, 31, 52, 33, 51, '王五', '440981198809094211', '1988-09-09', '广东省高州市', '广东省高州市荷花镇', '2010-01-01 至 2020-01-01', '学生', '广东省高州市荷花镇', '海南省三亚市大东海', '13800138003', '哈啊哈');
INSERT INTO `passenger` VALUES (25, 37, 43, 32, 52, 33, 51, '刘四', '440981199606053214', '1996-06-05', '河南省洛阳市', '河南省洛阳市', '1996-01-01 至 2096-01-01', '学生', '高州', '广州', NULL, '666');
INSERT INTO `passenger` VALUES (28, 37, 43, 31, 52, 33, 51, '赵八', '440981198307214202', '1983-07-21', '河南省洛阳市', '河南省洛阳市', '2010-01-01 至 2120-01-01', '', '', '', NULL, '666');
INSERT INTO `passenger` VALUES (29, 37, 45, 31, 52, 33, 51, '张三', '320320199901010001', '1999-01-01', '江苏省南京市', '江苏省南京市龙蟠路', '2020-01-01 至 2130-01-01', '学生', '江苏省南京市', '江苏省南京市', NULL, '江苏省南京市');
INSERT INTO `passenger` VALUES (30, 37, 44, 32, 52, 33, 51, '李四', '320320199901010002', '1999-01-01', '江苏省扬州市', '江苏省扬州市龙蟠路', '2020-01-01 至 2030-01-01', '软件工程', '上海', '扬州', NULL, '哈哈哈哈');

-- ----------------------------
-- Table structure for predetermine
-- ----------------------------
DROP TABLE IF EXISTS `predetermine`;
CREATE TABLE `predetermine`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '预定ID',
  `roomID` int(11) NULL DEFAULT NULL COMMENT '房间ID',
  `predetermineTargetID` int(11) NULL DEFAULT NULL COMMENT '预定对象ID',
  `passengerID` int(11) NULL DEFAULT NULL COMMENT '旅客ID',
  `payWayID` int(11) NULL DEFAULT NULL COMMENT '支付方式 ID',
  `predetermineStateID` int(11) NULL DEFAULT NULL COMMENT '预定状态ID',
  `arriveTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '抵达时间',
  `deposit` decimal(8, 2) NULL DEFAULT NULL COMMENT '押金',
  `predetermineDay` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预定天数',
  `remind` int(11) NULL DEFAULT 0 COMMENT '到时提示',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 119 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of predetermine
-- ----------------------------
INSERT INTO `predetermine` VALUES (1, 13, 11, 0, 21, 67, '2020-01-10 00:41:12', 100.00, '2', 1);
INSERT INTO `predetermine` VALUES (2, 14, 11, 0, 21, 67, '2020-01-10 00:41:12', 100.00, '2', 1);
INSERT INTO `predetermine` VALUES (3, 16, 11, 0, 21, 67, '2020-01-10 00:41:12', 100.00, '2', 1);
INSERT INTO `predetermine` VALUES (4, 17, 11, 0, 21, 67, '2020-01-10 00:45:05', 100.00, '2', 1);
INSERT INTO `predetermine` VALUES (5, 18, 11, 0, 21, 67, '2020-01-10 00:45:05', 100.00, '2', 1);
INSERT INTO `predetermine` VALUES (6, 13, 2, 3, 21, 67, '2020-01-10 00:46:54', 100.00, '1', 1);
INSERT INTO `predetermine` VALUES (7, 13, 2, 3, 21, 67, '2020-01-10 00:49:16', 100.00, '1', 1);
INSERT INTO `predetermine` VALUES (9, 19, 2, 3, 21, 67, '2020-01-10 19:21:50', 200.00, '2', 1);
INSERT INTO `predetermine` VALUES (10, 13, 12, 0, 21, 67, '2020-01-11 05:32:53', 100.00, '2', 1);
INSERT INTO `predetermine` VALUES (11, 27, 12, 0, 21, 67, '2020-01-11 05:32:53', 100.00, '2', 1);
INSERT INTO `predetermine` VALUES (12, 18, 2, 2, 21, 67, '2020-03-01 16:53:35', 200.00, '2', 1);
INSERT INTO `predetermine` VALUES (13, 16, 3, 0, 21, 67, '2020-02-21 16:26:14', 100.00, '1', 1);
INSERT INTO `predetermine` VALUES (14, 17, 3, 0, 21, 67, '2020-02-21 16:26:14', 100.00, '1', 1);
INSERT INTO `predetermine` VALUES (15, 13, 2, 1, 21, 67, '2020-02-21 17:14:16', 200.00, '2', 1);
INSERT INTO `predetermine` VALUES (18, 17, 13, 0, 21, 67, '2020-02-23 16:06:53', 200.00, '1', 1);
INSERT INTO `predetermine` VALUES (21, 13, 5, 0, 21, 67, '2020-02-23 19:41:59', 100.00, '1', 1);
INSERT INTO `predetermine` VALUES (22, 14, 5, 0, 21, 67, '2020-02-23 19:41:59', 100.00, '1', 1);
INSERT INTO `predetermine` VALUES (23, 3, 2, 1, 21, 67, '2020-02-23 19:28:56', 100.00, '1', 1);
INSERT INTO `predetermine` VALUES (25, 13, 3, 0, 21, 67, '2020-02-25 00:29:39', 100.00, '1', 1);
INSERT INTO `predetermine` VALUES (26, 27, 3, 0, 21, 67, '2020-02-25 00:29:39', 100.00, '1', 1);
INSERT INTO `predetermine` VALUES (27, 13, 1, 0, 21, 67, '2021-02-07 22:33:04', 250.00, '3', 1);
INSERT INTO `predetermine` VALUES (28, 18, 1, 0, 21, 67, '2021-02-07 22:33:44', 250.00, '3', 1);
INSERT INTO `predetermine` VALUES (29, 19, 1, 0, 21, 67, '2021-02-08 14:42:38', 250.00, '3', 1);
INSERT INTO `predetermine` VALUES (30, 21, 1, 0, 21, 67, '2021-02-08 14:42:38', 250.00, '3', 1);
INSERT INTO `predetermine` VALUES (31, 32, 2, 2, 22, 67, '2021-02-08 02:11:36', 100.00, '1', 1);
INSERT INTO `predetermine` VALUES (32, 27, 14, 0, 21, 67, '2021-02-07 22:36:06', 200.00, '2', 1);
INSERT INTO `predetermine` VALUES (33, 13, 13, 0, 21, 67, '2021-02-07 22:43:16', 500.00, '5', 1);
INSERT INTO `predetermine` VALUES (34, 13, 2, 1, 21, 66, '2021-02-07 22:45:54', 200.00, '2', 1);
INSERT INTO `predetermine` VALUES (35, 27, 2, 31, 21, 67, '2021-02-07 22:49:08', 500.00, '2', 1);
INSERT INTO `predetermine` VALUES (36, 3, 2, 32, 21, 67, '2021-02-08 00:02:36', 500.00, '2', 1);
INSERT INTO `predetermine` VALUES (37, 27, 2, 3, 21, 67, '2021-02-08 02:03:21', 200.00, '2', 1);
INSERT INTO `predetermine` VALUES (38, 22, 13, 0, 21, 67, '2021-02-08 02:08:18', 500.00, '2', 1);
INSERT INTO `predetermine` VALUES (39, 23, 3, 0, 21, 67, '2021-02-08 02:09:18', 500.00, '2', 1);
INSERT INTO `predetermine` VALUES (44, 28, 2, 4, 21, 67, '2021-02-08 14:42:38', 200.00, '2', 1);
INSERT INTO `predetermine` VALUES (45, 27, 2, 2, 21, 67, '2021-02-08 14:42:38', 200.00, '2', 1);
INSERT INTO `predetermine` VALUES (46, 30, 2, 15, 21, 67, '2021-02-08 14:42:38', 200.00, '2', 1);
INSERT INTO `predetermine` VALUES (53, 18, 2, 4, 21, 67, '2021-02-08 14:47:58', 200.00, '2', 1);
INSERT INTO `predetermine` VALUES (54, 17, 2, 19, 21, 67, '2021-03-31 14:51:57', 500.00, '2', 1);
INSERT INTO `predetermine` VALUES (55, 18, 2, 7, 21, 67, '2021-02-08 15:15:22', 200.00, '1', 1);
INSERT INTO `predetermine` VALUES (56, 25, 2, 26, 21, 67, '2021-02-08 15:49:43', 200.00, '1', 1);
INSERT INTO `predetermine` VALUES (57, 3, 2, 4, 21, 67, '2021-04-02 10:10:11', 200.00, '1', 1);
INSERT INTO `predetermine` VALUES (60, 3, 4, 0, 21, 67, '2021-04-01 10:28:57', 200.00, '2', 1);
INSERT INTO `predetermine` VALUES (61, 27, 3, 0, 21, 67, '2021-04-01 10:28:57', 500.00, '2', 1);
INSERT INTO `predetermine` VALUES (62, 16, 2, 7, 21, 67, '2021-04-02 10:53:35', 200.00, '1', 1);
INSERT INTO `predetermine` VALUES (63, 27, 2, 2, 21, 67, '2021-04-02 10:53:35', 200.00, '1', 1);
INSERT INTO `predetermine` VALUES (66, 28, 2, 17, 21, 67, '2021-04-02 13:27:02', 100.00, '1', 1);
INSERT INTO `predetermine` VALUES (67, 3, 2, 4, 21, 67, '2021-04-02 16:13:30', 100.00, '1', 1);
INSERT INTO `predetermine` VALUES (68, 27, 3, 0, 21, 67, '2021-04-02 16:14:52', 200.00, '1', 1);
INSERT INTO `predetermine` VALUES (69, 16, 2, 2, 21, 67, '2021-04-02 19:22:35', 200.00, '1', 1);
INSERT INTO `predetermine` VALUES (70, 18, 2, 36, 21, 67, '2021-04-02 19:22:54', 200.00, '1', 1);
INSERT INTO `predetermine` VALUES (72, 3, 2, 37, 21, 67, '2021-04-02 20:14:50', 100.00, '1', 1);
INSERT INTO `predetermine` VALUES (73, 22, 12, 0, 21, 67, '2021-03-09 10:04:07', 200.00, '1', 1);
INSERT INTO `predetermine` VALUES (74, 28, 2, 2, 21, 67, '2021-03-09 10:04:47', 200.00, '1', 1);
INSERT INTO `predetermine` VALUES (75, 17, 2, 3, 21, 67, '2021-04-08 10:23:17', 100.00, '1', 1);
INSERT INTO `predetermine` VALUES (104, 3, 2, 5, 21, 67, '2021-04-08 13:38:18', 100.00, '1', 1);
INSERT INTO `predetermine` VALUES (105, 9, 2, 18, 21, 67, '2021-04-08 13:56:07', 100.00, '1', 1);
INSERT INTO `predetermine` VALUES (106, 13, 2, 19, 21, 67, '2021-04-08 14:02:18', 100.00, '1', 1);
INSERT INTO `predetermine` VALUES (107, 27, 3, 0, 21, 67, '2021-04-09 10:35:06', 200.00, '1', 1);
INSERT INTO `predetermine` VALUES (108, 14, 2, 2, 21, 67, '2021-04-09 10:35:23', 200.00, '1', 1);
INSERT INTO `predetermine` VALUES (109, 3, 2, 37, 21, 67, '2021-04-10 15:08:00', 100.00, '1', 1);
INSERT INTO `predetermine` VALUES (110, 14, 2, 23, 21, 67, '2021-04-11 16:55:35', 200.00, '1', 1);
INSERT INTO `predetermine` VALUES (112, 3, 4, 0, 21, 67, '2021-04-12 08:40:14', 100.00, '1', 1);
INSERT INTO `predetermine` VALUES (113, 9, 2, 2, 21, 67, '2021-04-14 10:02:27', 100.00, '1', 1);
INSERT INTO `predetermine` VALUES (114, 40, 2, 5, 21, 67, '2021-04-14 12:25:34', 200.00, '1', 1);
INSERT INTO `predetermine` VALUES (115, 38, 2, 37, 21, 67, '2021-04-14 15:04:59', 100.00, '1', 1);
INSERT INTO `predetermine` VALUES (116, 3, 2, 2, 21, 67, '2021-04-20 10:37:23', 200.00, '1', 1);
INSERT INTO `predetermine` VALUES (117, 28, 2, 26, 21, 67, '2021-04-26 16:50:43', 200.00, '1', 1);
INSERT INTO `predetermine` VALUES (118, 36, 2, 7, 21, 67, '2021-04-26 16:10:58', 200.00, '1', 1);
INSERT INTO `predetermine` VALUES (119, 3, 2, 2, 21, 67, '2022-06-18 14:19:16', 1000.00, '2', 1);
INSERT INTO `predetermine` VALUES (120, 9, 2, 2, 21, 67, '2022-06-18 14:23:21', 1000.00, '2', 1);
INSERT INTO `predetermine` VALUES (121, 14, 2, 2, 21, 67, '2022-06-18 14:37:29', 1000.00, '2', 1);

-- ----------------------------
-- Table structure for receivetarget
-- ----------------------------
DROP TABLE IF EXISTS `receivetarget`;
CREATE TABLE `receivetarget`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '接待对象ID',
  `targetTypeID` int(11) NULL DEFAULT NULL COMMENT '对象类别ID',
  `principal` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `teamName` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '团队名称',
  `teamCode` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '团队编号',
  `registerTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '登记时间',
  `contactPhoneNUmber` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of receivetarget
-- ----------------------------
INSERT INTO `receivetarget` VALUES (2, 55, NULL, NULL, NULL, '2020-12-04 16:26:47', '122');

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '房间id',
  `guestRoomLevelID` int(11) NULL DEFAULT NULL COMMENT '客房等级ID',
  `roomStateID` int(11) NULL DEFAULT NULL COMMENT '房态ID',
  `roomNumber` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间号',
  `roomAmount` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '床位数',
  `standardPriceDay` decimal(8, 2) NULL DEFAULT NULL COMMENT '标准房价/天',
  `standardPrice` decimal(8, 2) NULL DEFAULT NULL COMMENT '标准房价/小时',
  `maxDuration` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时长限制（小时）',
  `firstDuration` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '首段时长（小时）',
  `firstPrice` decimal(8, 2) NULL DEFAULT NULL COMMENT '首段价格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES (3, 8, 65, '101', '1', 100.00, 20.00, '5', '3', 50.00);
INSERT INTO `room` VALUES (4, 14, 2, '501', '3', 10000.00, 1800.00, '5', '3', 5000.00);
INSERT INTO `room` VALUES (5, 8, 3, '404', '1', 1.00, 1.00, '1', '1', 1.00);
INSERT INTO `room` VALUES (9, 8, 65, '102', '1', 100.00, 20.00, '5', '3', 50.00);
INSERT INTO `room` VALUES (10, 8, 5, '103', '1', 100.00, 20.00, '5', '3', 50.00);
INSERT INTO `room` VALUES (11, 8, 6, '104', '1', 100.00, 20.00, '5', '3', 50.00);
INSERT INTO `room` VALUES (12, 9, 7, '105', '1', 150.00, 30.00, '5', '3', 80.00);
INSERT INTO `room` VALUES (13, 8, 1, '106', '1', 150.00, 30.00, '5', '3', 80.00);
INSERT INTO `room` VALUES (14, 10, 1, '107', '2', 200.00, 30.00, '5', '3', 100.00);
INSERT INTO `room` VALUES (16, 10, 1, '201', '2', 180.00, 35.00, '5', '3', 100.00);
INSERT INTO `room` VALUES (17, 10, 1, '202', '2', 180.00, 35.00, '5', '3', 100.00);
INSERT INTO `room` VALUES (18, 11, 1, '203', '2', 300.00, 50.00, '5', '3', 130.00);
INSERT INTO `room` VALUES (19, 11, 1, '204', '2', 300.00, 50.00, '5', '3', 130.00);
INSERT INTO `room` VALUES (20, 13, 1, '301', '1', 800.00, 200.00, '4', '3', 500.00);
INSERT INTO `room` VALUES (21, 8, 1, '209', '1', 200.00, 35.00, '3', '2', 50.00);
INSERT INTO `room` VALUES (22, 13, 1, '302', '30', 1200.00, 99.00, '5', '3', 500.00);
INSERT INTO `room` VALUES (23, 12, 1, '401', '1', 1000.00, 88.00, '5', '3', 700.00);
INSERT INTO `room` VALUES (24, 14, 1, '502', '2', 8000.00, 1500.00, '5', '3', 5000.00);
INSERT INTO `room` VALUES (25, 8, 1, '808', '1', 200.00, 35.00, '5', '3', 50.00);
INSERT INTO `room` VALUES (26, 12, 1, '312', '1', 299.00, 50.00, '5', '2', 120.00);
INSERT INTO `room` VALUES (27, 10, 1, '108', '2', 200.00, 35.00, '5', '3', 100.00);
INSERT INTO `room` VALUES (28, 8, 1, '109', '1', 200.00, 35.00, '5', '3', 100.00);
INSERT INTO `room` VALUES (29, 11, 1, '205', '2', 500.00, 100.00, '5', '3', 300.00);
INSERT INTO `room` VALUES (30, 11, 1, '206', '2', 600.00, 99.00, '5', '3', 300.00);
INSERT INTO `room` VALUES (31, 11, 1, '207', '2', 200.00, 30.00, '5', '3', 100.00);
INSERT INTO `room` VALUES (32, 8, 1, '208', '1', 300.00, 35.00, '5', '3', 100.00);
INSERT INTO `room` VALUES (34, 11, 1, '307', '2', 2000.00, 2.00, '5', '3', 888.80);
INSERT INTO `room` VALUES (35, 11, 1, '309', '2', 199.00, 35.00, '5', '3', 50.00);
INSERT INTO `room` VALUES (36, 12, 1, '111', '1', 200.00, 35.00, '3', '2', 50.00);
INSERT INTO `room` VALUES (37, 74, 1, '311', '2', 299.00, 50.00, '5', '2', 150.00);
INSERT INTO `room` VALUES (38, 75, 1, '313', '2', 288.00, 45.00, '5', '3', 139.00);
INSERT INTO `room` VALUES (39, 9, 1, '112', '1', 99.00, 20.00, '5', '2', 50.00);
INSERT INTO `room` VALUES (40, 74, 1, '411', '1', 299.00, 50.00, '5', '2', 129.00);
INSERT INTO `room` VALUES (41, 75, 1, '212', '2', 299.00, 50.00, '4', '2', 129.00);
INSERT INTO `room` VALUES (42, 74, 5, '306', '1', 299.00, 50.00, '3', '2', 129.00);
INSERT INTO `room` VALUES (43, 75, 6, '310', '2', 299.00, 50.00, '4', '2', 129.00);
INSERT INTO `room` VALUES (44, 77, 1, '213', '2', 329.00, 50.00, '5', '2', 129.00);
INSERT INTO `room` VALUES (45, 8, 1, '314', '2', 299.00, 50.00, '3', '2', 129.00);

-- ----------------------------
-- Table structure for stayregister
-- ----------------------------
DROP TABLE IF EXISTS `stayregister`;
CREATE TABLE `stayregister`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '住宿登记ID',
  `predetermineID` int(11) NULL DEFAULT NULL COMMENT '预定ID',
  `rentOutTypeID` int(11) NULL DEFAULT NULL COMMENT '出租方式ID',
  `roomID` int(11) NULL DEFAULT NULL COMMENT '房间ID',
  `payWayID` int(11) NULL DEFAULT NULL COMMENT '结账方式ID',
  `billUnitID` int(11) NULL DEFAULT NULL COMMENT '结账单位ID',
  `passengerTypeID` int(11) NULL DEFAULT NULL COMMENT '旅客类别ID',
  `receiveTargetID` int(11) NULL DEFAULT NULL COMMENT '接待对象ID',
  `deputyID` int(11) NULL DEFAULT NULL COMMENT '副ID',
  `isBillID` int(11) NULL DEFAULT NULL COMMENT '结账否',
  `registerTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '登记时间',
  `stayNumber` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '住店天数/小时',
  `sumConst` decimal(8, 2) NULL DEFAULT NULL COMMENT '总费用',
  `ChangingRoomNumber` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '换房次数',
  `changRoomMoney` decimal(8, 2) NULL DEFAULT NULL COMMENT '换房费',
  `remarks` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `payTime` timestamp NULL DEFAULT NULL COMMENT '结账时间',
  `changRoomTime` timestamp NULL DEFAULT NULL COMMENT '换房时间',
  `remind` int(11) NULL DEFAULT 0 COMMENT '提醒结账',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 138 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of stayregister
-- ----------------------------
INSERT INTO `stayregister` VALUES (140, 121, 26, 14, 21, 27, 29, 2, NULL, 69, '2022-06-18 14:37:40', '2', 400.00, NULL, NULL, '', '2022-06-18 14:37:54', NULL, 0);

-- ----------------------------
-- Table structure for stayregisterdetails
-- ----------------------------
DROP TABLE IF EXISTS `stayregisterdetails`;
CREATE TABLE `stayregisterdetails`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '住宿登记明细id',
  `stayRegisterID` int(11) NULL DEFAULT NULL COMMENT '住宿登记id',
  `passengerID` int(11) NULL DEFAULT NULL COMMENT '旅客id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 136 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of stayregisterdetails
-- ----------------------------
INSERT INTO `stayregisterdetails` VALUES (1, 1, 2);
INSERT INTO `stayregisterdetails` VALUES (2, 3, 3);
INSERT INTO `stayregisterdetails` VALUES (3, 3, 18);
INSERT INTO `stayregisterdetails` VALUES (4, 4, 2);
INSERT INTO `stayregisterdetails` VALUES (5, 5, 2);
INSERT INTO `stayregisterdetails` VALUES (6, 6, 2);
INSERT INTO `stayregisterdetails` VALUES (7, 6, 19);
INSERT INTO `stayregisterdetails` VALUES (8, 10, 1);
INSERT INTO `stayregisterdetails` VALUES (9, 11, 3);
INSERT INTO `stayregisterdetails` VALUES (10, 12, 3);
INSERT INTO `stayregisterdetails` VALUES (11, 13, 3);
INSERT INTO `stayregisterdetails` VALUES (12, 15, 1);
INSERT INTO `stayregisterdetails` VALUES (13, 14, 12);
INSERT INTO `stayregisterdetails` VALUES (14, 16, 5);
INSERT INTO `stayregisterdetails` VALUES (15, 17, 3);
INSERT INTO `stayregisterdetails` VALUES (16, 19, 1);
INSERT INTO `stayregisterdetails` VALUES (17, 18, 3);
INSERT INTO `stayregisterdetails` VALUES (18, 20, 3);
INSERT INTO `stayregisterdetails` VALUES (19, 20, 19);
INSERT INTO `stayregisterdetails` VALUES (20, 21, 19);
INSERT INTO `stayregisterdetails` VALUES (21, 17, 1);
INSERT INTO `stayregisterdetails` VALUES (22, 22, 4);
INSERT INTO `stayregisterdetails` VALUES (23, 23, 4);
INSERT INTO `stayregisterdetails` VALUES (24, 24, 22);
INSERT INTO `stayregisterdetails` VALUES (25, 25, 1);
INSERT INTO `stayregisterdetails` VALUES (26, 1, 23);
INSERT INTO `stayregisterdetails` VALUES (27, 26, 1);
INSERT INTO `stayregisterdetails` VALUES (28, 26, 25);
INSERT INTO `stayregisterdetails` VALUES (29, 27, 7);
INSERT INTO `stayregisterdetails` VALUES (30, 30, 2);
INSERT INTO `stayregisterdetails` VALUES (31, 28, 26);
INSERT INTO `stayregisterdetails` VALUES (32, 29, 5);
INSERT INTO `stayregisterdetails` VALUES (33, 28, 12);
INSERT INTO `stayregisterdetails` VALUES (34, 31, 1);
INSERT INTO `stayregisterdetails` VALUES (35, 33, 1);
INSERT INTO `stayregisterdetails` VALUES (36, 32, 3);
INSERT INTO `stayregisterdetails` VALUES (37, 34, 19);
INSERT INTO `stayregisterdetails` VALUES (38, 34, 28);
INSERT INTO `stayregisterdetails` VALUES (39, 35, 5);
INSERT INTO `stayregisterdetails` VALUES (40, 36, 7);
INSERT INTO `stayregisterdetails` VALUES (41, 37, 1);
INSERT INTO `stayregisterdetails` VALUES (42, 38, 17);
INSERT INTO `stayregisterdetails` VALUES (43, 39, 12);
INSERT INTO `stayregisterdetails` VALUES (44, 42, 1);
INSERT INTO `stayregisterdetails` VALUES (45, 41, 16);
INSERT INTO `stayregisterdetails` VALUES (46, 40, 18);
INSERT INTO `stayregisterdetails` VALUES (47, 43, 1);
INSERT INTO `stayregisterdetails` VALUES (48, 41, 6);
INSERT INTO `stayregisterdetails` VALUES (49, 47, 6);
INSERT INTO `stayregisterdetails` VALUES (50, 46, 29);
INSERT INTO `stayregisterdetails` VALUES (51, 45, 30);
INSERT INTO `stayregisterdetails` VALUES (52, 48, 12);
INSERT INTO `stayregisterdetails` VALUES (53, 49, 16);
INSERT INTO `stayregisterdetails` VALUES (54, 51, 4);
INSERT INTO `stayregisterdetails` VALUES (55, 53, 30);
INSERT INTO `stayregisterdetails` VALUES (56, 54, 31);
INSERT INTO `stayregisterdetails` VALUES (57, 55, 2);
INSERT INTO `stayregisterdetails` VALUES (58, 56, 31);
INSERT INTO `stayregisterdetails` VALUES (59, 57, 32);
INSERT INTO `stayregisterdetails` VALUES (60, 59, 3);
INSERT INTO `stayregisterdetails` VALUES (61, 60, 2);
INSERT INTO `stayregisterdetails` VALUES (63, 62, 33);
INSERT INTO `stayregisterdetails` VALUES (64, 64, 2);
INSERT INTO `stayregisterdetails` VALUES (65, 63, 3);
INSERT INTO `stayregisterdetails` VALUES (66, 66, 34);
INSERT INTO `stayregisterdetails` VALUES (67, 65, 3);
INSERT INTO `stayregisterdetails` VALUES (68, 67, 35);
INSERT INTO `stayregisterdetails` VALUES (69, 73, 2);
INSERT INTO `stayregisterdetails` VALUES (70, 72, 5);
INSERT INTO `stayregisterdetails` VALUES (71, 71, 3);
INSERT INTO `stayregisterdetails` VALUES (72, 70, 6);
INSERT INTO `stayregisterdetails` VALUES (73, 69, 5);
INSERT INTO `stayregisterdetails` VALUES (74, 68, 3);
INSERT INTO `stayregisterdetails` VALUES (75, 74, 5);
INSERT INTO `stayregisterdetails` VALUES (76, 76, 26);
INSERT INTO `stayregisterdetails` VALUES (77, 75, 7);
INSERT INTO `stayregisterdetails` VALUES (78, 77, 4);
INSERT INTO `stayregisterdetails` VALUES (79, 78, 7);
INSERT INTO `stayregisterdetails` VALUES (80, 80, 3);
INSERT INTO `stayregisterdetails` VALUES (81, 79, 12);
INSERT INTO `stayregisterdetails` VALUES (82, 82, 2);
INSERT INTO `stayregisterdetails` VALUES (83, 81, 4);
INSERT INTO `stayregisterdetails` VALUES (84, 83, 17);
INSERT INTO `stayregisterdetails` VALUES (85, 84, 36);
INSERT INTO `stayregisterdetails` VALUES (86, 85, 35);
INSERT INTO `stayregisterdetails` VALUES (87, 86, 4);
INSERT INTO `stayregisterdetails` VALUES (88, 88, 5);
INSERT INTO `stayregisterdetails` VALUES (89, 87, 7);
INSERT INTO `stayregisterdetails` VALUES (90, 89, 2);
INSERT INTO `stayregisterdetails` VALUES (91, 90, 36);
INSERT INTO `stayregisterdetails` VALUES (92, 91, 37);
INSERT INTO `stayregisterdetails` VALUES (93, 92, 4);
INSERT INTO `stayregisterdetails` VALUES (94, 93, 5);
INSERT INTO `stayregisterdetails` VALUES (95, 94, 2);
INSERT INTO `stayregisterdetails` VALUES (96, 95, 6);
INSERT INTO `stayregisterdetails` VALUES (97, 96, 7);
INSERT INTO `stayregisterdetails` VALUES (98, 98, 18);
INSERT INTO `stayregisterdetails` VALUES (99, 97, 19);
INSERT INTO `stayregisterdetails` VALUES (100, 100, 2);
INSERT INTO `stayregisterdetails` VALUES (101, 99, 12);
INSERT INTO `stayregisterdetails` VALUES (102, 102, 38);
INSERT INTO `stayregisterdetails` VALUES (103, 103, 23);
INSERT INTO `stayregisterdetails` VALUES (104, 104, 16);
INSERT INTO `stayregisterdetails` VALUES (105, 108, 26);
INSERT INTO `stayregisterdetails` VALUES (106, 109, 20);
INSERT INTO `stayregisterdetails` VALUES (107, 110, 16);
INSERT INTO `stayregisterdetails` VALUES (108, 111, 16);
INSERT INTO `stayregisterdetails` VALUES (109, 116, 7);
INSERT INTO `stayregisterdetails` VALUES (110, 115, 16);
INSERT INTO `stayregisterdetails` VALUES (111, 114, 17);
INSERT INTO `stayregisterdetails` VALUES (112, 113, 23);
INSERT INTO `stayregisterdetails` VALUES (113, 112, 21);
INSERT INTO `stayregisterdetails` VALUES (114, 117, 3);
INSERT INTO `stayregisterdetails` VALUES (115, 118, 5);
INSERT INTO `stayregisterdetails` VALUES (116, 119, 18);
INSERT INTO `stayregisterdetails` VALUES (117, 120, 2);
INSERT INTO `stayregisterdetails` VALUES (118, 121, 5);
INSERT INTO `stayregisterdetails` VALUES (119, 122, 35);
INSERT INTO `stayregisterdetails` VALUES (120, 123, 22);
INSERT INTO `stayregisterdetails` VALUES (121, 125, 7);
INSERT INTO `stayregisterdetails` VALUES (122, 124, 26);
INSERT INTO `stayregisterdetails` VALUES (125, 129, 21);
INSERT INTO `stayregisterdetails` VALUES (126, 127, 5);
INSERT INTO `stayregisterdetails` VALUES (127, 128, 6);
INSERT INTO `stayregisterdetails` VALUES (128, 131, 29);
INSERT INTO `stayregisterdetails` VALUES (129, 130, 18);
INSERT INTO `stayregisterdetails` VALUES (130, 132, 2);
INSERT INTO `stayregisterdetails` VALUES (131, 135, 4);
INSERT INTO `stayregisterdetails` VALUES (132, 134, 12);
INSERT INTO `stayregisterdetails` VALUES (133, 133, 18);
INSERT INTO `stayregisterdetails` VALUES (134, 137, 20);
INSERT INTO `stayregisterdetails` VALUES (135, 136, 21);
INSERT INTO `stayregisterdetails` VALUES (136, 140, 2);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (9, 'admin', 'admin');

SET FOREIGN_KEY_CHECKS = 1;
