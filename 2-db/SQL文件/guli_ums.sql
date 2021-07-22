/*
Navicat MySQL Data Transfer

Source Server         : centos
Source Server Version : 50716
Source Host           : 172.16.116.100:3306
Source Database       : guli_ums

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2020-05-12 22:04:26
*/

CREATE DATABASE /*!32312 IF NOT EXISTS*/`guli_ums` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `guli_ums`;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ums_growth_history
-- ----------------------------
DROP TABLE IF EXISTS `ums_growth_history`;
CREATE TABLE `ums_growth_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` bigint(20) DEFAULT NULL COMMENT '�û�id',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `count` int(11) DEFAULT NULL COMMENT '�䶯����',
  `remark` varchar(0) DEFAULT NULL COMMENT '��ע',
  `source_type` tinyint(4) DEFAULT NULL COMMENT '��Դ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�ɳ����ּ�¼��';

-- ----------------------------
-- Records of ums_growth_history
-- ----------------------------

-- ----------------------------
-- Table structure for ums_integration_history
-- ----------------------------
DROP TABLE IF EXISTS `ums_integration_history`;
CREATE TABLE `ums_integration_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` bigint(20) DEFAULT NULL COMMENT 'member_id',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `count` int(11) DEFAULT NULL COMMENT '�䶯����',
  `remark` varchar(255) DEFAULT NULL COMMENT '��ע',
  `source_type` tinyint(4) DEFAULT NULL COMMENT '��Դ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='������ּ�¼��';

-- ----------------------------
-- Records of ums_integration_history
-- ----------------------------

