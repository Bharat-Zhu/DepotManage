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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT '用户信息表';

-- ----------------------------
-- Records of cbd_user
-- ----------------------------
INSERT INTO `cbd_user` VALUES ('1', 'C00001', 'c00001', '朱保行', 'zbh@sina.cn', '1993-01-01', '1', '18700001234', '0', '1', '2018-04-01 17:19:27', '1', '2018-04-01 17:19:27');

-- ----------------------------
-- Table structure for cm_authority_relation
-- ----------------------------
DROP TABLE IF EXISTS `cm_authority_relation`;
CREATE TABLE `cm_authority_relation` (
  `authority_id` int(11) NOT NULL COMMENT '权限ID',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  PRIMARY KEY (`authority_id`,`user_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `authority_id` FOREIGN KEY (`authority_id`) REFERENCES `mbd_authority` (`id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `cbd_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '用户和权限关联表';

-- ----------------------------
-- Records of cm_authority_relation
-- ----------------------------
INSERT INTO `cm_authority_relation` VALUES ('1', '1');

-- ----------------------------
-- Table structure for mbd_authority
-- ----------------------------
DROP TABLE IF EXISTS `mbd_authority`;
CREATE TABLE `mbd_authority` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` int(11) NOT NULL COMMENT '权限key',
  `value` varchar(255) NOT NULL COMMENT '权限名字',
  `del_flg` smallint(6) NOT NULL DEFAULT '0' COMMENT '删除FLG',
  `creator_id` int(11) NOT NULL COMMENT '创建者ID',
  `create_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater_id` int(11) DEFAULT NULL COMMENT '更新者ID',
  `update_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT '权限表';

-- ----------------------------
-- Records of mbd_authority
-- ----------------------------
INSERT INTO `mbd_authority` VALUES ('1', '1', '管理员');
INSERT INTO `mbd_authority` VALUES ('2', '2', '部门');
INSERT INTO `mbd_authority` VALUES ('3', '3', '领导');
INSERT INTO `mbd_authority` VALUES ('4', '4', '一般');
