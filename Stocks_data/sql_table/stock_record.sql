/*
Navicat MySQL Data Transfer

Source Server         : hello
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : hello

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-03-08 21:07:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for stock_record
-- ----------------------------
DROP TABLE IF EXISTS `stock_record`;
CREATE TABLE `stock_record` (
  `stock_id` int(11) DEFAULT NULL,
  `stock_name` varchar(25) DEFAULT NULL,
  `stock_price` double(10,2) DEFAULT NULL,
  `buyuser_id` int(11) DEFAULT NULL,
  `selluser_id` int(11) DEFAULT NULL,
  `trade_number` int(11) DEFAULT NULL,
  `trade_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stock_record
-- ----------------------------
