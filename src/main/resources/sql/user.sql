/*
Navicat MySQL Data Transfer

Source Server         : 开发
Source Server Version : 50723
Source Host           : 10.10.10.207:3306
Source Database       : my_test

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2019-04-04 16:11:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `login_name` varchar(36) DEFAULT NULL COMMENT '登录名',
  `nick_name` varchar(40) DEFAULT NULL COMMENT '昵称',
  `icon` varchar(2000) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL COMMENT '密码',
  `salt` varchar(40) DEFAULT NULL COMMENT 'shiro加密盐',
  `tel` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱地址',
  `locked` tinyint(2) DEFAULT NULL COMMENT '是否锁定',
  `create_date` datetime DEFAULT NULL,
  `create_by` bigint(20) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` bigint(20) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `del_flag` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'test', '管理员', 'https://static.mysiteforme.com/04ea0ce0-e53b-4eb3-b1ea-dc316063d29f.jpg', 'a14f4e8b29cec09dcb8eac79014f23f0b0507278', '702912c07fc975ab', '13776055179', 'b@qq.com', '0', '2017-11-27 22:19:39', '1', '2018-02-08 14:01:07', '1', '', '0');
INSERT INTO `sys_user` VALUES ('2', 'admin', '系统管理员', null, 'f7820971b7239cbb1cbd588e57594484b0d59de1', '825594556c13cabf', '', '', '0', '2019-03-29 16:53:21', '1', '2019-03-29 16:53:21', '1', null, '0');
