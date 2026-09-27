DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`(
	   `customer_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '顾客ID',
`full_name` varchar(64) comment '姓名',
`gender` varchar(64) comment '性别',
`personal_introduction` varchar(64) comment '个人介绍',
`examine_state` varchar(16) DEFAULT '已通过' NOT NULL comment '审核状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`user_id` int(11) DEFAULT '0' NOT NULL comment '用户ID',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (customer_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '顾客';

DROP TABLE IF EXISTS `rider`;
CREATE TABLE `rider`(
	   `rider_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '骑手ID',
`rider_number` varchar(64) NOT NULL UNIQUE comment '骑手编号',
`rider_name` varchar(64) comment '骑手姓名',
`gender` varchar(64) comment '性别',
`id` varchar(255) comment '身份证',
`examine_state` varchar(16) DEFAULT '已通过' NOT NULL comment '审核状态',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`user_id` int(11) DEFAULT '0' NOT NULL comment '用户ID',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (rider_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '骑手';

DROP TABLE IF EXISTS `commodity_management`;
CREATE TABLE `commodity_management`(
	   `commodity_management_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品管理ID',
`remarks` varchar(64) comment '备注',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`cart_title` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题：[0,125]用于产品html的标签中',
`cart_img` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '封面图：用于显示于产品列表页',
`cart_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述：[0,255]用于产品规格描述',
`cart_price_ago` double(8, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '原价：[1]',
`cart_price` double(8, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '卖价：[1]',
`cart_inventory` int(11) UNSIGNED ZEROFILL NOT NULL DEFAULT 00000000000 COMMENT '商品库存',
`cart_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '未分类' COMMENT '商品分类：',
`cart_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '正文：产品的主体内容',
`cart_img_1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '主图1：',
`cart_img_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '主图2：',
`cart_img_3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '主图3：',
`cart_img_4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '主图4：',
`cart_img_5` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '主图5：',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (commodity_management_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '商品管理';
insert into `commodity_management` values (1,'备注1','0','商品名称1','点此播放','商品描述1','776','602','164','商品分类1','此处可上传文字、图片、视频、超链接、表格等内容区1','点此播放','点此播放','点此播放','点此播放','点此播放','2022-03-23 20:47:23','2022-03-23 20:47:23');
insert into `commodity_management` values (2,'备注2','0','商品名称2','点此播放','商品描述2','873','110','492','商品分类2','此处可上传文字、图片、视频、超链接、表格等内容区2','点此播放','点此播放','点此播放','点此播放','点此播放','2022-03-23 20:47:23','2022-03-23 20:47:23');
insert into `commodity_management` values (3,'备注3','0','商品名称3','点此播放','商品描述3','361','655','62','商品分类3','此处可上传文字、图片、视频、超链接、表格等内容区3','点此播放','点此播放','点此播放','点此播放','点此播放','2022-03-23 20:47:23','2022-03-23 20:47:23');
insert into `commodity_management` values (4,'备注4','0','商品名称4','点此播放','商品描述4','991','86','730','商品分类4','此处可上传文字、图片、视频、超链接、表格等内容区4','点此播放','点此播放','点此播放','点此播放','点此播放','2022-03-23 20:47:23','2022-03-23 20:47:23');
insert into `commodity_management` values (5,'备注5','0','商品名称5','点此播放','商品描述5','656','14','18','商品分类5','此处可上传文字、图片、视频、超链接、表格等内容区5','点此播放','点此播放','点此播放','点此播放','点此播放','2022-03-23 20:47:23','2022-03-23 20:47:23');
insert into `commodity_management` values (6,'备注6','0','商品名称6','点此播放','商品描述6','945','890','172','商品分类6','此处可上传文字、图片、视频、超链接、表格等内容区6','点此播放','点此播放','点此播放','点此播放','点此播放','2022-03-23 20:47:23','2022-03-23 20:47:23');
insert into `commodity_management` values (7,'备注7','0','商品名称7','点此播放','商品描述7','136','63','599','商品分类7','此处可上传文字、图片、视频、超链接、表格等内容区7','点此播放','点此播放','点此播放','点此播放','点此播放','2022-03-23 20:47:23','2022-03-23 20:47:23');
insert into `commodity_management` values (8,'备注8','0','商品名称8','点此播放','商品描述8','903','655','273','商品分类8','此处可上传文字、图片、视频、超链接、表格等内容区8','点此播放','点此播放','点此播放','点此播放','点此播放','2022-03-23 20:47:23','2022-03-23 20:47:23');

DROP TABLE IF EXISTS `errand_order`;
CREATE TABLE `errand_order`(
	   `errand_order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '跑腿订单ID',
`order_number` varchar(64) comment '订单编号',
`item_name` varchar(64) comment '物品名称',
`item_type` varchar(64) comment '物品类型',
`delivery_address` varchar(64) comment '代送地址',
`article_weight` varchar(64) comment '物品重量',
`running_expenses` varchar(64) comment '跑腿费用',
`consignee` int(11) DEFAULT 0 comment '收货人',
`full_name` varchar(64) comment '姓名',
`contact_information` varchar(64) comment '联系方式',
`number_of_orders` varchar(64) comment '订单数',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (errand_order_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '跑腿订单';
insert into `errand_order` values (1,'订单编号1','物品名称1','物品类型1','代送地址1','物品重量1','跑腿费用1',0,'姓名1','联系方式1','订单数1','0','2022-03-23 20:47:23','2022-03-23 20:47:23');
insert into `errand_order` values (2,'订单编号2','物品名称2','物品类型2','代送地址2','物品重量2','跑腿费用2',0,'姓名2','联系方式2','订单数2','0','2022-03-23 20:47:23','2022-03-23 20:47:23');
insert into `errand_order` values (3,'订单编号3','物品名称3','物品类型3','代送地址3','物品重量3','跑腿费用3',0,'姓名3','联系方式3','订单数3','0','2022-03-23 20:47:23','2022-03-23 20:47:23');
insert into `errand_order` values (4,'订单编号4','物品名称4','物品类型4','代送地址4','物品重量4','跑腿费用4',0,'姓名4','联系方式4','订单数4','0','2022-03-23 20:47:23','2022-03-23 20:47:23');
insert into `errand_order` values (5,'订单编号5','物品名称5','物品类型5','代送地址5','物品重量5','跑腿费用5',0,'姓名5','联系方式5','订单数5','0','2022-03-23 20:47:23','2022-03-23 20:47:23');
insert into `errand_order` values (6,'订单编号6','物品名称6','物品类型6','代送地址6','物品重量6','跑腿费用6',0,'姓名6','联系方式6','订单数6','0','2022-03-23 20:47:23','2022-03-23 20:47:23');
insert into `errand_order` values (7,'订单编号7','物品名称7','物品类型7','代送地址7','物品重量7','跑腿费用7',0,'姓名7','联系方式7','订单数7','0','2022-03-23 20:47:23','2022-03-23 20:47:23');
insert into `errand_order` values (8,'订单编号8','物品名称8','物品类型8','代送地址8','物品重量8','跑腿费用8',0,'姓名8','联系方式8','订单数8','0','2022-03-23 20:47:23','2022-03-23 20:47:23');

DROP TABLE IF EXISTS `distribution_information`;
CREATE TABLE `distribution_information`(
	   `distribution_information_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '配送信息ID',
`order_number` varchar(64) comment '订单编号',
`item_name` varchar(64) comment '物品名称',
`item_type` varchar(64) comment '物品类型',
`delivery_address` varchar(64) comment '代送地址',
`article_weight` varchar(64) comment '物品重量',
`running_expenses` varchar(64) comment '跑腿费用',
`consignee` int(11) DEFAULT 0 comment '收货人',
`full_name` varchar(64) comment '姓名',
`contact_information` varchar(64) comment '联系方式',
`rider_number` int(11) DEFAULT 0 comment '骑手编号',
`rider_name` varchar(64) comment '骑手姓名',
`distribution_status` varchar(64) comment '配送状态',
`order_receiving_quantity` varchar(64) comment '接单数量',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (distribution_information_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '配送信息';
insert into `distribution_information` values (1,'订单编号1','物品名称1','物品类型1','代送地址1','物品重量1','跑腿费用1',0,'姓名1','联系方式1',0,'骑手姓名1','配送状态1','接单数量1','0','2022-03-23 20:47:23','2022-03-23 20:47:23');
insert into `distribution_information` values (2,'订单编号2','物品名称2','物品类型2','代送地址2','物品重量2','跑腿费用2',0,'姓名2','联系方式2',0,'骑手姓名2','配送状态2','接单数量2','0','2022-03-23 20:47:23','2022-03-23 20:47:23');
insert into `distribution_information` values (3,'订单编号3','物品名称3','物品类型3','代送地址3','物品重量3','跑腿费用3',0,'姓名3','联系方式3',0,'骑手姓名3','配送状态3','接单数量3','0','2022-03-23 20:47:23','2022-03-23 20:47:23');
insert into `distribution_information` values (4,'订单编号4','物品名称4','物品类型4','代送地址4','物品重量4','跑腿费用4',0,'姓名4','联系方式4',0,'骑手姓名4','配送状态4','接单数量4','0','2022-03-23 20:47:23','2022-03-23 20:47:23');
insert into `distribution_information` values (5,'订单编号5','物品名称5','物品类型5','代送地址5','物品重量5','跑腿费用5',0,'姓名5','联系方式5',0,'骑手姓名5','配送状态5','接单数量5','0','2022-03-23 20:47:23','2022-03-23 20:47:23');
insert into `distribution_information` values (6,'订单编号6','物品名称6','物品类型6','代送地址6','物品重量6','跑腿费用6',0,'姓名6','联系方式6',0,'骑手姓名6','配送状态6','接单数量6','0','2022-03-23 20:47:23','2022-03-23 20:47:23');
insert into `distribution_information` values (7,'订单编号7','物品名称7','物品类型7','代送地址7','物品重量7','跑腿费用7',0,'姓名7','联系方式7',0,'骑手姓名7','配送状态7','接单数量7','0','2022-03-23 20:47:23','2022-03-23 20:47:23');
insert into `distribution_information` values (8,'订单编号8','物品名称8','物品类型8','代送地址8','物品重量8','跑腿费用8',0,'姓名8','联系方式8',0,'骑手姓名8','配送状态8','接单数量8','0','2022-03-23 20:47:23','2022-03-23 20:47:23');

DROP TABLE IF EXISTS `distribution_evaluation`;
CREATE TABLE `distribution_evaluation`(
	   `distribution_evaluation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '配送评价ID',
`order_number` varchar(64) comment '订单编号',
`item_name` varchar(64) comment '物品名称',
`consignee` int(11) DEFAULT 0 comment '收货人',
`full_name` varchar(64) comment '姓名',
`rider_number` int(11) DEFAULT 0 comment '骑手编号',
`rider_name` varchar(64) comment '骑手姓名',
`distribution_status` varchar(64) comment '配送状态',
`rider_rating` varchar(64) comment '骑手评分',
`evaluation_content` text comment '评价内容',
`recommend` int(11) DEFAULT '0' NOT NULL comment '智能推荐',
`create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',

	   PRIMARY KEY (distribution_evaluation_id)
	)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '配送评价';
insert into `distribution_evaluation` values (1,'订单编号1','物品名称1',0,'姓名1',0,'骑手姓名1','配送状态1','骑手评分1','评价内容1','0','2022-03-23 20:47:23','2022-03-23 20:47:23');
insert into `distribution_evaluation` values (2,'订单编号2','物品名称2',0,'姓名2',0,'骑手姓名2','配送状态2','骑手评分2','评价内容2','0','2022-03-23 20:47:23','2022-03-23 20:47:23');
insert into `distribution_evaluation` values (3,'订单编号3','物品名称3',0,'姓名3',0,'骑手姓名3','配送状态3','骑手评分3','评价内容3','0','2022-03-23 20:47:23','2022-03-23 20:47:23');
insert into `distribution_evaluation` values (4,'订单编号4','物品名称4',0,'姓名4',0,'骑手姓名4','配送状态4','骑手评分4','评价内容4','0','2022-03-23 20:47:23','2022-03-23 20:47:23');
insert into `distribution_evaluation` values (5,'订单编号5','物品名称5',0,'姓名5',0,'骑手姓名5','配送状态5','骑手评分5','评价内容5','0','2022-03-23 20:47:23','2022-03-23 20:47:23');
insert into `distribution_evaluation` values (6,'订单编号6','物品名称6',0,'姓名6',0,'骑手姓名6','配送状态6','骑手评分6','评价内容6','0','2022-03-23 20:47:23','2022-03-23 20:47:23');
insert into `distribution_evaluation` values (7,'订单编号7','物品名称7',0,'姓名7',0,'骑手姓名7','配送状态7','骑手评分7','评价内容7','0','2022-03-23 20:47:23','2022-03-23 20:47:23');
insert into `distribution_evaluation` values (8,'订单编号8','物品名称8',0,'姓名8',0,'骑手姓名8','配送状态8','骑手评分8','评价内容8','0','2022-03-23 20:47:23','2022-03-23 20:47:23');

DROP TABLE IF EXISTS `access_token`;
CREATE TABLE `access_token` (
  `token_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '临时访问牌ID',
  `token` varchar(64) DEFAULT NULL COMMENT '临时访问牌',
  `info` text,
  `maxage` int(2) NOT NULL DEFAULT '2' COMMENT '最大寿命：默认2小时',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户编号:',
  PRIMARY KEY (`token_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='临时访问牌';
insert into `access_token` values ('57','5accf85cb6a7f06f0aa2968deadaec1b',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('58','46ff1d4d07714f046ba07b34bffe0af9',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('59','ed9d6cba9826fda1beafcd9326be7a86',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('60','c99763c1833ea0785d9e2b81da3fd28f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('61','33fbfaccd6d1cb9143e4129bd919d4b0',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('62','493e13da5f293ba67a56a0fe3e1fa6cf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('63','c4b48e9e2160db09c703041a8fee0a1f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('64','d13cdaefd3823c360c959a02a262f71d',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('65','6c6ff426fd77ea5a2025ce5ed2e42c8a',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('66','80930065a61ffcdd5cbb75f60932973c',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('67','94114763cf2e3b020495d8a27096d4ef',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('68','761052c551c97c9317bc3aa475c85b84',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('69','7c44ef14131a0ba7c16aa16cef104065',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('70','96380f3d9542c80d04bdade1cf7635a5',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('71','bfdc7acfcbf5763fda81945b60961222',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('72','170a598e51ae8ae2badde20a42fe171d',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('73','c82c357488c75926a92d8a9608d4b367',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('74','4d35290c023f407a820f37dbbb1ceb09',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('75','8d19162776682b695c0f62f3c7a92fec',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('76','a7ea2cdc9a2be179e19200e593ad5a69',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('77','c79a554f9832adc01f19682c5d576bc4',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('78','1c7d95001fa09951a679841c8100ad1f',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('79','776da1bcdd01ddb3cbf0a37fa13fc5b0',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('80','d336e88e57c329d0166931292c1fac41',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('81','37a40f526a6c82fc6110b512802d35bf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('82','691ad331771f4109206d58aeee572371',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('83','9942e458886219960d3344b4a6a6fbec',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('84','e9939a8b7ccf9f548f0bbb5664981f96',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('85','f5b27912060d1909bef61fab9d96faae',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('86','7c5888682f1d449eb1b62f0054a79fbf',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('87','00dfdc6ac21c4a9da80fd71c990764d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('88','3cce592bc72840ab932ce96d85a194da',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('89','43fdaa989a644ad683ef4b4d488e8629',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('90','d6a3cecadacff0dbd6b43b25372cc2a2',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('91','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('92','5570bc5b07b3589f4ef8553bd46eb0d1',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('93','26c553bd2ee2ab6605d18dfd310d85f9',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('94','3fd52f81236ed2c37ff91a6696d4e47a',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('95','893332e9ee67d60d8312b3700c58a359',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('96','b7844068ade535b2e517df4a40948703',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('97','179b37a5e1893c3af6b946bd5a1c8625',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('98','3a47b8a040a83ebbc9194cb255dc668c',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('99','afa60196afb77dcc2b520ed13a817560',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
insert into `access_token` values ('100','7fc6d9b324f8c0a3a1784d04ef132692',null,'2',"2022-01-14 07:32:09.000 ","2022-01-14 07:32:09.000 ",'1');
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `address_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '收货地址：',
  `name` varchar(32) DEFAULT NULL COMMENT '姓名：',
  `phone` varchar(13) DEFAULT NULL COMMENT '手机：',
  `postcode` varchar(8) DEFAULT NULL COMMENT '邮编：',
  `address` varchar(255) NOT NULL COMMENT '地址：',
  `user_id` mediumint(8) unsigned NOT NULL COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `default` tinyint(1) NOT NULL DEFAULT '0' COMMENT '默认判断',
  PRIMARY KEY (`address_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='收货地址：';
insert into `address` values ('3','田七','13590509090',null,'广州市越秀区东风西路187号','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'1');
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `article_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章id：[0,8388607]',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题：[0,125]用于文章和html的title标签中',
  `type` varchar(64) NOT NULL DEFAULT '0' COMMENT '文章分类：[0,1000]用来搜索指定类型的文章',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击数：[0,1000000000]访问这篇文章的人次',
  `praise_len` int(11) NOT NULL DEFAULT '0' COMMENT '点赞数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source` varchar(255) DEFAULT NULL COMMENT '来源：[0,255]文章的出处',
  `url` varchar(255) DEFAULT NULL COMMENT '来源地址：[0,255]用于跳转到发布该文章的网站',
  `tag` varchar(255) DEFAULT NULL COMMENT '标签：[0,255]用于标注文章所属相关内容，多个标签用空格隔开',
  `content` longtext COMMENT '正文：文章的主体内容',
  `img` varchar(255) DEFAULT NULL COMMENT '封面图',
  `description` text COMMENT '文章描述',
  PRIMARY KEY (`article_id`,`title`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文章：用于内容管理系统的文章';
DROP TABLE IF EXISTS `article_type`;
CREATE TABLE `article_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID：[0,10000]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]决定分类显示的先后顺序',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '分类名称：[2,16]',
  `father_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID：[0,32767]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该分类的作用',
  `icon` text COMMENT '分类图标：',
  `url` varchar(255) DEFAULT NULL COMMENT '外链地址：[0,255]如果该分类是跳转到其他网站的情况下，就在该URL上设置',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='文章频道：用于汇总浏览文章，在不同频道下展示不同文章。';
DROP TABLE IF EXISTS `auth`;
CREATE TABLE `auth` (
  `auth_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '授权ID：',
  `user_group` varchar(64) DEFAULT NULL COMMENT '用户组：',
  `mod_name` varchar(64) DEFAULT NULL COMMENT '模块名：',
  `table_name` varchar(64) DEFAULT NULL COMMENT '表名：',
  `page_title` varchar(255) DEFAULT NULL COMMENT '页面标题：',
  `path` varchar(255) DEFAULT NULL COMMENT '路由路径：',
  `position` varchar(32) DEFAULT NULL COMMENT '位置：',
  `mode` varchar(32) NOT NULL DEFAULT '_blank' COMMENT '跳转方式：',
  `add` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可增加：',
  `del` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可删除：',
  `set` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可修改：',
  `get` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可查看：',
  `field_add` varchar(500) DEFAULT NULL COMMENT '添加字段：',
  `field_set` varchar(500) DEFAULT NULL COMMENT '修改字段：',
  `field_get` varchar(500) DEFAULT NULL COMMENT '查询字段：',
  `table_nav_name` varchar(255) DEFAULT NULL COMMENT '跨表导航名称：',
  `table_nav` varchar(255) DEFAULT NULL COMMENT '跨表导航：',
  `option` text COMMENT '配置：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`auth_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='定制授权';
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cart_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '购物车ID：',
  `title` varchar(64) DEFAULT NULL COMMENT '标题：',
  `img` varchar(255) NOT NULL DEFAULT '0' COMMENT '图片：',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `state` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态：使用中，已失效',
  `price` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '单价：',
  `price_ago` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '原价：',
  `price_count` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '总价：',
  `num` int(8) unsigned NOT NULL DEFAULT '1' COMMENT '数量：',
  `goods_id` mediumint(8) unsigned NOT NULL COMMENT '商品id：[0,8388607]',
  `type` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '未分类' COMMENT '商品分类：',
  `description` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '描述：[0,255]用于产品规格描述',
  PRIMARY KEY (`cart_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='购物车：';
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `collect_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '收藏ID：',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏人ID：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `title` varchar(255) DEFAULT NULL COMMENT '标题：',
  `img` varchar(255) DEFAULT NULL COMMENT '封面：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`collect_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='收藏：';
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论人ID：',
  `reply_to_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '回复评论ID：空为0',
  `content` longtext COMMENT '内容：',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称：',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='评论：';
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goods_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '产品id：[0,8388607]',
  `title` varchar(125) DEFAULT NULL COMMENT '标题：[0,125]用于产品和html的<title>标签中',
  `img` text COMMENT '封面图：用于显示于产品列表页',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]用于产品规格描述',
  `price_ago` double(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '原价：[1]',
  `price` double(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '卖价：[1]',
  `customize_field` text COMMENT '自定义字段',
  `sales` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '销量：[0,1000000000]',
  `inventory` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000' COMMENT '商品库存',
  `type` varchar(64) NOT NULL DEFAULT '未分类' COMMENT '商品分类：',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击量：[0,1000000000]访问这篇产品的人次',
  `content` longtext COMMENT '正文：产品的主体内容',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `img_1` text COMMENT '主图1：',
  `img_2` text COMMENT '主图2：',
  `img_3` text COMMENT '主图3：',
  `img_4` text COMMENT '主图4：',
  `img_5` text COMMENT '主图5：',
  `source_table` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `user_id` int(11) DEFAULT NULL COMMENT '添加人',
  PRIMARY KEY (`goods_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='商品信息：';
DROP TABLE IF EXISTS `goods_type`;
CREATE TABLE `goods_type` (
  `type_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品分类ID：',
  `father_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID：[0,32767]',
  `name` varchar(255) DEFAULT NULL COMMENT '商品名称：',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述：',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `notice_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '公告id：',
  `title` varchar(125) NOT NULL DEFAULT '' COMMENT '标题：',
  `content` longtext COMMENT '正文：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='公告：';
insert into `notice` values ('1','公告标题1','公告，是指政府、团体对重大事件当众正式公布或者公开宣告，宣布。国务院2012年4月16日发布、2012年7月1日起施行的《党政机关公文处理工作条例》，对公告的使用表述为：“适用于向国内外宣布重要事项或者法定事项”。其中包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等。',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `notice` values ('2','公告标题2','公告，包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `notice` values ('3','公告标题3','公告，是指政府、团体对重大事件当众正式公布或者公开宣告，宣布。国务院2012年4月16日发布、2012年7月1日起施行的《党政机关公文处理工作条例》，对公告的使用表述为：“适用于向国内外宣布重要事项或者法定事项”。其中包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等。',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
insert into `notice` values ('4','公告标题4','公告，包含两方面的内容：一是向国内外宣布重要事项，公布依据政策、法令采取的重大行动等；二是向国内外宣布法定事项，公布依据法律规定告知国内外的有关重要规定和重大行动等',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ");
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单ID：',
  `order_number` varchar(64) DEFAULT NULL COMMENT '订单号：',
  `goods_id` mediumint(8) unsigned NOT NULL COMMENT '商品id：[0,8388607]',
  `title` varchar(32) DEFAULT NULL COMMENT '商品标题：',
  `img` varchar(255) DEFAULT NULL COMMENT '商品图片：',
  `price` double(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '价格：',
  `price_ago` double(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '原价：',
  `num` int(8) NOT NULL DEFAULT '1' COMMENT '数量：',
  `price_count` double(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '总价：',
  `norms` varchar(255) DEFAULT NULL COMMENT '规格：',
  `type` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '未分类' COMMENT '商品分类：',
  `contact_name` varchar(32) DEFAULT NULL COMMENT '联系人姓名：',
  `contact_email` varchar(125) DEFAULT NULL COMMENT '联系人邮箱：',
  `contact_phone` varchar(11) DEFAULT NULL COMMENT '联系人手机：',
  `contact_address` varchar(255) DEFAULT NULL COMMENT '收件地址：',
  `postal_code` varchar(9) DEFAULT NULL COMMENT '邮政编码：',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '买家ID：',
  `merchant_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '商家ID：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `description` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '描述：[0,255]用于产品规格描述',
  `state` varchar(16) NOT NULL DEFAULT '待付款' COMMENT '订单状态：待付款，待发货，待签收，已签收，待退款，已退款，已拒绝，已完成',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='订单：';
DROP TABLE IF EXISTS `praise`;
CREATE TABLE `praise` (
  `praise_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '点赞状态:1为点赞，0已取消',
  PRIMARY KEY (`praise_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='点赞：';
insert into `praise` values ('2','1',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('25','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','9','1');
insert into `praise` values ('26','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('27','5',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('44','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'forum','forum_id','2','1');
insert into `praise` values ('50','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'forum','forum_id','2','1');
insert into `praise` values ('54','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','9','1');
insert into `praise` values ('57','0',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','10','1');
insert into `praise` values ('86','0',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','6','1');
insert into `praise` values ('101','7',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','7','1');
insert into `praise` values ('108','2',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','8','1');
insert into `praise` values ('221','0',"2022-04-19 07:32:09.000 ","2022-04-19 07:32:09.000 ",'article','article_id','2','1');
DROP TABLE IF EXISTS `slides`;
CREATE TABLE `slides` (
  `slides_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '轮播图ID：',
  `title` varchar(64) DEFAULT NULL COMMENT '标题：',
  `content` varchar(255) DEFAULT NULL COMMENT '内容：',
  `url` varchar(255) DEFAULT NULL COMMENT '链接：',
  `img` varchar(255) DEFAULT NULL COMMENT '轮播图：',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击量：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`slides_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='轮播图：';
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '上传ID',
  `name` varchar(64) DEFAULT NULL COMMENT '文件名',
  `path` varchar(255) DEFAULT NULL COMMENT '访问路径',
  `file` varchar(255) DEFAULT NULL COMMENT '文件路径',
  `display` varchar(255) DEFAULT NULL COMMENT '显示顺序',
  `father_id` int(11) DEFAULT '0' COMMENT '父级ID',
  `dir` varchar(255) DEFAULT NULL COMMENT '文件夹',
  `type` varchar(32) DEFAULT NULL COMMENT '文件类型',
  PRIMARY KEY (`upload_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
insert into `upload` values ('1','movie.mp4','/upload/movie.mp4','',null,'0',null,'video');
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
  `state` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '账户状态：[0,10](1可用|2异常|3已冻结|4已注销)',
  `user_group` varchar(32) DEFAULT NULL COMMENT '所在用户组：[0,32767]决定用户身份和权限',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '上次登录时间：',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号码：[0,11]用户的手机号码，用于找回密码时或登录时',
  `phone_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '手机认证：[0,1](0未认证|1审核中|2已认证)',
  `username` varchar(16) NOT NULL DEFAULT '' COMMENT '用户名：[0,16]用户登录时所用的账户名称',
  `nickname` varchar(16) DEFAULT '' COMMENT '昵称：[0,16]',
  `password` varchar(64) NOT NULL DEFAULT '' COMMENT '密码：[0,32]用户登录所需的密码，由6-16位数字或英文组成',
  `email` varchar(64) DEFAULT '' COMMENT '邮箱：[0,64]用户的邮箱，用于找回密码时或登录时',
  `email_state` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '邮箱认证：[0,1](0未认证|1审核中|2已认证)',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户账户：用于保存用户登录信息';
insert into `user` values ('1','1','管理员',"2022-04-19 07:32:09.000 ",null,'0','admin','admin','bfd59291e825b5f2bbf1eb76569f8fe7','','0','/api/upload/avatar.jpg',"2022-04-19 07:32:09.000 ");
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组ID：[0,8388607]',
  `display` smallint(4) unsigned NOT NULL DEFAULT '100' COMMENT '显示顺序：[0,1000]',
  `name` varchar(16) NOT NULL DEFAULT '' COMMENT '名称：[0,16]',
  `description` varchar(255) DEFAULT NULL COMMENT '描述：[0,255]描述该用户组的特点或权限范围',
  `source_table` varchar(255) DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  `register` smallint(1) unsigned DEFAULT '0' COMMENT '注册位置:',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户组：用于用户前端身份和鉴权';
DROP TABLE IF EXISTS `hits`;
CREATE TABLE `hits` (
  `hits_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源字段：',
  `source_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '来源ID：',
  PRIMARY KEY (`hits_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
insert into `auth` values ('1','管理员','顾客','customer','顾客','/customer/table','','_blank','1','1','1','1','full_name,gender,personal_introduction','full_name,gender,personal_introduction','full_name,gender,personal_introduction',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('2','管理员','顾客','customer','顾客详情','/customer/view','','_blank','1','1','1','1','full_name,gender,personal_introduction','full_name,gender,personal_introduction','full_name,gender,personal_introduction',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('3','管理员','骑手','rider','骑手','/rider/table','','_blank','1','1','1','1','rider_number,rider_name,gender,id','rider_number,rider_name,gender,id','rider_number,rider_name,gender,id',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('4','管理员','骑手','rider','骑手详情','/rider/view','','_blank','1','1','1','1','rider_number,rider_name,gender,id','rider_number,rider_name,gender,id','rider_number,rider_name,gender,id',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('5','管理员','商品管理','commodity_management','商品管理','/commodity_management/table','','_blank','1','1','1','1','remarks','remarks','remarks',null,'0','{"can_show_comment":true}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('6','管理员','商品管理','commodity_management','商品管理详情','/commodity_management/view','','_blank','1','1','1','1','remarks','remarks','remarks',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('7','管理员','商品管理','commodity_management','商品管理','/commodity_management/list','','_blank','1','1','1','1','remarks','remarks','remarks',null,'0','{"cart_page":true}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('8','管理员','商品管理','commodity_management','商品管理详情','/commodity_management/details','','_blank','1','1','1','1','remarks','remarks','remarks',null,'0','{"can_show_comment":true,"can_comment":true,"cart_page":true}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('9','管理员','跑腿订单','errand_order','跑腿订单','/errand_order/table','','_blank','1','1','1','1','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('10','管理员','跑腿订单','errand_order','跑腿订单详情','/errand_order/view','','_blank','1','1','1','1','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('11','管理员','跑腿订单','errand_order','跑腿订单','/errand_order/list','top','_blank','1','1','1','1','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('12','管理员','跑腿订单','errand_order','跑腿订单详情','/errand_order/details','','_blank','1','1','1','1','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('13','管理员','配送信息','distribution_information','配送信息','/distribution_information/table','','_blank','1','1','1','1','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,rider_number,rider_name,distribution_status,order_receiving_quantity','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,rider_number,rider_name,distribution_status,order_receiving_quantity','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,rider_number,rider_name,distribution_status,order_receiving_quantity',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('14','管理员','配送信息','distribution_information','配送信息详情','/distribution_information/view','','_blank','1','1','1','1','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,rider_number,rider_name,distribution_status,order_receiving_quantity','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,rider_number,rider_name,distribution_status,order_receiving_quantity','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,rider_number,rider_name,distribution_status,order_receiving_quantity',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('15','管理员','配送信息','distribution_information','配送信息编辑','/distribution_information/edit','','_blank','1','1','1','1','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,rider_number,rider_name,distribution_status,order_receiving_quantity','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,rider_number,rider_name,distribution_status,order_receiving_quantity','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,rider_number,rider_name,distribution_status,order_receiving_quantity',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('16','管理员','配送评价','distribution_evaluation','配送评价','/distribution_evaluation/table','','_blank','1','1','1','1','order_number,item_name,consignee,full_name,rider_number,rider_name,distribution_status,rider_rating,evaluation_content','order_number,item_name,consignee,full_name,rider_number,rider_name,distribution_status,rider_rating,evaluation_content','order_number,item_name,consignee,full_name,rider_number,rider_name,distribution_status,rider_rating,evaluation_content',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('17','管理员','配送评价','distribution_evaluation','配送评价详情','/distribution_evaluation/view','','_blank','1','1','1','1','order_number,item_name,consignee,full_name,rider_number,rider_name,distribution_status,rider_rating,evaluation_content','order_number,item_name,consignee,full_name,rider_number,rider_name,distribution_status,rider_rating,evaluation_content','order_number,item_name,consignee,full_name,rider_number,rider_name,distribution_status,rider_rating,evaluation_content',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('18','管理员','我的收藏','collect','我的收藏','/collect/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('19','管理员','订单','order','订单列表','/order/table','','_blank','1','1','1','1','','','',null,'0','{"print":true,"export_db":true}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('20','管理员','订单','order','订单详情','/order/view','','_blank','1','1','1','1','','','',null,'0','{"print":true}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('21','管理员','订单','order','我的订单','/order/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('22','管理员','订单','order','订单详情','/order/details','','_blank','1','1','1','1','','','',null,'0','{"can_show_comment":true,"can_comment":true,"can_show_score":true,"can_score":true}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('23','管理员','商品','goods','商品列表','/goods/table','','_blank','1','1','1','1','','','',null,'0','{"print":true,"import_db":true,"export_db":true}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('24','管理员','商品','goods','商品详情','/goods/view','','_blank','1','1','1','1','','','',null,'0','{"print":true}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('25','管理员','商品','goods','商品列表','/goods/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('26','管理员','商品','goods','商品详情','/goods/details','','_blank','1','1','1','1','','','',null,'0','{"can_show_comment":true,"can_comment":true,"can_show_score":true,"can_score":true}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('27','管理员','收货地址','address','收货地址','/address/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('28','管理员','收货地址','address','地址详情','/address/details','','_blank','1','1','1','1','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('29','管理员','评论','comment','评论列表','/comment/table','','_blank','1','1','1','1','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('30','管理员','评论','comment','评论详情','/comment/view','','_blank','1','1','1','1','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('31','管理员','评论','comment','我的评论','/comment/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('32','管理员','评论','comment','评论详情','/comment/details','','_blank','1','1','1','1','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('33','管理员','新闻','article','药品资讯','/article/table','','_blank','1','1','1','1','','','',null,'0','{"print":true,"import_db":true,"export_db":true}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('34','管理员','新闻','article','药品资讯','/article/view','','_blank','1','1','1','1','','','',null,'0','{"print":true}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('35','管理员','新闻','article','药品资讯','/article/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('36','管理员','新闻','article','药品资讯','/article/details','','_blank','1','1','1','1','','','',null,'0','{"can_show_comment":true,"can_comment":true}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('37','管理员','新闻分类','article_type','资讯分类列表','/article_type/table','','_blank','1','1','1','1','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('38','管理员','新闻分类','article_type','资讯分类详情','/article_type/view','','_blank','1','1','1','1','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('39','游客','顾客','customer','顾客','/customer/table','','_blank','1','0','0','0','full_name,gender,personal_introduction','full_name,gender,personal_introduction','full_name,gender,personal_introduction',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('40','游客','顾客','customer','顾客详情','/customer/view','','_blank','1','0','0','0','full_name,gender,personal_introduction','full_name,gender,personal_introduction','full_name,gender,personal_introduction',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('41','游客','骑手','rider','骑手','/rider/table','','_blank','1','0','0','0','rider_number,rider_name,gender,id','rider_number,rider_name,gender,id','rider_number,rider_name,gender,id',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('42','游客','骑手','rider','骑手详情','/rider/view','','_blank','1','0','0','0','rider_number,rider_name,gender,id','rider_number,rider_name,gender,id','rider_number,rider_name,gender,id',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('43','游客','商品管理','commodity_management','商品管理','/commodity_management/table','','_blank','0','0','0','0','remarks','remarks','remarks',null,'0','{"can_show_comment":false}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('44','游客','商品管理','commodity_management','商品管理详情','/commodity_management/view','','_blank','0','0','0','0','remarks','remarks','remarks',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('45','游客','商品管理','commodity_management','商品管理','/commodity_management/list','','_blank','0','0','0','1','remarks','remarks','remarks',null,'0','{"cart_page":false}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('46','游客','商品管理','commodity_management','商品管理详情','/commodity_management/details','','_blank','0','0','0','1','remarks','remarks','remarks',null,'0','{"can_show_comment":true,"can_comment":false,"cart_page":false}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('47','游客','跑腿订单','errand_order','跑腿订单','/errand_order/table','','_blank','0','0','0','0','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('48','游客','跑腿订单','errand_order','跑腿订单详情','/errand_order/view','','_blank','0','0','0','0','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('49','游客','跑腿订单','errand_order','跑腿订单','/errand_order/list','top','_blank','0','0','0','0','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('50','游客','跑腿订单','errand_order','跑腿订单详情','/errand_order/details','','_blank','0','0','0','0','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('51','游客','配送信息','distribution_information','配送信息','/distribution_information/table','','_blank','0','0','0','0','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,rider_number,rider_name,distribution_status,order_receiving_quantity','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,rider_number,rider_name,distribution_status,order_receiving_quantity','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,rider_number,rider_name,distribution_status,order_receiving_quantity',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('52','游客','配送信息','distribution_information','配送信息详情','/distribution_information/view','','_blank','0','0','0','0','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,rider_number,rider_name,distribution_status,order_receiving_quantity','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,rider_number,rider_name,distribution_status,order_receiving_quantity','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,rider_number,rider_name,distribution_status,order_receiving_quantity',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('53','游客','配送信息','distribution_information','配送信息编辑','/distribution_information/edit','','_blank','0','0','0','0','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,rider_number,rider_name,distribution_status,order_receiving_quantity','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,rider_number,rider_name,distribution_status,order_receiving_quantity','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,rider_number,rider_name,distribution_status,order_receiving_quantity',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('54','游客','配送评价','distribution_evaluation','配送评价','/distribution_evaluation/table','','_blank','0','0','0','0','order_number,item_name,consignee,full_name,rider_number,rider_name,distribution_status,rider_rating,evaluation_content','order_number,item_name,consignee,full_name,rider_number,rider_name,distribution_status,rider_rating,evaluation_content','order_number,item_name,consignee,full_name,rider_number,rider_name,distribution_status,rider_rating,evaluation_content',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('55','游客','配送评价','distribution_evaluation','配送评价详情','/distribution_evaluation/view','','_blank','0','0','0','0','order_number,item_name,consignee,full_name,rider_number,rider_name,distribution_status,rider_rating,evaluation_content','order_number,item_name,consignee,full_name,rider_number,rider_name,distribution_status,rider_rating,evaluation_content','order_number,item_name,consignee,full_name,rider_number,rider_name,distribution_status,rider_rating,evaluation_content',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('56','游客','我的收藏','collect','我的收藏','/collect/list','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('57','游客','订单','order','订单列表','/order/table','','_blank','0','0','0','0','','','',null,'0','{"print":false,"export_db":false}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('58','游客','订单','order','订单详情','/order/view','','_blank','0','0','0','0','','','',null,'0','{"print":false}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('59','游客','订单','order','我的订单','/order/list','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('60','游客','订单','order','订单详情','/order/details','','_blank','0','0','0','0','','','',null,'0','{"can_show_comment":false,"can_comment":false,"can_show_score":false,"can_score":false}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('61','游客','商品','goods','商品列表','/goods/table','','_blank','0','0','0','0','','','',null,'0','{"print":false,"import_db":false,"export_db":false}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('62','游客','商品','goods','商品详情','/goods/view','','_blank','0','0','0','0','','','',null,'0','{"print":false}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('63','游客','商品','goods','商品列表','/goods/list','','_blank','0','0','0','1','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('64','游客','商品','goods','商品详情','/goods/details','','_blank','0','0','0','1','','','',null,'0','{"can_show_comment":true,"can_comment":false,"can_show_score":true,"can_score":false}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('65','游客','收货地址','address','收货地址','/address/list','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('66','游客','收货地址','address','地址详情','/address/details','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('67','游客','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('68','游客','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('69','游客','评论','comment','我的评论','/comment/list','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('70','游客','评论','comment','评论详情','/comment/details','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('71','游客','新闻','article','新闻列表','/article/table','','_blank','0','0','0','0','','','',null,'0','{"print":false,"import_db":false,"export_db":false}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('72','游客','新闻','article','新闻详情','/article/view','','_blank','0','0','0','0','','','',null,'0','{"print":false}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('73','游客','新闻','article','药品资讯','/article/list','','_blank','0','0','0','1','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('74','游客','新闻','article','药品资讯','/article/details','','_blank','0','0','0','1','','','',null,'0','{"can_show_comment":true,"can_comment":false}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('75','游客','新闻分类','article_type','新闻分类列表','/article_type/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('76','游客','新闻分类','article_type','新闻分类详情','/article_type/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('77','顾客','顾客','customer','顾客','/customer/table','','_blank','0','0','0','0','full_name,gender,personal_introduction','full_name,gender,personal_introduction','full_name,gender,personal_introduction',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('78','顾客','顾客','customer','顾客详情','/customer/view','','_blank','0','0','0','0','full_name,gender,personal_introduction','full_name,gender,personal_introduction','full_name,gender,personal_introduction',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('79','顾客','骑手','rider','骑手','/rider/table','','_blank','0','0','0','0','rider_number,rider_name,gender,id','rider_number,rider_name,gender,id','rider_number,rider_name,gender,id',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('80','顾客','骑手','rider','骑手详情','/rider/view','','_blank','0','0','0','0','rider_number,rider_name,gender,id','rider_number,rider_name,gender,id','rider_number,rider_name,gender,id',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('81','顾客','商品管理','commodity_management','商品管理','/commodity_management/table','','_blank','0','0','0','0','remarks','remarks','remarks',null,'0','{"can_show_comment":false}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('82','顾客','商品管理','commodity_management','商品管理详情','/commodity_management/view','','_blank','0','0','0','0','remarks','remarks','remarks',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('83','顾客','商品管理','commodity_management','商品管理','/commodity_management/list','','_blank','1','1','1','1','remarks','remarks','remarks',null,'0','{"cart_page":true}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('84','顾客','商品管理','commodity_management','商品管理详情','/commodity_management/details','','_blank','1','1','1','1','remarks','remarks','remarks',null,'0','{"can_show_comment":true,"can_comment":true,"cart_page":true}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('85','顾客','跑腿订单','errand_order','跑腿订单','/errand_order/table','','_blank','0','0','0','0','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('86','顾客','跑腿订单','errand_order','跑腿订单详情','/errand_order/view','','_blank','0','0','0','0','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('87','顾客','跑腿订单','errand_order','跑腿订单','/errand_order/list','top','_blank','0','0','0','0','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('88','顾客','跑腿订单','errand_order','跑腿订单详情','/errand_order/details','','_blank','0','0','0','0','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('89','顾客','配送信息','distribution_information','配送信息','/distribution_information/table','','_blank','0','0','0','1','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,rider_number,rider_name,distribution_status,order_receiving_quantity','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,rider_number,rider_name,distribution_status,order_receiving_quantity','distribution_status,rider_name,,contact_information,full_name,running_expenses,consignee,article_weight,delivery_address,item_type,item_name,order_number',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('90','顾客','配送信息','distribution_information','配送信息详情','/distribution_information/view','','_blank','0','0','0','1','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,rider_number,rider_name,distribution_status,order_receiving_quantity','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,rider_number,rider_name,distribution_status,order_receiving_quantity','distribution_status,rider_name,,contact_information,full_name,running_expenses,consignee,article_weight,delivery_address,item_type,item_name,order_number',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('91','顾客','配送信息','distribution_information','配送信息编辑','/distribution_information/edit','','_blank','0','0','0','0','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,rider_number,rider_name,distribution_status,order_receiving_quantity','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,rider_number,rider_name,distribution_status,order_receiving_quantity','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,rider_number,rider_name,distribution_status,order_receiving_quantity',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('92','顾客','配送评价','distribution_evaluation','配送评价','/distribution_evaluation/table','','_blank','1','1','1','1','order_number,item_name,consignee,full_name,rider_number,rider_name,distribution_status,rider_rating,evaluation_content','order_number,item_name,consignee,full_name,rider_number,rider_name,distribution_status,rider_rating,evaluation_content','order_number,item_name,consignee,full_name,rider_number,rider_name,distribution_status,rider_rating,evaluation_content',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('93','顾客','配送评价','distribution_evaluation','配送评价详情','/distribution_evaluation/view','','_blank','1','1','1','1','order_number,item_name,consignee,full_name,rider_number,rider_name,distribution_status,rider_rating,evaluation_content','order_number,item_name,consignee,full_name,rider_number,rider_name,distribution_status,rider_rating,evaluation_content','order_number,item_name,consignee,full_name,rider_number,rider_name,distribution_status,rider_rating,evaluation_content',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('94','顾客','我的收藏','collect','我的收藏','/collect/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('95','顾客','订单','order','订单列表','/order/table','','_blank','0','0','0','1','','','',null,'0','{"print":false,"export_db":false}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('96','顾客','订单','order','订单详情','/order/view','','_blank','0','0','0','1','','','',null,'0','{"print":false}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('97','顾客','订单','order','我的订单','/order/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('98','顾客','订单','order','订单详情','/order/details','','_blank','1','1','1','1','','','',null,'0','{"can_show_comment":true,"can_comment":true,"can_show_score":true,"can_score":true}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('99','顾客','商品','goods','商品列表','/goods/table','','_blank','0','0','0','0','','','',null,'0','{"print":false,"import_db":false,"export_db":false}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('100','顾客','商品','goods','商品详情','/goods/view','','_blank','0','0','0','0','','','',null,'0','{"print":false}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('101','顾客','商品','goods','商品列表','/goods/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('102','顾客','商品','goods','商品详情','/goods/details','','_blank','1','1','1','1','','','',null,'0','{"can_show_comment":true,"can_comment":true,"can_show_score":true,"can_score":true}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('103','顾客','收货地址','address','收货地址','/address/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('104','顾客','收货地址','address','地址详情','/address/details','','_blank','1','1','1','1','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('105','顾客','评论','comment','评论列表','/comment/table','','_blank','1','1','1','1','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('106','顾客','评论','comment','评论详情','/comment/view','','_blank','1','1','1','1','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('107','顾客','评论','comment','我的评论','/comment/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('108','顾客','评论','comment','评论详情','/comment/details','','_blank','1','1','1','1','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('109','顾客','新闻','article','新闻列表','/article/table','','_blank','0','0','0','0','','','',null,'0','{"print":false,"import_db":false,"export_db":false}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('110','顾客','新闻','article','新闻详情','/article/view','','_blank','0','0','0','0','','','',null,'0','{"print":false}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('111','顾客','新闻','article','药品资讯','/article/list','','_blank','1','1','1','1','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('112','顾客','新闻','article','药品资讯','/article/details','','_blank','1','1','1','1','','','',null,'0','{"can_show_comment":true,"can_comment":true}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('113','顾客','新闻分类','article_type','新闻分类列表','/article_type/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('114','顾客','新闻分类','article_type','新闻分类详情','/article_type/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('115','骑手','顾客','customer','顾客','/customer/table','','_blank','0','0','0','0','full_name,gender,personal_introduction','full_name,gender,personal_introduction','full_name,gender,personal_introduction',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('116','骑手','顾客','customer','顾客详情','/customer/view','','_blank','0','0','0','0','full_name,gender,personal_introduction','full_name,gender,personal_introduction','full_name,gender,personal_introduction',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('117','骑手','骑手','rider','骑手','/rider/table','','_blank','0','0','0','0','rider_number,rider_name,gender,id','rider_number,rider_name,gender,id','rider_number,rider_name,gender,id',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('118','骑手','骑手','rider','骑手详情','/rider/view','','_blank','0','0','0','0','rider_number,rider_name,gender,id','rider_number,rider_name,gender,id','rider_number,rider_name,gender,id',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('119','骑手','商品管理','commodity_management','商品管理','/commodity_management/table','','_blank','0','0','0','0','remarks','remarks','remarks',null,'0','{"can_show_comment":false}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('120','骑手','商品管理','commodity_management','商品管理详情','/commodity_management/view','','_blank','0','0','0','0','remarks','remarks','remarks',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('121','骑手','商品管理','commodity_management','商品管理','/commodity_management/list','','_blank','0','0','0','0','remarks','remarks','remarks',null,'0','{"cart_page":false}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('122','骑手','商品管理','commodity_management','商品管理详情','/commodity_management/details','','_blank','0','0','0','0','remarks','remarks','remarks',null,'0','{"can_show_comment":false,"can_comment":false,"cart_page":false}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('123','骑手','跑腿订单','errand_order','跑腿订单','/errand_order/table','','_blank','0','0','0','1','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('124','骑手','跑腿订单','errand_order','跑腿订单详情','/errand_order/view','','_blank','0','0','0','1','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('125','骑手','跑腿订单','errand_order','跑腿订单','/errand_order/list','top','_blank','1','1','1','1','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('126','骑手','跑腿订单','errand_order','跑腿订单详情','/errand_order/details','','_blank','1','1','1','1','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,number_of_orders',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('127','骑手','配送信息','distribution_information','配送信息','/distribution_information/table','','_blank','1','1','1','1','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,rider_number,rider_name,distribution_status,order_receiving_quantity','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,rider_number,rider_name,distribution_status,order_receiving_quantity','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,rider_number,rider_name,distribution_status,order_receiving_quantity',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('128','骑手','配送信息','distribution_information','配送信息详情','/distribution_information/view','','_blank','1','1','1','1','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,rider_number,rider_name,distribution_status,order_receiving_quantity','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,rider_number,rider_name,distribution_status,order_receiving_quantity','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,rider_number,rider_name,distribution_status,order_receiving_quantity',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('129','骑手','配送信息','distribution_information','配送信息编辑','/distribution_information/edit','','_blank','1','1','1','1','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,rider_number,rider_name,distribution_status,order_receiving_quantity','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,rider_number,rider_name,distribution_status,order_receiving_quantity','order_number,item_name,item_type,delivery_address,article_weight,running_expenses,consignee,full_name,contact_information,rider_number,rider_name,distribution_status,order_receiving_quantity',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('130','骑手','配送评价','distribution_evaluation','配送评价','/distribution_evaluation/table','','_blank','0','0','0','1','order_number,item_name,consignee,full_name,rider_number,rider_name,distribution_status,rider_rating,evaluation_content','order_number,item_name,consignee,full_name,rider_number,rider_name,distribution_status,rider_rating,evaluation_content','order_number,item_name,consignee,full_name,rider_number,rider_name,distribution_status,rider_rating,evaluation_content',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('131','骑手','配送评价','distribution_evaluation','配送评价详情','/distribution_evaluation/view','','_blank','0','0','0','1','order_number,item_name,consignee,full_name,rider_number,rider_name,distribution_status,rider_rating,evaluation_content','order_number,item_name,consignee,full_name,rider_number,rider_name,distribution_status,rider_rating,evaluation_content','order_number,item_name,consignee,full_name,rider_number,rider_name,distribution_status,rider_rating,evaluation_content',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('132','骑手','我的收藏','collect','我的收藏','/collect/list','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('133','骑手','订单','order','订单列表','/order/table','','_blank','0','0','0','0','','','',null,'0','{"print":false,"export_db":false}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('134','骑手','订单','order','订单详情','/order/view','','_blank','0','0','0','0','','','',null,'0','{"print":false}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('135','骑手','订单','order','我的订单','/order/list','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('136','骑手','订单','order','订单详情','/order/details','','_blank','0','0','0','0','','','',null,'0','{"can_show_comment":false,"can_comment":false,"can_show_score":false,"can_score":false}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('137','骑手','商品','goods','商品列表','/goods/table','','_blank','0','0','0','0','','','',null,'0','{"print":false,"import_db":false,"export_db":false}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('138','骑手','商品','goods','商品详情','/goods/view','','_blank','0','0','0','0','','','',null,'0','{"print":false}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('139','骑手','商品','goods','商品列表','/goods/list','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('140','骑手','商品','goods','商品详情','/goods/details','','_blank','0','0','0','0','','','',null,'0','{"can_show_comment":false,"can_comment":false,"can_show_score":false,"can_score":false}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('141','骑手','收货地址','address','收货地址','/address/list','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('142','骑手','收货地址','address','地址详情','/address/details','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('143','骑手','评论','comment','评论列表','/comment/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('144','骑手','评论','comment','评论详情','/comment/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('145','骑手','评论','comment','我的评论','/comment/list','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('146','骑手','评论','comment','评论详情','/comment/details','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('147','骑手','新闻','article','新闻列表','/article/table','','_blank','0','0','0','0','','','',null,'0','{"print":false,"import_db":false,"export_db":false}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('148','骑手','新闻','article','新闻详情','/article/view','','_blank','0','0','0','0','','','',null,'0','{"print":false}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('149','骑手','新闻','article','新闻','/article/list','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('150','骑手','新闻','article','新闻详情','/article/details','','_blank','0','0','0','0','','','',null,'0','{"can_show_comment":false,"can_comment":false}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('151','骑手','新闻分类','article_type','新闻分类列表','/article_type/table','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `auth` values ('152','骑手','新闻分类','article_type','新闻分类详情','/article_type/view','','_blank','0','0','0','0','','','',null,'0','{}',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `user_group` values ('1','100','管理员',null,'','','0',null,"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `user_group` values ('2','100','游客',null,'','','0','0',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `user_group` values ('3','100','顾客',null,'customer','customer_id','0','3',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `user_group` values ('4','100','骑手',null,'rider','rider_id','0','1',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `slides` values ('1','轮播图1','内容1','/article/details?article=1','/api/upload/image_1646911045135.jpg','819',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `slides` values ('2','轮播图2','内容2','/article/details?article=2','/api/upload/image_1646911045135.jpg','946',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `slides` values ('3','轮播图3','内容3','/article/details?article=3','/api/upload/image_1646911045129.jpg','793',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `article` values ('1','种好苦药材 收获甜日子','药品','167','0',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ",null,null,null,'<p>在古县三合镇双泉村外的一片土地上，随着机械的轰鸣声，一根根黄芩从土中“翻跳”而出，农民们跟在后头挑拣捆扎，十分忙碌。看到古县农商行永乐支行行长马贝贝和客户经理来到地头走访，这块药材地的主人王先丽放下手头的活计走上来热情地打招呼：“原本是年前要收的，可因为去年雨水太多没能及时收，只能开春了再收。还得感谢你们给我的资金支持，下一步的发展不愁啦！”</p><p>双泉村村民以往习惯于种植玉米等传统农作物，收益并不高，大家日子过得紧巴巴。王先丽是个有想法的人，在和乡亲们一样种植玉米的同时思考着怎样才能从土地里“刨金”，过上好日子。一个偶然的机会他了解到种植药材收益比较高。于是从2001年起就开始尝试种植生地，成为双泉村乃至周边第一个“吃螃蟹”的人。</p><p>王先丽说，当时由于技术方面是零基础，管理上的不足导致生地出现根腐病，他不得不到处向人请教。“那个时候种植药材的人特别少，懂技术的人就更少了。好不容易找到了一个人，人家还不愿意教我，但我这个人比较细心，无意间瞥见了那个人扔到地边上的药瓶，我就自己买回了药尝试配药，没想到居然把根腐病治好了。”王先丽的生地在第二年秋天就见到了效益，取得了不错的收益，于是更坚定了他种植中药材的决心，种植的品种越来越多，规模越来越大。</p><p>2011年，王先丽有了新的身份，他当选为村委会主任。为了带动村民种植药材共奔富路，他更加痴迷药材种植技术的研究。“那个时期我的主要目标是找到适合当地种植的药材，所以每年都会试种新品种，生地、柴胡、远志、黄芩等等，只有确定适宜种、能见效，才能让村民跟着一起种。”王先丽说，由于一直在做试种，他的资金投入很大，古县农商行工作人员经常上门了解情况，和他一同探讨，及时给予资金支持，让他十分感激。</p><p>2014年，王先丽带头成立了古县誉农中药材种植专业合作社，同时为了扩大种植规模，他先后承包了周边村民的土地，从原来的80多亩增加到300多亩，药材品种固定为5种。“柴胡7月份播种，9月份出苗，1年后柴胡籽便可产生收益，两年半柴胡根产生收益。每亩地玉米收入500元左右，而每亩地柴胡籽收入2000余元、柴胡根收入近7000元。”王先丽谈起药材种植如数家珍。在他的影响和带领下，其他村民纷纷加入药材种植的大军。2018年，合作社流转土地1000余亩，村民自发种植1000余亩，双泉村成为远近闻名的药材种植村。</p><p><br></p><p>“我的技术都是通过自己无数次尝试后，积累摸索出的经验，我给自己总结的药材种植方法是：品种要选好、管理得做好、市场需看好。这些都是实用、操作性很强的经验，每年我都被邀请到其他乡镇进行技术指导，在跟农户们的交流中，我也在不断地提高自己的技术水平。”王先丽说，为打消村民种植药材的后顾之忧，他前往全国各地药材市场，谈合作，签协议，打通了销售渠道，进一步激发了村民种植药材的积极性。</p><p>2019年，王先丽的药材种植迈上了新台阶，他走出古县前往长治，开始进行异地种植药材。“党参是一种很好的药材，我和南方一家公司签订协议，由我负责种植，公司负责销售。但经过试种发现我们这的气候、土质种出来的党参收益不高，最适宜的种植地还是在长治。于是我就在长治承包了300多亩地种植党参，今年3月中下旬就可以收获了。”王先丽说，300多亩地的党参种植投资不小，第一年要在承包土地、雇用人工、购买种子化肥等方面投入，第二、第三年还需要进行管理方面的投入，资金需求量很大。2021年古县农商行为他授信50万元，让他的发展能够稳步前进。</p>','/api/upload/image_1647510781960.jpeg',null);
insert into `article` values ('2','大阳镇药材飘香产业兴','药品','875','0',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ",null,null,null,'<p class="ql-align-center"><img src="https://n.sinaimg.cn/sinakd20220316s/248/w640h408/20220316/0ca3-c8a3ecc946b407ae3539156b52729c73.jpg"></p><p>３月１６日，张家川县大阳镇中药材产业加工园里，工人们正在整理晾晒后的中药材，空气中飘散着浓浓的药香。</p><p>近年来，大阳镇积极调整产业结构，把中药材种植作为全县调整产业结构、增加群众收入的主导产业来抓，建设了集育苗、种植、技术指导、加工销售为一体的中药材产业加工园，以黄芪、党参、当归、板蓝根、大黄等为主要经营产品，带动大阳、汪洋、豁岘、阳沟等村种植黄芪、党参、板蓝根、柴胡、大黄等中药材４０００亩，后期计划年加工量可达５０００吨，解决３００余人就业，年产值达２０００多万元。</p>','/api/upload/image_1647510919532.jpg',null);
insert into `article_type` values ('1','100','药品','0',null,null,null,"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
insert into `goods_type` values ('1','0','商品管理','商品管理(commodity_management)','','commodity_management','commodity_management_id',"2022-03-23 12:47:23.000 ","2022-03-23 12:47:23.000 ");
