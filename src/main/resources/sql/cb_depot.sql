-- ----------------------------
-- Table structure for cbd_user
-- ----------------------------
DROP TABLE IF EXISTS `cbd_user`;
CREATE TABLE `cbd_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_number` varchar(6) NOT NULL COMMENT '登录帐号',
  `user_pwd` varchar(100) NOT NULL COMMENT '密码',
  `user_name` varchar(255) NOT NULL COMMENT '姓名',
  `email` varchar(255) NOT NULL COMMENT '邮箱',
  `birth` date DEFAULT NULL COMMENT '出生日期',
  `sex` varchar(1) DEFAULT NULL COMMENT '性别',
  `phone` varchar(11) NOT NULL COMMENT '手机号码',
  `del_flg` smallint(6) NOT NULL DEFAULT '0' COMMENT '删除FLG',
  `creator_id` int(11) NOT NULL COMMENT '创建者ID',
  `create_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater_id` int(11) DEFAULT NULL COMMENT '更新者ID',
  `update_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_number_index` (`user_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cbd_user
-- ----------------------------
INSERT INTO `cbd_user` VALUES ('1', 'C00001', 'c00001', '张三', 'San_Zhang@sina.cn', '1993-01-01', '1', '18700001234', '0', '1', NOW(), '1', NOW());

-- ----------------------------
-- Table structure for cdb_member
-- ----------------------------
DROP TABLE IF EXISTS `cdb_member`;
CREATE TABLE `cdb_member` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '登录者ID',
  `member_name` varchar(255) NOT NULL COMMENT '登录名',
  `member_account` varchar(255) NOT NULL COMMENT '登录帐号',
  `member_pwd` varchar(255) NOT NULL COMMENT '登录密码',
  `authority_id` int(11) NOT NULL COMMENT '权限ID',
  `del_flg` smallint(6) NOT NULL DEFAULT '0' COMMENT '删除FLG',
  `creator_id` int(11) NOT NULL COMMENT '创建者ID',
  `create_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater_id` int(11) DEFAULT NULL COMMENT '更新者ID',
  `update_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cdb_member
-- ----------------------------
INSERT INTO `cdb_member` VALUES ('1', '管理员', 'admin', 'admin', '1', '0', '0', NOW(), '0', NOW());

-- ----------------------------
-- Table structure for mbd_authority
-- ----------------------------
DROP TABLE IF EXISTS `mbd_authority`;
CREATE TABLE `mbd_authority` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '权限ID',
  `name` varchar(255) NOT NULL COMMENT '权限名字',
  `rank` smallint(6) NOT NULL COMMENT '排序',
  `del_flg` smallint(6) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL,
  `create_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updater_id` int(11) DEFAULT NULL,
  `update_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mbd_authority
-- ----------------------------
INSERT INTO `mbd_authority` VALUES ('1', '管理员', '0', '0', '1', NOW(), '1', NOW());
