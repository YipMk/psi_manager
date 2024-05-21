/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : localhost:3306
 Source Schema         : psi_manager

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 28/10/2023 14:49:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '管理员' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'admin', '管理员', 'http://localhost:9090/files/1697438073596-avatar.png', 'ADMIN', '13677889922', 'admin@xm.com');

-- ----------------------------
-- Table structure for back
-- ----------------------------
DROP TABLE IF EXISTS `back`;
CREATE TABLE `back`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `supplier_id` int(11) NULL DEFAULT NULL COMMENT '供应商ID',
  `goods_id` int(11) NULL DEFAULT NULL COMMENT '商品ID',
  `pay_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '支付类型',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '退货时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作人',
  `num` int(11) NULL DEFAULT NULL COMMENT '退货数量',
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品规格',
  `price` double(10, 2) NULL DEFAULT NULL COMMENT '退货价格',
  `total` double(10, 2) NULL DEFAULT NULL COMMENT '退货总价格',
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品退货' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of back
-- ----------------------------
INSERT INTO `back` VALUES (2, 6, 4, '支付宝', '2023-10-27', '管理员', 1, '24瓶/箱', 38.00, 380.00, '22');
INSERT INTO `back` VALUES (3, 6, 4, '支付宝', '2023-10-27', '管理员', 7, '24瓶/箱', 38.00, 380.00, NULL);
INSERT INTO `back` VALUES (4, 5, 7, '支付宝', '2023-10-27', '管理员', 1, '10包/箱', 40.00, 200.00, NULL);

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '客户名称',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '客户地址',
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '客户电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '客户邮箱',
  `zip_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '客户邮编',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系人',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系人电话',
  `bank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '开户银行',
  `bank_card` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '开户行账号',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '可用' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '客户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (4, '小张超市', '北京市丰台区', '010-68997788', 'zhang@xm.com', '100000', '小张', '13988776699', '中国建设银行', '68898877753222', '可用');
INSERT INTO `customer` VALUES (5, '王二超市', '合肥市蜀山区', '0551-89786778', 'we@xm.com', '230000', '小王', '13899776655', '中国建设银行', '68898877751167', '可用');
INSERT INTO `customer` VALUES (6, '开心超市', '上海市静安区', '021-67889966', 'kx@xm.com', '300000', '小凯', '13899776655', '中国建设银行', '68898831246788', '可用');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '部门地址',
  `pid` int(11) NULL DEFAULT NULL COMMENT '父级ID',
  `root_id` int(11) NULL DEFAULT NULL COMMENT '根节点ID',
  `level` int(11) NULL DEFAULT NULL COMMENT '层级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES (1, '总经办', 'A栋1001', NULL, NULL, 1);
INSERT INTO `department` VALUES (2, '销售部', 'A栋1501', 1, 1, 2);
INSERT INTO `department` VALUES (3, '销售1部', 'A栋1501', 2, 1, 3);
INSERT INTO `department` VALUES (4, '销售2部', 'A栋1501', 2, 1, 3);
INSERT INTO `department` VALUES (5, '哈哈哈', '111', 2, NULL, 3);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品名称',
  `supplier_id` int(11) NULL DEFAULT NULL COMMENT '供应商ID',
  `producer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品产地',
  `descr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品描述',
  `price` double(10, 2) NULL DEFAULT NULL COMMENT '销售价格',
  `num` int(11) NULL DEFAULT NULL COMMENT '数量',
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品规格',
  `pack` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '包装单位',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品图片',
  `product_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '生产批号',
  `approve_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '批准文号',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '可用' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (2, '娃哈哈AD钙奶', 4, '安徽合肥', '娃哈哈AD钙奶', 19.00, 195, '6瓶', '打', 'http://localhost:9090/files/1698307630163-微信截图_20231025225606.png', '2312344', '4141451', '可用');
INSERT INTO `goods` VALUES (3, '八宝粥', 4, '浙江', '营养美味', 29.00, 100, '12罐', '箱', 'http://localhost:9090/files/1698328299332-微信截图_20231025225631.png', '43131255666', 'SC121133116', '可用');
INSERT INTO `goods` VALUES (4, '矿泉水', 6, '浙江', '矿泉水，清甜可口', 38.00, 89, '24瓶', '箱', 'http://localhost:9090/files/1698393595456-微信截图_20231026190735.png', 'SC123123', '31414111', '可用');
INSERT INTO `goods` VALUES (5, '亲嘴烧', 4, '浙江', '儿时味道，好吃不腻', 19.00, 86, '30袋', '箱', 'http://localhost:9090/files/1698393752183-微信截图_20231027160221.png', 'SC6534543', '7753432566', '可用');
INSERT INTO `goods` VALUES (6, '可可草莓派', 5, '安徽', '早餐点心', 29.00, 97, '20包', '箱', 'http://localhost:9090/files/1698393853520-微信截图_20231027160352.png', 'SC9887788', '577889977', '可用');
INSERT INTO `goods` VALUES (7, '瑞士卷', 5, '安徽', '饱腹小点心', 39.00, 104, '10包', '箱', 'http://localhost:9090/files/1698393957856-微信截图_20231027160408.png', 'SC98844778', '8867700021', '可用');
INSERT INTO `goods` VALUES (8, '蜀香牛肉', 7, '安徽', '香辣可口，好吃到爆！', 100.00, 100, '12袋', '箱', 'http://localhost:9090/files/1698475152117-微信截图_20231028143828.png', 'SC104330482006', '231345666623', '可用');
INSERT INTO `goods` VALUES (9, '无核特大西梅', 7, '云南', '无添加健康孕妇梅子果干蜜饯', 100.00, 120, '12袋', '箱', 'http://localhost:9090/files/1698475235586-微信截图_20231028143801.png', 'SC117340122304', '21314556763323', '可用');

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `operation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作',
  `username` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作人',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '类型',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of logs
