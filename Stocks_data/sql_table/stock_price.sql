/*
Navicat MySQL Data Transfer

Source Server         : hello
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : hello

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-03-08 21:07:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for stock_price
-- ----------------------------
DROP TABLE IF EXISTS `stock_price`;
CREATE TABLE `stock_price` (
  `stock_id` int(11) DEFAULT NULL,
  `last_price` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stock_price
-- ----------------------------
INSERT INTO `stock_price` VALUES ('7788', '6.70');
