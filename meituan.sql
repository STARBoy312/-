/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : meituan

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 23/12/2024 15:39:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '分类名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, '点菜');
INSERT INTO `categories` VALUES (2, '评价');
INSERT INTO `categories` VALUES (3, '商家');

-- ----------------------------
-- Table structure for category_data
-- ----------------------------
DROP TABLE IF EXISTS `category_data`;
CREATE TABLE `category_data`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL COMMENT '关联到categories表',
  `content` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '分类的具体内容',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `category_id`(`category_id`) USING BTREE,
  CONSTRAINT `category_data_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category_data
-- ----------------------------
INSERT INTO `category_data` VALUES (1, 1, '点菜');
INSERT INTO `category_data` VALUES (2, 2, '评价');
INSERT INTO `category_data` VALUES (3, 3, '商家');

-- ----------------------------
-- Table structure for category_items
-- ----------------------------
DROP TABLE IF EXISTS `category_items`;
CREATE TABLE `category_items`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_data_id` int NOT NULL COMMENT '关联到category_data表',
  `text` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '子项标题',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `category_data_id`(`category_data_id`) USING BTREE,
  CONSTRAINT `category_items_ibfk_1` FOREIGN KEY (`category_data_id`) REFERENCES `category_data` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category_items
-- ----------------------------
INSERT INTO `category_items` VALUES (1, 1, '热销套餐');
INSERT INTO `category_items` VALUES (2, 1, '超级折扣');

-- ----------------------------
-- Table structure for content_nav
-- ----------------------------
DROP TABLE IF EXISTS `content_nav`;
CREATE TABLE `content_nav`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `tab` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of content_nav
-- ----------------------------
INSERT INTO `content_nav` VALUES (1, '天天神券');
INSERT INTO `content_nav` VALUES (2, '减配送费');
INSERT INTO `content_nav` VALUES (3, '点评高分');
INSERT INTO `content_nav` VALUES (4, '会员满减');

-- ----------------------------
-- Table structure for content_nav_data
-- ----------------------------
DROP TABLE IF EXISTS `content_nav_data`;
CREATE TABLE `content_nav_data`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `content_nav_id` int NOT NULL,
  `pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales` int NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `content_nav_id`(`content_nav_id`) USING BTREE,
  CONSTRAINT `content_nav_data_ibfk_1` FOREIGN KEY (`content_nav_id`) REFERENCES `content_nav` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of content_nav_data
-- ----------------------------
INSERT INTO `content_nav_data` VALUES (1, 1, 'https://img1.baidu.com/it/u=1599947592,1695977044&fm=253&fmt=auto&app=138&f=JPEG?w=640&h=440', '酸菜鱼', 2888, 20.00);
INSERT INTO `content_nav_data` VALUES (2, 1, 'https://th.bing.com/th/id/OIP.DHLDx5xB7vGHrkhq7vVmQAHaE7?w=286&h=191&c=7&r=0&o=5&dpr=1.5&pid=1.7', '隆江猪脚饭', 2888, 20.00);
INSERT INTO `content_nav_data` VALUES (4, 3, 'https://img1.baidu.com/it/u=1599947592,1695977044&fm=253&fmt=auto&app=138&f=JPEG?w=640&h=440', '酸菜鱼', 2888, 20.00);
INSERT INTO `content_nav_data` VALUES (5, 1, 'https://img1.baidu.com/it/u=1599947592,1695977044&fm=253&fmt=auto&app=138&f=JPEG?w=640&h=440', '酸菜鱼', 2888, 20.00);
INSERT INTO `content_nav_data` VALUES (6, 1, 'https://th.bing.com/th/id/OIP.DHLDx5xB7vGHrkhq7vVmQAHaE7?w=286&h=191&c=7&r=0&o=5&dpr=1.5&pid=1.7', '隆江猪脚饭', 2888, 20.00);
INSERT INTO `content_nav_data` VALUES (7, 2, 'https://img1.baidu.com/it/u=1599947592,1695977044&fm=253&fmt=auto&app=138&f=JPEG?w=640&h=440', '酸菜鱼', 2888, 20.00);
INSERT INTO `content_nav_data` VALUES (8, 3, 'https://img1.baidu.com/it/u=1599947592,1695977044&fm=253&fmt=auto&app=138&f=JPEG?w=640&h=440', '酸菜鱼', 2888, 20.00);

-- ----------------------------
-- Table structure for item_children
-- ----------------------------
DROP TABLE IF EXISTS `item_children`;
CREATE TABLE `item_children`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_item_id` int NOT NULL COMMENT '关联到category_items表',
  `pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品图片URL',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品标题',
  `price` decimal(10, 2) NOT NULL COMMENT '商品价格',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `category_item_id`(`category_item_id`) USING BTREE,
  CONSTRAINT `item_children_ibfk_1` FOREIGN KEY (`category_item_id`) REFERENCES `category_items` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_children
-- ----------------------------
INSERT INTO `item_children` VALUES (1, 1, 'https://ts1.cn.mm.bing.net/th?id=OIP-C.DHLDx5xB7vGHrkhq7vVmQAHaE7&w=189&h=185&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2', '隆江猪脚饭', 25.00);
INSERT INTO `item_children` VALUES (2, 1, 'https://ts1.cn.mm.bing.net/th?id=OIP-C.DHLDx5xB7vGHrkhq7vVmQAHaE7&w=189&h=185&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2', '隆江猪脚饭', 25.00);
INSERT INTO `item_children` VALUES (3, 2, 'https://img1.baidu.com/it/u=1599947592,1695977044&fm=253&fmt=auto&app=138&f=JPEG?w=640&h=440', '无骨酸菜鱼+肥牛双拼', 25.00);
INSERT INTO `item_children` VALUES (4, 2, 'https://img1.baidu.com/it/u=1599947592,1695977044&fm=253&fmt=auto&app=138&f=JPEG?w=640&h=440', '香辣水煮鱼+肥牛双拼', 25.00);

SET FOREIGN_KEY_CHECKS = 1;