-- ----------------------------
INSERT INTO `logs` VALUES (4, 'admin登录系统', 'admin', '登录', '127.0.0.1', '2023-10-28 11:11:53');
INSERT INTO `logs` VALUES (5, 'bbb注册账号', 'bbb', '注册', '127.0.0.1', '2023-10-28 11:15:44');
INSERT INTO `logs` VALUES (6, 'admin登录系统', 'admin', '登录', '127.0.0.1', '2023-10-28 12:22:37');
INSERT INTO `logs` VALUES (7, 'admin登录系统', 'admin', '登录', '127.0.0.1', '2023-10-28 12:23:32');
INSERT INTO `logs` VALUES (8, 'admin登录系统', 'admin', '登录', '127.0.0.1', '2023-10-28 12:35:06');
INSERT INTO `logs` VALUES (9, 'admin登录系统', 'admin', '登录', '127.0.0.1', '2023-10-28 12:35:15');
INSERT INTO `logs` VALUES (10, 'admin登录系统', 'admin', '登录', '127.0.0.1', '2023-10-28 12:36:36');
INSERT INTO `logs` VALUES (11, 'admin登录系统', 'admin', '登录', '127.0.0.1', '2023-10-28 12:36:56');
INSERT INTO `logs` VALUES (12, 'aaa登录系统', 'aaa', '登录', '127.0.0.1', '2023-10-28 12:37:23');
INSERT INTO `logs` VALUES (13, 'admin登录系统', 'admin', '登录', '127.0.0.1', '2023-10-28 12:52:17');
INSERT INTO `logs` VALUES (14, 'admin登录系统', 'admin', '登录', '127.0.0.1', '2023-10-28 13:02:01');
INSERT INTO `logs` VALUES (15, 'admin登录系统', 'admin', '登录', '127.0.0.1', '2023-10-28 13:37:47');
INSERT INTO `logs` VALUES (16, 'admin登录系统', 'admin', '登录', '127.0.0.1', '2023-10-28 14:13:02');
INSERT INTO `logs` VALUES (17, 'aaa登录系统', 'aaa', '登录', '127.0.0.1', '2023-10-28 14:46:52');
INSERT INTO `logs` VALUES (18, 'aaa登录系统', 'aaa', '登录', '127.0.0.1', '2023-10-28 14:48:19');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '公告信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '今天系统正式上线，开始内测', '今天系统正式上线，开始内测', '2023-09-05', 'admin');
INSERT INTO `notice` VALUES (2, '所有功能都已完成，可以正常使用', '所有功能都已完成，可以正常使用', '2023-09-05', 'admin');
INSERT INTO `notice` VALUES (3, '今天天气很不错，可以出去一起玩了', '今天天气很不错，可以出去一起玩了', '2023-09-05', 'admin');

