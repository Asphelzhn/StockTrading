/*
Navicat MySQL Data Transfer

Source Server         : hello
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : hello

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-03-08 21:07:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for stock_bill
-- ----------------------------
DROP TABLE IF EXISTS `stock_bill`;
CREATE TABLE `stock_bill` (
  `trade_id` int(11) DEFAULT NULL,
  `tradeuser_id` int(11) DEFAULT NULL,
  `stock_price` double(10,2) DEFAULT NULL,
  `stock_number` int(11) DEFAULT NULL,
  `untrade_number` int(11) DEFAULT NULL,
  `trade_type` decimal(2,0) DEFAULT NULL,
  `trade_status` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stock_bill
-- ----------------------------