-- ----------------------------
-- Table structure for ums_user
-- ----------------------------
DROP TABLE IF EXISTS `ums_user`;
CREATE TABLE `ums_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `level_id` bigint(20) DEFAULT NULL COMMENT '??????id',
  `username` char(64) DEFAULT NULL COMMENT '�û���',
  `password` varchar(64) DEFAULT NULL COMMENT '����',
  `salt` varchar(64) DEFAULT NULL COMMENT '��',
  `nickname` varchar(64) DEFAULT NULL COMMENT '�ǳ�',
  `phone` varchar(20) DEFAULT NULL COMMENT '�ֻ���',
  `email` varchar(64) DEFAULT NULL COMMENT '����',
  `header` varchar(500) DEFAULT NULL COMMENT 'ͷ��',
  `gender` tinyint(4) DEFAULT NULL COMMENT '�Ա�',
  `birthday` date DEFAULT NULL COMMENT '����',
  `city` varchar(500) DEFAULT NULL COMMENT '����',
  `job` varchar(255) DEFAULT NULL COMMENT 'ְҵ',
  `sign` varchar(255) DEFAULT NULL COMMENT '����ǩ��',
  `source_type` tinyint(4) DEFAULT NULL COMMENT '��Դ',
  `integration` int(11) DEFAULT NULL COMMENT '�������',
  `growth` int(11) DEFAULT NULL COMMENT '���ͻ���',
  `status` tinyint(4) DEFAULT NULL COMMENT '״̬',
  `create_time` datetime DEFAULT NULL COMMENT 'ע��ʱ��',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='�û���';

-- ----------------------------
-- Records of ums_user
-- ----------------------------
INSERT INTO `ums_user` VALUES ('1', '1', 'liuyan', '123456', null, '����', '13888888888', '88@qq.com', null, '1', '2020-04-05', '�Ϻ�', '����Ա', null, '1', '1000', '2000', '1', '2020-04-05 20:03:25');
INSERT INTO `ums_user` VALUES ('2', '1', 'xiaolu', 'c2be06f23d08fa4d7a5ef214887ab3c4', '74a85273dfec463386411f35647ee948', null, '18666666666', '66@qq.com', null, null, null, null, null, null, null, '2000', '2000', '1', '2020-04-05 20:24:08');

-- ----------------------------
-- Table structure for ums_user_address
-- ----------------------------
DROP TABLE IF EXISTS `ums_user_address`;
CREATE TABLE `ums_user_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` bigint(20) DEFAULT NULL COMMENT 'member_id',
  `name` varchar(255) DEFAULT NULL COMMENT '�ջ���',
  `phone` varchar(64) DEFAULT NULL COMMENT '�绰',
  `post_code` varchar(64) DEFAULT NULL COMMENT '�ұ�',
  `province` varchar(100) DEFAULT NULL COMMENT 'ʡ��',
  `city` varchar(100) DEFAULT NULL COMMENT '����',
  `region` varchar(100) DEFAULT NULL COMMENT '��',
  `address` varchar(255) DEFAULT NULL COMMENT '��ϸ��ַ',
  `default_status` tinyint(1) DEFAULT NULL COMMENT '�Ƿ�Ĭ�ϵ�ַ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='�ջ���ַ��';

-- ----------------------------
-- Records of ums_user_address
-- ----------------------------
INSERT INTO `ums_user_address` VALUES ('1', '2', '����', '13812345678', '200122', '�Ϻ�', '�Ϻ���', '�ɽ���', '������6��', '1');
INSERT INTO `ums_user_address` VALUES ('2', '2', '���', '18612345678', '200112', '����', '������', '��ƽ��', '�긣�Ƽ�԰', '0');

-- ----------------------------
-- Table structure for ums_user_collect_shop
-- ----------------------------
DROP TABLE IF EXISTS `ums_user_collect_shop`;
CREATE TABLE `ums_user_collect_shop` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL COMMENT '�û�id',
  `shop_id` bigint(20) DEFAULT NULL COMMENT '����id',
  `shop_name` varchar(50) DEFAULT NULL COMMENT '������',
  `shop_logo` varchar(100) DEFAULT NULL COMMENT '����logo',
  `createTime` datetime DEFAULT NULL COMMENT '��עʱ��',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��ע���̱�';

-- ----------------------------
-- Records of ums_user_collect_shop
-- ----------------------------

-- ----------------------------
-- Table structure for ums_user_collect_sku
-- ----------------------------
DROP TABLE IF EXISTS `ums_user_collect_sku`;
CREATE TABLE `ums_user_collect_sku` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `user_id` bigint(20) DEFAULT NULL COMMENT '�û�id',
  `sku_id` bigint(20) DEFAULT NULL COMMENT 'sku_id',
  `sku_title` varchar(500) DEFAULT NULL COMMENT 'sku����',
  `sku_image` varchar(500) DEFAULT NULL COMMENT 'skuĬ��ͼƬ',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��ע��Ʒ��';

-- ----------------------------
-- Records of ums_user_collect_sku
-- ----------------------------

-- ----------------------------
-- Table structure for ums_user_collect_subject
-- ----------------------------
DROP TABLE IF EXISTS `ums_user_collect_subject`;
CREATE TABLE `ums_user_collect_subject` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(11) DEFAULT NULL COMMENT '�û�id',
  `subject_id` bigint(20) DEFAULT NULL COMMENT '�id',
  `subject_name` varchar(255) DEFAULT NULL COMMENT '�����',
  `subject_image` varchar(500) DEFAULT NULL COMMENT '�Ĭ��ͼƬ',
  `subject_url` varchar(500) DEFAULT NULL COMMENT '�����',
  `create_time` datetime DEFAULT NULL COMMENT '��עʱ��',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��ע���';

-- ----------------------------
-- Records of ums_user_collect_subject
-- ----------------------------

-- ----------------------------
-- Table structure for ums_user_level
-- ----------------------------
DROP TABLE IF EXISTS `ums_user_level`;
CREATE TABLE `ums_user_level` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(100) DEFAULT NULL COMMENT '�ȼ�����',
  `growth_point` int(11) DEFAULT NULL COMMENT '�ȼ���Ҫ�ĳɳ�ֵ',
  `default_status` tinyint(4) DEFAULT NULL COMMENT 'Ĭ�ϵȼ�',
  `free_freight_point` decimal(18,4) DEFAULT NULL COMMENT '���˷ѱ�׼',
  `comment_growth_point` int(11) DEFAULT NULL COMMENT 'ÿ�����ۻ�ȡ�ĳɳ�ֵ',
  `priviledge_free_freight` tinyint(4) DEFAULT NULL COMMENT '�Ƿ���������Ȩ',
  `priviledge_member_price` tinyint(4) DEFAULT NULL COMMENT '�Ƿ��л�Ա�۸���Ȩ',
  `priviledge_birthday` tinyint(4) DEFAULT NULL COMMENT '�Ƿ���������Ȩ',
  `remark` varchar(255) DEFAULT NULL COMMENT '��ע',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��Ա�ȼ���';

-- ----------------------------
-- Records of ums_user_level
-- ----------------------------

-- ----------------------------
-- Table structure for ums_user_login_log
-- ----------------------------
DROP TABLE IF EXISTS `ums_user_login_log`;
CREATE TABLE `ums_user_login_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` bigint(20) DEFAULT NULL COMMENT '�û�id',
  `create_time` datetime DEFAULT NULL COMMENT '��½ʱ��',
  `ip` varchar(64) DEFAULT NULL COMMENT '��¼ip',
  `city` varchar(64) DEFAULT NULL COMMENT '��¼����',
  `type` tinyint(1) DEFAULT NULL COMMENT '��¼���͡�0-web��1-�ƶ���',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�û���½��¼��';

-- ----------------------------
-- Records of ums_user_login_log
-- ----------------------------

-- ----------------------------
-- Table structure for ums_user_statistics
-- ----------------------------
DROP TABLE IF EXISTS `ums_user_statistics`;
CREATE TABLE `ums_user_statistics` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` bigint(20) DEFAULT NULL COMMENT '�û�id',
  `consume_amount` decimal(18,4) DEFAULT NULL COMMENT '�ۼ����ѽ��',
  `coupon_amount` decimal(18,4) DEFAULT NULL COMMENT '�ۼ��Żݽ��',
  `order_count` int(11) DEFAULT NULL COMMENT '��������',
  `coupon_count` int(11) DEFAULT NULL COMMENT '�Ż�ȯ����',
  `comment_count` int(11) DEFAULT NULL COMMENT '������',
  `return_order_count` int(11) DEFAULT NULL COMMENT '�˻�����',
  `login_count` int(11) DEFAULT NULL COMMENT '��¼����',
  `attend_count` int(11) DEFAULT NULL COMMENT '��ע����',
  `fans_count` int(11) DEFAULT NULL COMMENT '��˿����',
  `collect_product_count` int(11) DEFAULT NULL COMMENT '�ղص���Ʒ����',
  `collect_subject_count` int(11) DEFAULT NULL COMMENT '�ղص�ר������',
  `collect_comment_count` int(11) DEFAULT NULL COMMENT '�ղص���������',
  `invite_friend_count` int(11) DEFAULT NULL COMMENT '�������������',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ͳ����Ϣ��';

-- ----------------------------
-- Records of ums_user_statistics
-- ----------------------------