-- ----------------------------
-- Table structure for sale
-- ----------------------------
DROP TABLE IF EXISTS `sale`;
CREATE TABLE `sale`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `customer_id` int(11) NULL DEFAULT NULL COMMENT '客户ID',
  `goods_id` int(11) NULL DEFAULT NULL COMMENT '商品ID',
  `pay_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '支付类型',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '销售时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作人',
  `price` double NULL DEFAULT NULL COMMENT '销售单价',
  `num` int(11) NULL DEFAULT NULL COMMENT '销售数量',
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品规格',
  `total` double(10, 2) NULL DEFAULT NULL COMMENT '销售总价',
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品销售' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sale
-- ----------------------------
INSERT INTO `sale` VALUES (2, 6, 7, '支付宝', '2023-10-22 00:00:00', '管理员', 30, 10, '10包/箱', 300.00, '1');
INSERT INTO `sale` VALUES (3, 6, 5, '支付宝', '2023-10-23 00:00:00', '管理员', 22, 11, '30袋/箱', 242.00, '11');
INSERT INTO `sale` VALUES (4, 5, 6, '微信', '2023-10-24 09:00:00', '管理员', 32, 3, '20包/箱', 96.00, '2222');
INSERT INTO `sale` VALUES (5, 4, 5, '支付宝', '2023-10-25 13:59:21', '管理员', 19, 3, '30袋/箱', 57.00, '11');
INSERT INTO `sale` VALUES (6, 5, 2, '微信', '2023-10-26 13:59:42', '管理员', 19, 5, '6瓶/打', 95.00, NULL);
INSERT INTO `sale` VALUES (7, 4, 4, '支付宝', '2023-10-27 14:00:37', '管理员', 38, 4, '24瓶/箱', 152.00, NULL);

-- ----------------------------
-- Table structure for sale_back
-- ----------------------------
DROP TABLE IF EXISTS `sale_back`;
CREATE TABLE `sale_back`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `customer_id` int(11) NULL DEFAULT NULL COMMENT '客户ID',
  `goods_id` int(11) NULL DEFAULT NULL COMMENT '商品ID',
  `pay_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '支付类型',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '退货时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作人',
  `price` double NULL DEFAULT NULL COMMENT '退货单价',
  `num` int(11) NULL DEFAULT NULL COMMENT '退货数量',
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品规格',
  `total` double(10, 2) NULL DEFAULT NULL COMMENT '退货总价',
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品销售' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sale_back
-- ----------------------------
INSERT INTO `sale_back` VALUES (1, 6, 7, '支付宝', '2023-10-27 00:00:00', '管理员', 30, 1, '10包/箱', 300.00, '1111');
INSERT INTO `sale_back` VALUES (2, 6, 5, '支付宝', '2023-10-27 00:00:00', '管理员', 22, 1, '30袋/箱', 242.00, '11');
INSERT INTO `sale_back` VALUES (3, 5, 6, '微信', '2023-10-27 00:00:00', '管理员', 32, 1, '20包/箱', 96.00, NULL);

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `birth` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '出生年月',
  `department_id` int(11) NULL DEFAULT NULL COMMENT '所属部门ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '管理员' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of staff
-- ----------------------------
INSERT INTO `staff` VALUES (1, 'aaa', '1234', '小武', 'http://localhost:9090/files/1697438073596-avatar.png', 'STAFF', '男', '13677889922', 'xw@xm.com', '2001-10-01', 4);
INSERT INTO `staff` VALUES (2, 'bbb', '123', 'bbb', 'http://localhost:9090/files/1698468595387-微信截图_20231018172452.png', 'STAFF', '男', '13988997788', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for stock
-- ----------------------------
DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `supplier_id` int(11) NULL DEFAULT NULL COMMENT '供应商ID',
  `goods_id` int(11) NULL DEFAULT NULL COMMENT '商品ID',
  `pay_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '支付类型',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '进货时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作人',
  `num` int(11) NULL DEFAULT NULL COMMENT '进货数量',
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品规格',
  `price` double(10, 2) NULL DEFAULT NULL COMMENT '进货价格',
  `total` double(10, 2) NULL DEFAULT NULL COMMENT '进货总价格',
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品进货' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stock
-- ----------------------------
INSERT INTO `stock` VALUES (2, 6, 4, '支付宝', '2023-10-27', '管理员', 10, '24瓶/箱', 38.00, 380.00, '11');
INSERT INTO `stock` VALUES (3, 5, 7, '支付宝', '2023-10-27', '管理员', 5, '10包/箱', 40.00, 200.00, NULL);

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '供应商地址',
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '供应商电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '供应商邮箱',
  `zip_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮编',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系人',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系人电话',
  `bank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '开户银行',
  `bank_card` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '开户行账号',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '可用' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '供应商表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES (4, '旺旺食品', '北京市丰台区', '010-68997788', 'zhang@xm.com', '100000', '小张', '13988776699', '中国光大银行', '68877312314899667', '可用');
INSERT INTO `supplier` VALUES (5, '达利园食品', '北京市大兴区', '010-68998769', 'dly@xm.com', '100000', '小李', '13988778899', '中国工商银行', '63245675453312145', '可用');
INSERT INTO `supplier` VALUES (6, '娃哈哈', '安徽', '0551-79889598', 'whh@xm.com', '230000', '小武', '13899887788', '中国建设银行', '68877312314414551', '可用');
INSERT INTO `supplier` VALUES (7, '三只松鼠', '安徽芜湖', '0553-89778999', 'ss@xm.com', '230000', '小鼠', '13988997788', '中国工商银行', '69889977888887789', '可用');

SET FOREIGN_KEY_CHECKS = 1;
