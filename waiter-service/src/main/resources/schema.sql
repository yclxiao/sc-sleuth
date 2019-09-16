/*
 Navicat Premium Data Transfer

 Source Server         : 家政加测试
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : 172.19.70.132:3306
 Source Schema         : yclxiaodb

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 11/09/2019 20:22:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_coffee
-- ----------------------------
DROP TABLE IF EXISTS `t_coffee`;
CREATE TABLE `t_coffee` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(255) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer` varchar(255) DEFAULT NULL,
  `waiter` varchar(255) DEFAULT NULL,
  `barista` varchar(255) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `total` bigint(20) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for t_order_coffee
-- ----------------------------
DROP TABLE IF EXISTS `t_order_coffee`;
CREATE TABLE `t_order_coffee` (
  `coffee_order_id` bigint(20) NOT NULL,
  `items_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;
