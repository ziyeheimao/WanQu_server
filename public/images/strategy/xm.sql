/** 玩去网数据库2.0**/
SET NAMES UTF8;
DROP DATABASE IF EXISTS wanqu;
CREATE DATABASE wanqu CHARSET=UTF8;
USE wanqu;
/**用户表**/
CREATE TABLE user(
	uid INT PRIMARY KEY AUTO_INCREMENT,		#用户id（自增）
	uname VARCHAR(16),				#用户名
	password VARCHAR(16),				#用户密码
	gender BOOL,						#用户性别(1-->男 0-->女)
	email VARCHAR(16),				#用户邮箱
	phone CHAR(11),					#联系电话
	user_name VARCHAR(50)	,			#用户真实姓名
	avatar VARCHAR(50),				#用户头像
	property INT,						#用户资产
	level BOOL						#用户级别  1->管理员   0->普通用户  
);
/**用户订单**/
CREATE TABLE wanqu_order(
	aid INT PRIMARY KEY AUTO_INCREMENT,	#订单编号
	status INT,			#订单状态  1-等待付款  2-完成付款 3-已取消
	jingdian_time BIGINT,			#出游时间
	order_time BIGINT,		#下单时间
	pay_time BIGINT,		#付款时间
	jingdian_id INT,		#景点id
	jingdian_title VARCHAR(128),		#主标题
	count INT,			#购买数量
	client_name1 VARCHAR(10),			#客户姓名
	client_name2 VARCHAR(10),			#客户姓名
	client_name3 VARCHAR(10),			#客户姓名
	client_name4 VARCHAR(10),			#客户姓名
	client_name5 VARCHAR(10),			#客户姓名
	client_name6 VARCHAR(10),			#客户姓名
	client_name7 VARCHAR(10),			#客户姓名
	client_name8 VARCHAR(10),			#客户姓名
	client_name9 VARCHAR(10),			#客户姓名
	uid INT							#购买该订单的用户id
);
/**景点表**/
CREATE TABLE jingdian(
	jingdian_id INT PRIMARY KEY AUTO_INCREMENT,	#景点id(自增)
	jingdian_title VARCHAR(128),			#主标题
	jingdian_subtitle VARCHAR(128),		#副标题
	jingdian_price DECIMAL(10,2),			#价格
	jingdian_content TEXT				#景点介绍
);
/**景点图片表**/
CREATE TABLE jingdian_pic(
	jingdian_id INT PRIMARY KEY AUTO_INCREMENT,	#景点id(自增)
	jingdian_pic_url VARCHAR(50)		#景点图片
);
/**攻略**/
CREATE TABLE strategy(
	sid INT PRIMARY KEY AUTO_INCREMENT,	#攻略id(自增)
	s_title   VARCHAR(20),
	s_content TEXT,						#攻略内容
	s_pic_url VARCHAR(50),					#攻略图片
	s_city  VARCHAR(20)
);
