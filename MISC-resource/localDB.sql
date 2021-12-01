/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3307
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3307
 Source Schema         : mappingcar

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 26/11/2021 10:00:36
*/

-- ----------------------------
-- Table structure for administrator
-- ----------------------------
CREATE TABLE `administrator`(
  `id` int NOT NULL,
  `password` varchar(20),
  `name` varchar(20),
  `sex` varchar(2),
  `age` int NULL DEFAULT NULL,
  `email` varchar(45),
  `department` varchar(45),
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
)

-- ----------------------------
-- Table structure for affairs
-- ----------------------------
CREATE TABLE `affairs`(
  `id` int NOT NULL,
  `location` varchar(50),
  `remark` varchar(200),
  `expense` double NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) 
-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car`  (
  `id` int NOT NULL,
  `name` varchar(45)  NULL DEFAULT '未命名车辆',
  `LicensePlate` varchar(45),
  `brand` varchar(45),
  `model` varchar(45),
  `department` varchar(45),
  `purchase` datetime(0) NULL DEFAULT NULL,
  `pic` varchar(70)  NULL DEFAULT '../assets/images/products/product-0.png',
  `age` int NULL DEFAULT NULL,
  `status` varchar(20),
  `transmissionCase` varchar(45),
  `maintenanceTimes` int NULL DEFAULT 0,
  `fixtimes` int NULL DEFAULT 0,
  `mileage` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`)  
)  

-- ----------------------------
-- Table structure for carapplication
-- ----------------------------
CREATE TABLE `carapplication` (
  `id` int NOT NULL AUTO_INCREMENT,
  `remarks` varchar(200),
  `date` datetime(0) NULL DEFAULT NULL,
  `destination` varchar(50),
  `userid` int NULL DEFAULT NULL,
  `username` varchar(45),
  `adminid` int NULL DEFAULT NULL,
  `carid` int NULL DEFAULT NULL,
  `affairsid` int NULL DEFAULT NULL,
  `status` varchar(10)  NULL DEFAULT '审核中',
  `usingdate` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_1_idx`(`userid`),
  INDEX `fk_2_idx`(`adminid`),
  INDEX `fk_3_idx`(`carid`),
  INDEX `fk_cap_4_idx`(`affairsid`)  ,
  CONSTRAINT `fk_cap_1` FOREIGN KEY (`userid`) REFERENCES `staff` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_cap_2` FOREIGN KEY (`adminid`) REFERENCES `administrator` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_cap_3` FOREIGN KEY (`carid`) REFERENCES `car` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_cap_4` FOREIGN KEY (`affairsid`) REFERENCES `affairs` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
)

-- ----------------------------
-- Table structure for fixapplication
-- ----------------------------
CREATE TABLE `fixapplication`(
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45),
  `userid` int NULL DEFAULT NULL,
  `carid` int NULL DEFAULT NULL,
  `remarks` varchar(200),
  `adminid` int NULL DEFAULT NULL,
  `mileage` int NULL DEFAULT NULL,
  `type` varchar(45),
  `LP` varchar(45),
  `date` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `status` varchar(10)  NULL DEFAULT '审核中',
  `location` varchar(45),
  PRIMARY KEY (`id`),
  INDEX `pk_fap_1_idx`(`userid`),
  INDEX `pk_fap_2_idx`(`adminid`),
  INDEX `pk_fap_3_idx`(`carid`),
  CONSTRAINT `pk_fap_1` FOREIGN KEY (`userid`) REFERENCES `staff` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `pk_fap_2` FOREIGN KEY (`adminid`) REFERENCES `administrator` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `pk_fap_3` FOREIGN KEY (`carid`) REFERENCES `car` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
)
-- ----------------------------
-- Table structure for lendapplication
-- ----------------------------
CREATE TABLE `lendapplication`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45),
  `userid` int NULL DEFAULT NULL,
  `carid` int NULL DEFAULT NULL,
  `remarks` varchar(200),
  `adminid` int NULL DEFAULT NULL,
  `Bname` varchar(45),
  `BDepartment` varchar(45),
  `SD` datetime(0) NULL DEFAULT NULL,
  `date` datetime(0) NULL DEFAULT NULL,
  `status` varchar(10),
  `LP` varchar(45),
  PRIMARY KEY (`id`),
  INDEX `pk_lap_1_idx`(`userid`),
  INDEX `pk_lap_2_idx`(`adminid`),
  INDEX `pk_lap_3_idx`(`carid`),
  CONSTRAINT `pk_lap_1` FOREIGN KEY (`userid`) REFERENCES `staff` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `pk_lap_2` FOREIGN KEY (`adminid`) REFERENCES `administrator` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `pk_lap_3` FOREIGN KEY (`carid`) REFERENCES `car` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
)

-- ----------------------------
-- Table structure for notification
-- ----------------------------
CREATE TABLE `notification`(
  `id` int NOT NULL,
  `title` varchar(45),
  `level` varchar(45),
  `type` varchar(45),
  `remarks` varchar(200),
  `recipient` varchar(45),
  `sender` varchar(45),
  `time` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`)  
)  

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff`  (
  `id` int NOT NULL,
  `password` varchar(20),
  `name` varchar(20),
  `sex` varchar(2),
  `age` int NULL DEFAULT NULL,
  `email` varchar(45),
  `department` varchar(45),
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`)  
) 
