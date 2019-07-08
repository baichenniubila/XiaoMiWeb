/*
Navicat MySQL Data Transfer

Source Server         : xbc
Source Server Version : 50015
Source Host           : localhost:3306
Source Database       : test2

Target Server Type    : MYSQL
Target Server Version : 50015
File Encoding         : 65001

Date: 2019-07-08 09:51:14
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `address`
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `userid` int(11) NOT NULL auto_increment,
  `shouhuoname` varchar(255) default NULL,
  `shouhuodianhua` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of address
-- ----------------------------

-- ----------------------------
-- Table structure for `dingdan`
-- ----------------------------
DROP TABLE IF EXISTS `dingdan`;
CREATE TABLE `dingdan` (
  `dingdanid` int(11) NOT NULL,
  `dingdanstate` varchar(255) default NULL,
  `settime` varchar(255) default NULL,
  `userid` int(11) default NULL,
  `phoneid` int(11) default NULL,
  `shangpinnumber` int(11) default NULL,
  `totalprice` int(11) default NULL,
  PRIMARY KEY  (`dingdanid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dingdan
-- ----------------------------

-- ----------------------------
-- Table structure for `gouwuche`
-- ----------------------------
DROP TABLE IF EXISTS `gouwuche`;
CREATE TABLE `gouwuche` (
  `userid` int(11) NOT NULL,
  `gouwucheid` int(11) default NULL,
  `shangpinname` varchar(255) default NULL,
  `danjia` int(11) default NULL,
  `number` int(11) default NULL,
  `sum` int(11) default NULL,
  PRIMARY KEY  (`userid`),
  CONSTRAINT `GU` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gouwuche
-- ----------------------------

-- ----------------------------
-- Table structure for `phone`
-- ----------------------------
DROP TABLE IF EXISTS `phone`;
CREATE TABLE `phone` (
  `phoneid` int(11) NOT NULL,
  `phonename` varchar(255) NOT NULL,
  `edition` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `profile` varchar(255) default NULL,
  `outline` varchar(255) default NULL,
  PRIMARY KEY  (`phoneid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of phone
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int(11) NOT NULL auto_increment,
  `account` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) default NULL,
  `hobby` varchar(255) default NULL,
  `dianhua` varchar(255) default NULL,
  `motto` varchar(255) default NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
