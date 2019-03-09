/*
Navicat MySQL Data Transfer

Source Server         : hello
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : hello

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-03-08 21:07:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for stock_info
-- ----------------------------
DROP TABLE IF EXISTS `stock_info`;
CREATE TABLE `stock_info` (
  `stock_id` int(11) DEFAULT NULL,
  `stock_name` varchar(25) DEFAULT NULL,
  `stock_py` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of stock_info
-- ----------------------------
INSERT INTO `stock_info` VALUES ('7788', '上海建工', 'SJ');
