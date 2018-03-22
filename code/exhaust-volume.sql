/*
MySQL Data Transfer
Source Host: localhost
Source Database: exhaust-volume
Target Host: localhost
Target Database: exhaust-volume
Date: 2017/3/6 16:17:06
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for answer
-- ----------------------------
CREATE TABLE `answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `solution` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for chapter
-- ----------------------------
CREATE TABLE `chapter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `chapterOrder` int(11) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for course
-- ----------------------------
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `courseTime` int(11) DEFAULT NULL,
  `coursePic` varchar(50) DEFAULT NULL,
  `jieshao` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for delete_question
-- ----------------------------
CREATE TABLE `delete_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ques_id` int(11) DEFAULT NULL,
  `content` text COLLATE utf8_bin,
  `type_id` int(11) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  `chapter_id` int(11) DEFAULT NULL,
  `A` text COLLATE utf8_bin,
  `B` text COLLATE utf8_bin,
  `C` text COLLATE utf8_bin,
  `D` text COLLATE utf8_bin,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Table structure for exam
-- ----------------------------
CREATE TABLE `exam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `e_time` varchar(50) DEFAULT NULL,
  `t_id` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `desired` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for logs
-- ----------------------------
CREATE TABLE `logs` (
  `USER_ID` varchar(20) NOT NULL,
  `DATED` date NOT NULL,
  `LOGGER` varchar(50) NOT NULL,
  `LEVEL` varchar(10) NOT NULL,
  `MESSAGE` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `url` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for operation
-- ----------------------------
CREATE TABLE `operation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for power
-- ----------------------------
CREATE TABLE `power` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `m_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for question
-- ----------------------------
CREATE TABLE `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `chapter_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  `repeats` int(11) DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  `A` text,
  `B` text,
  `C` text,
  `D` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for questionlevel
-- ----------------------------
CREATE TABLE `questionlevel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for questiontype
-- ----------------------------
CREATE TABLE `questiontype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for recorder
-- ----------------------------
CREATE TABLE `recorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `t_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `description` text,
  `o_id` int(11) DEFAULT NULL,
  `time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=352 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for regulation
-- ----------------------------
CREATE TABLE `regulation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yearrepeat` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for role
-- ----------------------------
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for rolepoweralt
-- ----------------------------
CREATE TABLE `rolepoweralt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `r_id` int(11) DEFAULT NULL,
  `p_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sort
-- ----------------------------
CREATE TABLE `sort` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sequence` int(11) DEFAULT NULL,
  `e_id` int(11) DEFAULT NULL,
  `q_id` int(11) DEFAULT NULL,
  `t_id` int(11) DEFAULT NULL,
  `pointvalue` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1112 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `hiredate` date DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for teachercoursealt
-- ----------------------------
CREATE TABLE `teachercoursealt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `t_id` int(11) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=147 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for teacherrolealt
-- ----------------------------
CREATE TABLE `teacherrolealt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `r_id` int(11) DEFAULT NULL,
  `t_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `answer` VALUES ('2', 'B ');
INSERT INTO `answer` VALUES ('3', 'D');
INSERT INTO `answer` VALUES ('4', 'D');
INSERT INTO `answer` VALUES ('5', 'A');
INSERT INTO `answer` VALUES ('6', 'A');
INSERT INTO `answer` VALUES ('7', 'B');
INSERT INTO `answer` VALUES ('8', 'A');
INSERT INTO `answer` VALUES ('9', 'B');
INSERT INTO `answer` VALUES ('10', 'A');
INSERT INTO `answer` VALUES ('11', 'A');
INSERT INTO `answer` VALUES ('12', 'A');
INSERT INTO `answer` VALUES ('13', 'C');
INSERT INTO `answer` VALUES ('14', 'C');
INSERT INTO `answer` VALUES ('15', 'A');
INSERT INTO `answer` VALUES ('16', 'B');
INSERT INTO `answer` VALUES ('17', 'D');
INSERT INTO `answer` VALUES ('18', 'B');
INSERT INTO `answer` VALUES ('19', 'A');
INSERT INTO `answer` VALUES ('20', 'B');
INSERT INTO `answer` VALUES ('21', 'A');
INSERT INTO `answer` VALUES ('22', 'B');
INSERT INTO `answer` VALUES ('23', 'B');
INSERT INTO `answer` VALUES ('24', 'C');
INSERT INTO `answer` VALUES ('25', 'A');
INSERT INTO `answer` VALUES ('26', 'C');
INSERT INTO `answer` VALUES ('27', 'D');
INSERT INTO `answer` VALUES ('28', 'D');
INSERT INTO `answer` VALUES ('29', 'D');
INSERT INTO `answer` VALUES ('30', 'D');
INSERT INTO `answer` VALUES ('31', 'C');
INSERT INTO `answer` VALUES ('32', 'C');
INSERT INTO `answer` VALUES ('33', 'C');
INSERT INTO `answer` VALUES ('34', 'B');
INSERT INTO `answer` VALUES ('35', 'C');
INSERT INTO `answer` VALUES ('36', 'C');
INSERT INTO `answer` VALUES ('37', 'D');
INSERT INTO `answer` VALUES ('38', 'C');
INSERT INTO `answer` VALUES ('39', 'A');
INSERT INTO `answer` VALUES ('40', 'B');
INSERT INTO `answer` VALUES ('41', 'C');
INSERT INTO `answer` VALUES ('42', 'B');
INSERT INTO `answer` VALUES ('43', 'D');
INSERT INTO `answer` VALUES ('44', 'C');
INSERT INTO `answer` VALUES ('45', 'C');
INSERT INTO `answer` VALUES ('46', 'A');
INSERT INTO `answer` VALUES ('47', 'A');
INSERT INTO `answer` VALUES ('48', 'B');
INSERT INTO `answer` VALUES ('49', 'D');
INSERT INTO `answer` VALUES ('50', 'A');
INSERT INTO `answer` VALUES ('51', 'D');
INSERT INTO `answer` VALUES ('52', 'B');
INSERT INTO `answer` VALUES ('53', 'C');
INSERT INTO `answer` VALUES ('54', 'D');
INSERT INTO `answer` VALUES ('55', 'A');
INSERT INTO `answer` VALUES ('56', 'B');
INSERT INTO `answer` VALUES ('57', 'A');
INSERT INTO `answer` VALUES ('58', 'D');
INSERT INTO `answer` VALUES ('59', 'A');
INSERT INTO `answer` VALUES ('60', 'D');
INSERT INTO `answer` VALUES ('61', 'A');
INSERT INTO `answer` VALUES ('62', 'A');
INSERT INTO `answer` VALUES ('63', 'D');
INSERT INTO `answer` VALUES ('64', 'B');
INSERT INTO `answer` VALUES ('65', 'D');
INSERT INTO `answer` VALUES ('66', 'A');
INSERT INTO `answer` VALUES ('67', 'B');
INSERT INTO `answer` VALUES ('68', 'C');
INSERT INTO `answer` VALUES ('69', 'D');
INSERT INTO `answer` VALUES ('70', 'B');
INSERT INTO `answer` VALUES ('71', 'C');
INSERT INTO `answer` VALUES ('72', 'B');
INSERT INTO `answer` VALUES ('73', 'C');
INSERT INTO `answer` VALUES ('74', 'B');
INSERT INTO `answer` VALUES ('75', 'D');
INSERT INTO `answer` VALUES ('76', 'A');
INSERT INTO `answer` VALUES ('77', 'C');
INSERT INTO `answer` VALUES ('78', 'C');
INSERT INTO `answer` VALUES ('79', 'B');
INSERT INTO `answer` VALUES ('80', 'D');
INSERT INTO `answer` VALUES ('81', 'B');
INSERT INTO `answer` VALUES ('82', 'C');
INSERT INTO `answer` VALUES ('83', 'B');
INSERT INTO `answer` VALUES ('84', 'B');
INSERT INTO `answer` VALUES ('85', 'D');
INSERT INTO `answer` VALUES ('86', 'C');
INSERT INTO `answer` VALUES ('87', 'A');
INSERT INTO `answer` VALUES ('88', 'B');
INSERT INTO `answer` VALUES ('89', 'D');
INSERT INTO `answer` VALUES ('90', 'C');
INSERT INTO `answer` VALUES ('91', 'B');
INSERT INTO `answer` VALUES ('92', 'D');
INSERT INTO `answer` VALUES ('93', 'D');
INSERT INTO `answer` VALUES ('94', 'D');
INSERT INTO `answer` VALUES ('95', 'C');
INSERT INTO `answer` VALUES ('96', 'C');
INSERT INTO `answer` VALUES ('97', 'C');
INSERT INTO `answer` VALUES ('98', 'A');
INSERT INTO `answer` VALUES ('99', 'D');
INSERT INTO `answer` VALUES ('100', 'B');
INSERT INTO `answer` VALUES ('101', '(P193)cerr');
INSERT INTO `answer` VALUES ('102', '实例');
INSERT INTO `answer` VALUES ('103', '<span>int *ip=new int［10］');
INSERT INTO `answer` VALUES ('104', 'class');
INSERT INTO `answer` VALUES ('105', '无参');
INSERT INTO `answer` VALUES ('106', '‘＼n’');
INSERT INTO `answer` VALUES ('107', '->');
INSERT INTO `answer` VALUES ('108', '复制或拷贝');
INSERT INTO `answer` VALUES ('109', '(P183)类成员');
INSERT INTO `answer` VALUES ('110', '(P109)friend void A::f()；');
INSERT INTO `answer` VALUES ('111', '4');
INSERT INTO `answer` VALUES ('112', '(P40)find');
INSERT INTO `answer` VALUES ('113', '无限次');
INSERT INTO `answer` VALUES ('114', 'setfill(char)');
INSERT INTO `answer` VALUES ('115', '运行时');
INSERT INTO `answer` VALUES ('116', '2');
INSERT INTO `answer` VALUES ('117', 'C++');
INSERT INTO `answer` VALUES ('118', '类');
INSERT INTO `answer` VALUES ('119', '无参构造函数');
INSERT INTO `answer` VALUES ('120', 'ector<int>V2(V1);');
INSERT INTO `answer` VALUES ('121', '2');
INSERT INTO `answer` VALUES ('122', '纯虚');
INSERT INTO `answer` VALUES ('123', '纯虚函数的定义');
INSERT INTO `answer` VALUES ('124', '5');
INSERT INTO `answer` VALUES ('125', '友元函数');
INSERT INTO `answer` VALUES ('126', 'new');
INSERT INTO `answer` VALUES ('127', '常对象');
INSERT INTO `answer` VALUES ('128', '单');
INSERT INTO `answer` VALUES ('129', '访问控制方式或继承方式');
INSERT INTO `answer` VALUES ('130', '多态性');
INSERT INTO `answer` VALUES ('131', '对象');
INSERT INTO `answer` VALUES ('132', 'operater');
INSERT INTO `answer` VALUES ('133', 'cpp');
INSERT INTO `answer` VALUES ('134', '自定');
INSERT INTO `answer` VALUES ('135', 'push_back');
INSERT INTO `answer` VALUES ('136', '传地址或引用');
INSERT INTO `answer` VALUES ('137', 'ifstream infile(“data.dat”);');
INSERT INTO `answer` VALUES ('138', '(P111)friend void B::fun();');
INSERT INTO `answer` VALUES ('139', '#define');
INSERT INTO `answer` VALUES ('140', '0');
INSERT INTO `answer` VALUES ('141', '纯虚');
INSERT INTO `answer` VALUES ('142', 'void (A::*pf)(void)=A::f;');
INSERT INTO `answer` VALUES ('143', '3.1416，3.14');
INSERT INTO `answer` VALUES ('144', 'clear()');
INSERT INTO `answer` VALUES ('145', '操作数');
INSERT INTO `answer` VALUES ('146', '重载');
INSERT INTO `answer` VALUES ('147', '访问控制方式或继承方式');
INSERT INTO `answer` VALUES ('148', 'X');
INSERT INTO `answer` VALUES ('149', '(P193)+509.3');
INSERT INTO `answer` VALUES ('150', '4');
INSERT INTO `answer` VALUES ('151', 'ios');
INSERT INTO `answer` VALUES ('152', '无限次');
INSERT INTO `answer` VALUES ('153', '多继承');
INSERT INTO `answer` VALUES ('154', 'vector<int>;A(10,1)');
INSERT INTO `answer` VALUES ('155', 'push_back');
INSERT INTO `answer` VALUES ('156', '传地址或引用');
INSERT INTO `answer` VALUES ('157', '声明');
INSERT INTO `answer` VALUES ('158', '传引用');
INSERT INTO `answer` VALUES ('159', '对象名');
INSERT INTO `answer` VALUES ('160', 'string.h');
INSERT INTO `answer` VALUES ('161', 'inline');
INSERT INTO `answer` VALUES ('162', 'front');
INSERT INTO `answer` VALUES ('163', '性质扩展');
INSERT INTO `answer` VALUES ('164', '操作数');
INSERT INTO `answer` VALUES ('165', '重载');
INSERT INTO `answer` VALUES ('166', '条件编译');
INSERT INTO `answer` VALUES ('167', '友元函数');
INSERT INTO `answer` VALUES ('168', 'setw(int)');
INSERT INTO `answer` VALUES ('169', '从基类继承的成员');
INSERT INTO `answer` VALUES ('170', 'ios');
INSERT INTO `answer` VALUES ('171', 'back');
INSERT INTO `answer` VALUES ('172', 'i=e6');
INSERT INTO `answer` VALUES ('173', '引用');
INSERT INTO `answer` VALUES ('174', 'new int［10］;');
INSERT INTO `answer` VALUES ('175', '抽象');
INSERT INTO `answer` VALUES ('176', 'virtual');
INSERT INTO `answer` VALUES ('177', 'Oct:42');
INSERT INTO `answer` VALUES ('178', 'ifstream fin(“Test.txt”)；');
INSERT INTO `answer` VALUES ('179', '单一');
INSERT INTO `answer` VALUES ('180', '2');
INSERT INTO `answer` VALUES ('181', '对象的引用');
INSERT INTO `answer` VALUES ('182', '继承');
INSERT INTO `answer` VALUES ('183', '友元函数');
INSERT INTO `answer` VALUES ('184', 'X,Y,length,height');
INSERT INTO `answer` VALUES ('185', '单');
INSERT INTO `answer` VALUES ('186', '静态或编译');
INSERT INTO `answer` VALUES ('187', '修改');
INSERT INTO `answer` VALUES ('188', 'virtual');
INSERT INTO `answer` VALUES ('189', '私有');
INSERT INTO `answer` VALUES ('190', '类成员');
INSERT INTO `answer` VALUES ('191', '引用');
INSERT INTO `answer` VALUES ('192', 'operater');
INSERT INTO `answer` VALUES ('193', '静态联编');
INSERT INTO `answer` VALUES ('194', 'amp');
INSERT INTO `answer` VALUES ('195', 'friend void B::fun();');
INSERT INTO `answer` VALUES ('196', ')const double PI(3.14159);或者const double PI＝3.14159;');
INSERT INTO `answer` VALUES ('197', 'cout');
INSERT INTO `answer` VALUES ('198', 'hex:a=20,c=32');
INSERT INTO `answer` VALUES ('199', 'ector<int>V2(V1);');
INSERT INTO `answer` VALUES ('200', 'AB');
INSERT INTO `answer` VALUES ('201', 'CB');
INSERT INTO `answer` VALUES ('202', 'BD');
INSERT INTO `answer` VALUES ('203', 'BC');
INSERT INTO `answer` VALUES ('204', 'AB');
INSERT INTO `answer` VALUES ('205', 'AC');
INSERT INTO `answer` VALUES ('206', 'BC');
INSERT INTO `answer` VALUES ('207', 'AC');
INSERT INTO `answer` VALUES ('208', 'AC');
INSERT INTO `answer` VALUES ('209', 'AB');
INSERT INTO `answer` VALUES ('210', 'AB');
INSERT INTO `answer` VALUES ('211', 'BD');
INSERT INTO `answer` VALUES ('212', 'AD');
INSERT INTO `answer` VALUES ('213', 'BC');
INSERT INTO `answer` VALUES ('214', 'BC');
INSERT INTO `answer` VALUES ('215', 'AC');
INSERT INTO `answer` VALUES ('216', 'AB');
INSERT INTO `answer` VALUES ('217', 'AC');
INSERT INTO `answer` VALUES ('218', 'AB');
INSERT INTO `answer` VALUES ('219', 'BD');
INSERT INTO `answer` VALUES ('220', 'BD');
INSERT INTO `answer` VALUES ('221', 'AC');
INSERT INTO `answer` VALUES ('222', 'AC');
INSERT INTO `answer` VALUES ('223', 'AC');
INSERT INTO `answer` VALUES ('224', 'BC');
INSERT INTO `answer` VALUES ('225', 'AC');
INSERT INTO `answer` VALUES ('226', 'AC');
INSERT INTO `answer` VALUES ('227', 'AC');
INSERT INTO `answer` VALUES ('228', '对');
INSERT INTO `answer` VALUES ('229', '错');
INSERT INTO `answer` VALUES ('230', '错');
INSERT INTO `answer` VALUES ('231', '错');
INSERT INTO `answer` VALUES ('232', '对');
INSERT INTO `answer` VALUES ('233', '对');
INSERT INTO `answer` VALUES ('234', '对');
INSERT INTO `answer` VALUES ('235', '对');
INSERT INTO `answer` VALUES ('236', '错');
INSERT INTO `answer` VALUES ('237', '对');
INSERT INTO `answer` VALUES ('238', '对');
INSERT INTO `answer` VALUES ('239', '错');
INSERT INTO `answer` VALUES ('240', '错');
INSERT INTO `answer` VALUES ('241', '错');
INSERT INTO `answer` VALUES ('242', '对');
INSERT INTO `answer` VALUES ('243', '错');
INSERT INTO `answer` VALUES ('244', '对');
INSERT INTO `answer` VALUES ('245', '对');
INSERT INTO `answer` VALUES ('246', '对');
INSERT INTO `answer` VALUES ('247', '错');
INSERT INTO `answer` VALUES ('248', '对');
INSERT INTO `answer` VALUES ('249', '对');
INSERT INTO `answer` VALUES ('250', '错');
INSERT INTO `answer` VALUES ('251', '对');
INSERT INTO `answer` VALUES ('252', '对');
INSERT INTO `answer` VALUES ('253', '错');
INSERT INTO `answer` VALUES ('254', '对');
INSERT INTO `answer` VALUES ('255', '对');
INSERT INTO `answer` VALUES ('256', '对');
INSERT INTO `answer` VALUES ('257', '对');
INSERT INTO `answer` VALUES ('258', '对');
INSERT INTO `answer` VALUES ('259', '对');
INSERT INTO `answer` VALUES ('260', '错');
INSERT INTO `answer` VALUES ('261', '对');
INSERT INTO `answer` VALUES ('262', '对');
INSERT INTO `answer` VALUES ('263', '对');
INSERT INTO `answer` VALUES ('264', '错');
INSERT INTO `answer` VALUES ('265', '错');
INSERT INTO `answer` VALUES ('266', '错');
INSERT INTO `answer` VALUES ('267', '对');
INSERT INTO `answer` VALUES ('268', '对');
INSERT INTO `answer` VALUES ('269', '对');
INSERT INTO `answer` VALUES ('270', '对');
INSERT INTO `answer` VALUES ('271', '错');
INSERT INTO `answer` VALUES ('272', '对');
INSERT INTO `answer` VALUES ('273', '错');
INSERT INTO `answer` VALUES ('274', '对');
INSERT INTO `answer` VALUES ('275', '对');
INSERT INTO `answer` VALUES ('276', '对');
INSERT INTO `answer` VALUES ('277', '错');
INSERT INTO `answer` VALUES ('278', '对');
INSERT INTO `answer` VALUES ('279', '对');
INSERT INTO `answer` VALUES ('280', '对');
INSERT INTO `answer` VALUES ('281', '错');
INSERT INTO `answer` VALUES ('282', '对');
INSERT INTO `answer` VALUES ('283', '对');
INSERT INTO `answer` VALUES ('284', '错');
INSERT INTO `answer` VALUES ('285', '对');
INSERT INTO `answer` VALUES ('286', '对');
INSERT INTO `answer` VALUES ('287', '对');
INSERT INTO `answer` VALUES ('288', '错');
INSERT INTO `answer` VALUES ('289', '对');
INSERT INTO `answer` VALUES ('290', '对');
INSERT INTO `answer` VALUES ('291', '对');
INSERT INTO `answer` VALUES ('292', 'C++语言是从C语言发展而来的,C 语言是一种编译型的面向过程的程序设计语言，它最早是从英国剑桥大学一个名叫Martin Richards的学者在60年代开发的BCPL( 即Basic Combind Programming\r\nLanguage)语言的基础之上发展而来的。BCPL语言是Martin Richards在开发系统软件时，作为描述性语言而使用的一种程序设计语言。1970年，美国Bell实验室的 Ken?Thompson在软件开发工作中，继承和发展了BCPL语言的许多特点，进一步提出了一种叫“B语言”的语言。随后，在美国Bell实验室实现的更新型的小型机PDP-11的UNIX操作系统的研发工作中,于1972年推出了一种新型的程序语言 — C语言，该语言一经推出就在国际上广泛流行。20世纪80年代，由于软件工程的需要，面向对象程序设计方法在软件设计领域引起了普遍的重视,AT&T Bell实验室的计算机科学家Bjarne Stroustrup结合流行的C语言的所有成分，开发出了面向对象的程序设计语言C++。');
INSERT INTO `answer` VALUES ('293', 'C ++ 语言具有以下主要特点: （1） C++语言是一个中级的程序设计语言。 （2） C++是一个结构化的程序设计语言 。 （3） C++是一种面向对象的程序设计语言。 （4） C++语言是一个功能齐全的编程语言。 （5） C++语言是一种移植性很好的编程语言 。');
INSERT INTO `answer` VALUES ('294', 'C++语言的程序主要由以下几个基本组成部分构成：（1） 预处理命令：C++语言提供了三类预处理命令：宏定义命令(define)、文件包含命令(include)、条件编译命令(if~else~endif)，（2） 输入/输出语句（Input/Output语句，简称I/O语句）：C++语言的程序中总是少不了输入和输出的语句，实现与程序内部的信息交流。 （3） 函数（Function）：C++的程序是由若干个文件组成的，每个文件又是由若干个函数组成，因此，可以认为C++的程序就是函数串，即由若干个函数组成，函数与函数之间是相对的，并且是并行的，函数之间可以调用。 （4） 语句(Statement)：语句是组成程序的基本单元。每个函数都是由若干条语句组成的。 （5） 变量(Variable)：变量是通过说明语句来定义的，多数程序都需要说明变量和使用变量。 （6）其他：除了以上讲述的5个部分以外，还有其他组成部分。例如，符号常量和注释信息等也是程序的一部分。C++程序中尽量把有些常量定义为符号常量，而在C++的程序中使用符号常量，该符号常量代表着某个确定的常量值。');
INSERT INTO `answer` VALUES ('295', 'C++语言编写的源代码程序的格式具有以下特点： (1) C++语言的关键字是小写字符构成的，习惯上也使用小写字母书写程序； (2) 大多数语句结尾必须用 \";\" 作为终止符, 否则C++不认为该语句的结束； (3) 每个程序必须有一个且只能有一个主函数，其名称为main()的函数；(4) 每个函数的函数体 (包括主函数和每个子函数） 必须用一对花括号\"{\"和\"}\"括起来； (5) 一个较完整的程序文件大致含有: 包括文件程序段(一组#include<*.h>语句)、函数说明部分、全局变量说明、主函数和若干个子函数组成。在主函数和子函数中又包括局部变量定义、库函数调用、流程控制语句、用户函数的调用语句等； (6) 注释部分包含在\"/*\"和\"*/\"之间或\"//\"之后, 在编译时它将被C++编译器忽略；(7) 像其它一些语言一样, C++的变量在使用之前必须先说明其数据类型, 未经说明的变量不能使用。说明变量类型应在可执行语句前面, 如上例main()函数中的第一条语句就是变量说明语句, 它必须放在所用的执行语句前面。 (8) 在C++语言中, 大小写字母是有区别的, 相同字母的大小写代表不同的变量；');
INSERT INTO `answer` VALUES ('296', '为了使程序结构更加清楚、易于阅读、维护和修改，在书写格式上应该遵从以下基本原则： （1） 一般一行只写一条语句； （2） 一条复杂语句采用多行，如分支语句和循环语句；（3） 遇到嵌套语句应向后缩进, 必要时对程序增加适当的注释行。');
INSERT INTO `answer` VALUES ('297', '关键字（Keyword）也叫保留字(Reserved Word)。所谓关键字就是指已被C++语言本身使用, 不能作为其它用途使用的单词。标识符是用户为程序中各种需要命名的\"元素\"所起的名称。\r\n');
INSERT INTO `answer` VALUES ('298', 'C++语言共有六种常量，分别如下： （1）整型常量整型常量通常简称为整数。C++语言的整数可以是十进制数、八进制数和十六进制数。 例如，十进制的数值3356可以有下列三种不同的表示形式： 十进制数 3356；八进制数06434 ；十六进制数0xd1c （2）浮点常量浮点常量又称为实数，一般含有小数部分。例如， -0.6523,\r\n.08765, 1234.0, 9.9999,\r\n98., 5.544, 2355.876554都是一般形式的实数。\r\n（3）字符常量所谓字符常量是指一个单一字符， 其表示形式是由两个单引号包括的一个字符。 例如， \'A\', \'a\',\r\n\'Q\', \'0\', \'9\', \'+\', \':\',\r\n\'?\', \'$\' 都是字符常量。 （4）字符串常量所谓字符串常量是指用双引号括起来的一串字符来表示的数据下面给出几个字符串常量的例子： \"Hello!\",\r\n	\"A Graduate Student\",\"9\", \"Bill Gates\",\"李四\" \"<北京海淀学院路29号，\"姓名：\"，\"guanjh123@cugb.edu.cn\"\r\n\"\" （5）标识常量所谓标识常量是指用标识符代替常量使用的一种常量, 其名称通常是一个标识符。\r\n');
INSERT INTO `answer` VALUES ('299', 'box_v = mybox.box_volume(mybox.weight)mybox.length, mybox.hight);cout\"This box\'s volume =\" box_v  endl; box_a = mybox.box_area(mybox.weight,mybox.length, mybox.hight); cout\"This box\'s area = \" box_a endl;}void Box::box_shape(int w, int l, int h) { if(w == l l == h) cout  \"This is a Cube!\"endl; elsecout << \"This is a cuboid!\">>endl; }intBox::box_volume(int w, int l, int h){return w * l * h; } int Box::box_area(int w, int l, int h){return 2 * w * l + 2 * l * h + 2 * w* h; }');
INSERT INTO `answer` VALUES ('300', '#include iostreamclass Box{ private: int length;\r\nint weight; int hight; public: Box(int, int, int); int volume(); };int main() { using namespace std; Box mybox1(30, 20, 10); cout \"The first Box\'s volume\r\n= \" mybox1.volume() endl; Box mybox2(12, 10, 30);cout  \"The second Box\'s volume\r\n= \"  mybox2.volume() endl; return 0; } Box::Box(int l, int w, int h) {length = l;\r\nweight = w;hight = h; int Box::volume() {return (hight * weight * length); }');
INSERT INTO `answer` VALUES ('301', '#include\r\niostream; class Box{ private:\r\nint length; int wight;int height; public: Box();\r\nBox(int, int, int); int volume();\r\n}; int main() { using namespace std; Box mybox1;\r\ncout\"The first box\'s volume = \" \r\nmybox1.volume() endl; Box mybox2(10, 30, 20); cout  \"The second box\'s volume\r\n= \"  mybox2.volume() endl; return 0; } Box::Box() {\r\nlength = 12; wight = 20;height = 25; }Box::Box(int l, int w, int h) { length = l;\r\nwight = w; height = h; } int Box::volume() { return length * wight * height; }');
INSERT INTO `answer` VALUES ('302', '#includeiostream using namespace std; class\r\nStudent {public:Student(int n,int s):num(n),score(s){}void display(){coutnum\"\r\n\"scoreendl;} private:\r\nint num; int score; }; int main() {\r\nStudent\r\nstud[5]={Student(01,70),Student(02,71),Student(03,72),Student(04,73),Student(05,74)}; Student *p=stud; for(int i=0;i=2;p=p+1,i++)\r\np-display(); return 0; }');
INSERT INTO `answer` VALUES ('303', '#includeiostream using namespace std; class Student { public:\r\nStudent(int n,int s):num(n),score(s){}int num;\r\nint score; }; int main() {Student\r\nstud[5]={Student(01,70),Student(02,71),Student(03,72),Student(04,73),Student(05,74)} void max(Student *); Student *p=stud[0];max(p);\r\nreturn 0; } void max(Student\r\n*arr) {\r\nfloat max_score=arr[0].score;\r\nfor(int i=0;i5;i++)\r\nif(max_scorearr[i].score)\r\n{max_score=arr[i].score;}\r\ncoutmax_score\" \"arr[i].numendl;}');
INSERT INTO `answer` VALUES ('304', '#include iostream #include\r\nstring using namespace std; class Student { protected:\r\nint id; string name; int score;\r\npublic: Student(int ,string ,\r\nint); virtual void display(); }; Student::Student(int i, string n, int cr)\r\n{ id = i;\r\nStudent::display() { //using namespace\r\nstd; cout  id  \":\r\n\"  name  endl; cout  score  endl; } class Graduate:public Student { protected:\r\nint salary; public: Graduate(int i, string n, int cr, int\r\nsa) :Student(i, n,\r\ncr),salary(sa){} void display();\r\n}; void Graduate::display() { //using namespace std; cout  id  \": \"\r\nname  endl;cout\r\n scoreendl; cout\r\nsalary  endl; }int\r\nmain() {Student stu(1,\r\n\"John\", 99);\r\nstu.display(); Graduate gra(2,\r\n\"JOHNLIU\", 100, 5000);\r\ngra.display();return 0; }');
INSERT INTO `answer` VALUES ('305', '#includeiostream.hint main(){int\r\na[20]={55,66,77,88,99,54,64,74,84,94,56,66,76,86,96,60,70,80,90,85};int b,c,d,e,f;b=c=d=e=f=0;for(int i=0;i20;i++){if(a[i]=90) b++;\r\nelse if(a[i]90a[i]=80)\r\n\r\nc++;\r\nelse if(a[i]80a[i]=70) d++;\r\nelse if(a[i]70a[i]=60)e++;\r\nelse f++; }\r\n\"f=\"return 0; }');
INSERT INTO `answer` VALUES ('306', 'a');
INSERT INTO `chapter` VALUES ('1', 'c++概述', '1', '10');
INSERT INTO `chapter` VALUES ('2', '认识标示符', '2', '10');
INSERT INTO `chapter` VALUES ('3', '函数的学习', '3', '10');
INSERT INTO `chapter` VALUES ('4', '循环的学习', '4', '10');
INSERT INTO `chapter` VALUES ('5', '面向对象', '5', '10');
INSERT INTO `chapter` VALUES ('6', '友元', '6', '10');
INSERT INTO `chapter` VALUES ('7', '虚函数', '7', '10');
INSERT INTO `chapter` VALUES ('8', '计算机组成one', '1', '10');
INSERT INTO `course` VALUES ('10', 'c++', '33', 'course.jpg', '每个人都有他的脾气，每个人都有他的压力与无奈，尘世中没有哪一方净土能让人不受到伤害。职场上的徘徊不前，被人暗算，心力交瘁；感情上的千回百转，始终遇不见对的人，面对年老父母的催促，烦躁又无奈，被冠以不孝的罪名。在这个城市年复一年却付不起一套房子的首付，永远处在缺钱借钱的状态中，想要的生活总是在前方，总是差一段距离。');
INSERT INTO `course` VALUES ('12', 'java', '34', 'course.jpg', '许多过往，错过了、擦肩了、流泪了、欢笑了，到最后还剩下些什么？站在都市的一隅，感受那些渐行渐远，当沧桑倦怠了最初的单纯，当岁月荒芜了似乎成熟的心田，文字是否仍可以承受心之重？许多过往，错过了、擦肩了、流泪了、欢笑了，到最后还剩下些什么？\r\n许多过往，错过了、擦肩了、流泪了、欢笑了，到最后还剩下些什么？站在都市的一隅，感受那些渐行渐远，当沧桑倦怠了最初的单纯，当岁月荒芜了似乎成熟的心田，文字是否仍可以承受心之重？许多过往，错过了、擦肩了、流泪了、欢笑了，到最后还剩下些什么？\r\n');
INSERT INTO `course` VALUES ('44', '操作系统', '22', '44b8d0e1-fbe8-48d4-93df-7f913472fcb4.jpg', '古藤老树昏鸦，断肠人在天涯。韶光荏苒，记不起年少的轻狂，不再想当年的慷慨激昂。一路奔波流浪，一路磕磕绊绊，落叶归根回到最温暖的故乡，回到那段年少最自由的时光。青石板道上，百花绽放，翩翩蛱蝶落叶成欢。把岁月流走的微笑埋进古老的河畔，在明媚的阳光下，让点点记忆灿烂盛放。站在都市的一隅，感受那些渐行渐远，当沧桑倦怠了最初的单纯，当岁月荒芜了似乎成熟的心田，文字是否仍可以承受心之重？许多过往，错过了、擦肩了、流泪了、欢笑了，到最后还剩下些什么？');
INSERT INTO `course` VALUES ('46', 'PHPCMS', '22', 'course.jpg', '生活如酒，或芳香，或浓烈，因为诚实，它变得醇厚；生活如歌，或高昂，或低沉，因为守信，它变得悦耳； 生活如画，或明丽，或素雅，因为诚信，它变得美丽。生活如酒，或芳香，或浓烈，因为诚实，它变得醇厚；生活如歌，或高昂，或低沉，因为守信，它变得悦耳； 生活如画，或明丽，或素雅，因为诚信，它变得美丽。');
INSERT INTO `course` VALUES ('47', '测试1', '12', 'course.jpg', '懒惰也是天生的，勤奋需自己努力，一放松就懒了。\r\n懒惰也是天生的，勤奋需自己努力，一放松就懒了。\r\n懒惰也是天生的，勤奋需自己努力，一放松就懒了。\r\n懒惰也是天生的，勤奋需自己努力，一放松就懒了。\r\n懒惰也是天生的，勤奋需自己努力，一放松就懒了。\r\n\r\n懒惰也是天生的，勤奋需自己努力，一放松就懒了。\r\n懒惰也是天生的，勤奋需自己努力，一放松就懒了。\r\n懒惰也是天生的，勤奋需自己努力，一放松就懒了。\r\n懒惰也是天生的，勤奋需自己努力，一放松就懒了。\r\n懒惰也是天生的，勤奋需自己努力，一放松就懒了。\r\n懒惰也是天生的，勤奋需自己努力，一放松就懒了。\r\n懒惰也是天生的，勤奋需自己努力，一放松就懒了。当沧桑倦怠了最初的单纯，当岁月荒芜了似乎成熟的心田，文字是否仍可以承受心之重？许多过往，错过了、擦肩了、流泪了、欢笑了，到最后还剩下些什么？当沧桑倦怠了最初的单纯，当岁月荒芜了似乎成熟的心田，文字是否仍可以承受心之重？许多过往，错过了、擦肩了、流泪了、欢笑了，到最后还剩下些什么？');
INSERT INTO `course` VALUES ('48', '测试2', '23', '86aeef33-0e6f-40af-8dea-7b88da8af2c2.jpg', '懒惰也是天生的，勤奋需自己努力，一放松就懒了。\r\n懒惰也是天生的，勤奋需自己努力，一放松就懒了。\r\n懒惰也是天生的，勤奋需自己努力，一放松就懒了。你的问题主要在于读书不多而想得太多。\r\n懒惰也是天生的，勤奋需自己努力，一放松就懒了。你的问题主要在于读书不多而想得太多。\r\n懒惰也是天生的，勤奋需自己努力，一放松就懒了。你的问题主要在于读书不多而想得太多。\r\n懒惰也是天生的，勤奋需自己努力，一放松就懒了。你的问题主要在于读书不多而想得太多。\r\n懒惰也是天生的，勤奋需自己努力，一放松就懒了。你的问题主要在于读书不多而想得太多。\r\n当沧桑倦怠了最初的单纯，当岁月荒芜了似乎成熟的心田，文字是否仍可以承受心之重？许多过往，错过了、擦肩了、流泪了、欢笑了，到最后还剩下些什么？当沧桑倦怠了最初的单纯，当岁月荒芜了似乎成熟的心田，文字是否仍可以承受心之重？许多过往，错过了、擦肩了、流泪了、欢笑了，到最后还剩下些什么？当沧桑倦怠了最初的单纯，当岁月荒芜了似乎成熟的心田，文字是否仍可以承受心之重？许多过往，错过了、擦肩了、流泪了、欢笑了，到最后还剩下些什么？当沧桑倦怠了最初的单纯，当岁月荒芜了似乎成熟的心田，文字是否仍可以承受心之重？许多过往，错过了、擦肩了、流泪了、欢笑了，到最后还剩下些什么？');
INSERT INTO `delete_question` VALUES ('1', '2', 0xE7ACACE4BA8CE98193632B2B, '1', '3', '1', 0x30, 0x30, 0x30, 0x30);
INSERT INTO `delete_question` VALUES ('2', '3', 0xE7ACACE4B889E98193632B2B, '1', '2', '1', 0x30, 0x30, 0x30, 0x30);
INSERT INTO `delete_question` VALUES ('3', '4', 0xE7ACACE59B9BE98193632B2B, '1', '4', '1', 0x30, 0x30, 0x30, 0x30);
INSERT INTO `delete_question` VALUES ('4', '105', 0x31, '1', '1', '1', 0x412E31, 0x422E20, 0x432E31, 0x442E31);
INSERT INTO `delete_question` VALUES ('5', '192', 0x696D706F7274206A6176612E696F2E494F457863657074696F6E3B, '3', '1', '1', null, null, null, null);
INSERT INTO `delete_question` VALUES ('6', '193', 0x696D706F7274206A6176612E6E65742E55524C4465636F6465723B, '1', '1', '1', 0x412E3C7072652069643D22626573742D636F6E74656E742D3933353633333732302220636C6173733D22626573742D74657874206D622D3130223EE79CBCE4B88BE79A84E5A48FE5A4A9EFBC8CE698AFE59CB0E59CB0E98193E98193E79A84E5A48FE5A4A9E38082E5A4AAE998B3E6898DE4B880E99CB2E884B8EFBC8CE5A4A9E59CB0E997B4E4BEBFE5BCA5E6BCABE5BC80E697A0E5BDA2E79A84E783ADE6B094EFBC8CE8808CE5BD93E5A4AAE998B3E5A682E98791E889B2E79A84E8BDAEE5AD90EFBC8CE8BDB0E99A86E99A86E6BB9AE58AA8E8BF87E69DA5EFBC8CE79BB4E6BB9AE588B0E4BABAE79A84E5A4B4E9A1B6E4B88AE697B6EFBC8CE5A4A9E59CB0E997B4E5B0B1E4BBBFE4BD9BE58F98E5BE97E781ABE58589E997AAE997AAE4BA86E38082E6B2B3E8BEB9E79A84E88AA6E88B87E58FB6E69992E68890E4BA86E58DB7EFBC8CE4B880E58887E6A48DE789A9E983BDE697A0E6B395E68AB5E68A97E8BF99E7A78DE783ADE6B5AAE79A84E8A2ADE587BBEFBC8CE8808CE6988FE6988FE6ACB2E79DA1E59CB0E4BD8EE4B88BE4BA86E5A4B4E38082E5A4A7E8B7AFE4B88AEFBC8CE581B6E5B094E69C89E4BABAE8B5B0E8BF87EFBC8CE983BDE698AFE58C86E58C86E79A84E6A0B7E5AD90EFBC8CE4BBBFE4BD9BE59CA8E8BF99E7A78DE998B3E58589E4B88BE4B880E697A6E59186E4B985E4BA86EFBC8CE5B0B1E4BC9AE8A2ABE783A7E79D80E4BCBCE79A84E38082E4BC9AE6B8B8E6B3B3E4B88EE4B88DE4BC9AE6B8B8E6B3B3E79A84E5ADA9E5AD90EFBC8CE983BDE8A2ABE8BF99E99ABEE5BF8DE79A84E7828EE783ADE980BCE8BF9BE4BA86E6B2B3E9878CE38082E59BA0E6ADA4EFBC8CE6B2B3E4B88AE588B0E5A484E698AFE596A7E997B9E5A3B0E380823C2F7072653E, 0x422E3C7072652069643D22626573742D636F6E74656E742D3933353633333732302220636C6173733D22626573742D74657874206D622D3130223EE79CBCE4B88BE79A84E5A48FE5A4A9EFBC8CE698AFE59CB0E59CB0E98193E98193E79A84E5A48FE5A4A9E38082E5A4AAE998B3E6898DE4B880E99CB2E884B8EFBC8CE5A4A9E59CB0E997B4E4BEBFE5BCA5E6BCABE5BC80E697A0E5BDA2E79A84E783ADE6B094EFBC8CE8808CE5BD93E5A4AAE998B3E5A682E98791E889B2E79A84E8BDAEE5AD90EFBC8CE8BDB0E99A86E99A86E6BB9AE58AA8E8BF87E69DA5EFBC8CE79BB4E6BB9AE588B0E4BABAE79A84E5A4B4E9A1B6E4B88AE697B6EFBC8CE5A4A9E59CB03C2F7072653E, 0x432E3C7072652069643D22626573742D636F6E74656E742D3933353633333732302220636C6173733D22626573742D74657874206D622D3130223EE79CBCE4B88BE79A84E5A48FE5A4A9EFBC8CE698AFE59CB0E59CB0E98193E98193E79A84E5A48FE5A4A9E38082E5A4AAE998B3E6898DE4B880E99CB2E884B8EFBC8CE5A4A9E59CB0E997B4E4BEBFE5BCA5E6BCABE5BC80E697A0E5BDA2E79A84E783ADE6B094EFBC8CE8808CE5BD93E5A4AAE998B3E5A682E98791E889B2E79A84E8BDAEE5AD90EFBC8CE8BDB0E99A86E99A86E6BB9AE58AA8E8BF87E69DA5EFBC8CE79BB4E6BB9AE588B0E4BABAE79A84E5A4B4E9A1B6E4B88AE697B6EFBC8CE5A4A9E59CB0E997B4E5B0B1E4BBBFE4BD9BE58F98E5BE97E781ABE58589E997AAE997AAE4BA86E38082E6B2B3E8BEB9E79A84E88AA6E88B87E58FB6E69992E68890E4BA86E58DB7EFBC8CE4B880E58887E6A48DE789A9E983BDE697A0E6B395E68AB5E68A97E8BF99E7A78DE783ADE6B5AAE79A84E8A2ADE587BBEFBC8CE8808CE6988FE6988FE6ACB2E79DA1E59CB0E4BD8EE4B88BE4BA86E5A4B4E38082E5A4A7E8B7AFE4B88AEFBC8CE581B6E5B094E69C89E4BABAE8B5B0E8BF87EFBC8CE983BDE698AFE58C86E58C86E79A84E6A0B7E5AD90EFBC8CE4BBBFE4BD9BE59CA8E8BF99E7A78DE998B3E58589E4B88BE4B880E697A6E59186E4B9853C2F7072653E, 0x442E3C7072652069643D22626573742D636F6E74656E742D3933353633333732302220636C6173733D22626573742D74657874206D622D3130223EE79CBCE4B88BE79A84E5A48FE5A4A9EFBC8CE698AFE59CB0E59CB0E98193E98193E79A84E5A48FE5A4A9E38082E5A4AAE998B3E6898DE4B880E99CB2E884B8EFBC8CE5A4A9E59CB0E997B4E4BEBFE5BCA5E6BCABE5BC80E697A0E5BDA2E79A84E783ADE6B094EFBC8CE8808CE5BD93E5A4AAE998B3E5A682E98791E889B2E79A84E8BDAEE5AD90EFBC8CE8BDB0E99A86E99A86E6BB9AE58AA8E8BF87E69DA5EFBC8CE79BB4E6BB9AE588B0E4BABAE79A84E5A4B4E9A1B6E4B88AE697B6EFBC8CE5A4A9E59CB0E997B4E5B0B1E4BBBFE4BD9BE58F98E5BE97E781ABE58589E997AAE997AAE4BA86E38082E6B2B3E8BEB9E79A84E88AA6E88B87E58FB6E69992E68890E4BA86E58DB7EFBC8CE4B880E58887E6A48DE789A9E983BDE697A0E6B395E68AB5E68A97E8BF99E7A78DE783ADE6B5AAE79A84E8A2ADE587BBEFBC8CE8808CE6988FE6988FE6ACB2E79DA1E59CB0E4BD8EE4B88BE4BA86E5A4B4E38082E5A4A7E8B7AFE4B88AEFBC8CE581B6E5B094E69C89E4BABAE8B5B0E8BF87EFBC8CE983BDE698AFE58C86E58C86E79A84E6A0B7E5AD90EFBC8CE4BBBFE4BD9BE59CA8E8BF99E7A78DE998B3E58589E4B88BE4B880E697A6E59186E4B985E4BA86EFBC8CE5B0B1E4BC9AE8A2ABE783A7E79D80E4BCBCE79A84E38082E4BC9AE6B8B8E6B3B3E4B88EE4B88DE4BC9AE6B8B8E6B3B3E79A84E5ADA9E5AD90EFBC8CE983BDE8A2ABE8BF99E99ABEE5BF8DE79A84E7828EE783ADE980BCE8BF9BE4BA86E6B2B3E9878CE38082E59BA0E6ADA4EFBC8CE6B2B3E4B88AE588B0E5A484E698AFE596A7E997B9E5A3B0E380823C2F7072653E);
INSERT INTO `delete_question` VALUES ('7', '5', 0x68696265726E617465E4B8ADE79A84E4BA8BE58AA1EFBC88E4BFAEE694B9EFBC89, '3', '1', '1', null, null, null, null);
INSERT INTO `delete_question` VALUES ('8', '1', 0x313131, '1', '1', '1', 0x412E31, 0x422E31, 0x432E31, 0x442E31);
INSERT INTO `delete_question` VALUES ('9', '306', 0xE98089E68BA9E9A298, '1', '1', '1', 0x412E61, 0x422E62, 0x432E63, 0x442E64);
INSERT INTO `delete_question` VALUES ('10', '307', 0xE98089E68BA9E9A298, '1', '1', '1', 0x412E61, 0x422E62, 0x432E64, 0x442E64);
INSERT INTO `delete_question` VALUES ('11', '306', 0xE98089E68BA9E9A29831, '1', '1', '1', 0x412E61, 0x422E62, 0x432E63, 0x442E64);
INSERT INTO `delete_question` VALUES ('12', '307', 0x63787A76, '1', '1', '1', 0x412E61612020, 0x422E732020, 0x432E73732020, 0x442E73732020);
INSERT INTO `exam` VALUES ('80', '2017-03-02 10:37:31', '123456', '试卷2017-03-02 10:37:31', '76');
INSERT INTO `exam` VALUES ('79', '2017-03-02 10:28:02', '123456', '自动组卷\n							', '50');
INSERT INTO `exam` VALUES ('82', '2017-03-02 20:32:55', '123456', '试卷2017-03-02 20:32:55', '0');
INSERT INTO `exam` VALUES ('83', '2017-03-02 20:32:58', '123456', '试卷2017-03-02 20:32:58', '0');
INSERT INTO `exam` VALUES ('84', '2017-03-02 20:39:11', '123456', '试卷2017-03-02 20:39:11', '0');
INSERT INTO `exam` VALUES ('85', '2017-03-02 20:48:14', '123456', '试卷2017-03-02 20:48:14', '0');
INSERT INTO `exam` VALUES ('86', '2017-03-02 20:53:32', '123456', '试卷2017-03-02 20:53:32', '0');
INSERT INTO `exam` VALUES ('87', '2017-03-02 21:36:32', '123456', '试卷2017-03-02 21:36:32', '0');
INSERT INTO `exam` VALUES ('88', '2017-03-02 21:38:11', '123456', '试卷2017-03-02 21:38:11', '0');
INSERT INTO `exam` VALUES ('89', '2017-03-02 21:46:35', '123456', '试卷2017-03-02 21:46:35', '0');
INSERT INTO `exam` VALUES ('90', '2017-03-02 21:50:51', '123456', '试卷2017-03-02 21:50:51', '0');
INSERT INTO `menu` VALUES ('1', '教师管理', null, null);
INSERT INTO `menu` VALUES ('2', '教师入职', '1', 'Teachermanage/toAdd');
INSERT INTO `menu` VALUES ('3', '教师离职', '1', 'Teachermanage/list');
INSERT INTO `menu` VALUES ('4', '教师信息修改', '1', 'Teachermanage/list');
INSERT INTO `menu` VALUES ('5', '教师信息查询', '1', 'Teachermanage/list');
INSERT INTO `menu` VALUES ('6', '课程管理', null, null);
INSERT INTO `menu` VALUES ('7', '课程修改', '6', 'course/toEdit');
INSERT INTO `menu` VALUES ('8', '删除课程', '6', 'course/toDelete');
INSERT INTO `menu` VALUES ('9', '课程查询', '6', 'course/list');
INSERT INTO `menu` VALUES ('10', '增加课程', '6', 'course/toAdd');
INSERT INTO `menu` VALUES ('11', '章节管理', null, null);
INSERT INTO `menu` VALUES ('12', '章节删除', '11', 'chapter/toDelete');
INSERT INTO `menu` VALUES ('13', '章节修改', '11', 'chapter/toEdit');
INSERT INTO `menu` VALUES ('14', '章节查询', '11', 'chapter/list');
INSERT INTO `menu` VALUES ('15', '章节录入', '11', 'chapter/toAdd');
INSERT INTO `menu` VALUES ('16', '试题记录', null, '');
INSERT INTO `menu` VALUES ('17', '查看试题记录', '16', 'recorder/findAllRecorder');
INSERT INTO `menu` VALUES ('18', '试卷规则', null, null);
INSERT INTO `menu` VALUES ('19', '设置试卷规则', '18', 'exam/regulation');
INSERT INTO `menu` VALUES ('20', '组卷', null, '');
INSERT INTO `menu` VALUES ('21', '自动组卷', '20', 'exam/zujuan_kecheng.jsp');
INSERT INTO `menu` VALUES ('22', '手动组卷', '20', 'exam/zujuan_kecheng_hand.jsp');
INSERT INTO `menu` VALUES ('23', '我的试卷', '20', 'exam/listExam');
INSERT INTO `operation` VALUES ('1', '增加');
INSERT INTO `operation` VALUES ('2', '修改');
INSERT INTO `operation` VALUES ('3', '删除');
INSERT INTO `power` VALUES ('1', '教师管理', '1');
INSERT INTO `power` VALUES ('2', '教师入职', '2');
INSERT INTO `power` VALUES ('3', '教师离职', '3');
INSERT INTO `power` VALUES ('4', '教师信息修改', '4');
INSERT INTO `power` VALUES ('5', '教师信息查询', '5');
INSERT INTO `power` VALUES ('6', '课程管理', '6');
INSERT INTO `power` VALUES ('7', '课程修改', '7');
INSERT INTO `power` VALUES ('8', '删除课程', '8');
INSERT INTO `power` VALUES ('9', '课程查询', '9');
INSERT INTO `power` VALUES ('10', '增加课程', '10');
INSERT INTO `power` VALUES ('11', '章节管理', '11');
INSERT INTO `power` VALUES ('12', '章节删除', '12');
INSERT INTO `power` VALUES ('13', '章节修改', '13');
INSERT INTO `power` VALUES ('14', '章节查询', '14');
INSERT INTO `power` VALUES ('15', '章节录入', '15');
INSERT INTO `power` VALUES ('16', '试题记录', '16');
INSERT INTO `power` VALUES ('17', '查看试题记录', '17');
INSERT INTO `power` VALUES ('18', '试卷规则', '18');
INSERT INTO `power` VALUES ('19', '设置试卷规则', '19');
INSERT INTO `power` VALUES ('20', '组卷', '20');
INSERT INTO `power` VALUES ('21', '自动组卷', '21');
INSERT INTO `power` VALUES ('22', '手动组卷', '22');
INSERT INTO `power` VALUES ('23', '我的试卷', '23');
INSERT INTO `question` VALUES ('2', '编写C++程序一般需经过的几个步骤依次是（）', '1', '1', '1', '2', '0', 'A.编辑、调试、编译、连接', 'B.编辑、编译、连接、运行 ', 'C.编译、调试、编辑、连接 ', 'D.编译、编辑、连接、运行');
INSERT INTO `question` VALUES ('3', '决定C++语言中函数的返回值类型的是（)', '1', '1', '2', '2', '0', 'A.return语句中的表达式类型', 'B.调用该函数时系统随机产生的类型 ', 'C.调用该函数时的主调用函数类型 ', 'D.在定义该函数时所指定的数据类型');
INSERT INTO `question` VALUES ('4', '下面叙述不正确的是（）', '1', '1', '3', '2', '0', 'A.派生类一般都用公有派生', 'B.对基类成员的访问必须是无二义性的', 'C.赋值兼容规则也适用于多重继承的组合', 'D.基类的公有成员在派生类中仍然是公有的');
INSERT INTO `question` VALUES ('5', '所谓数据封装就是将一组数据和与这组数据有关操作组装在一起，形成一个实体，这实体 也就是（）', '1', '1', '4', '2', '0', 'A.类', 'B.对象', 'C.函数体', 'D.数据块 ');
INSERT INTO `question` VALUES ('6', '在公有派生类的成员函数不能直接访问基类中继承来的某个成员，则该成员一定是基类中 的（）', '1', '1', '1', '0', '0', 'A.私有成员', 'B.公有成员', 'C.保护成员', 'D.保护成员或私有成员');
INSERT INTO `question` VALUES ('7', '对基类和派生类的关系描述中，错误的是（）', '1', '1', '2', '0', '0', 'A.派生类是基类的具体化', 'B.基类继承了派生类的属性', 'C.派生类是基类定义的延续', 'D.派生类是基类的特殊化');
INSERT INTO `question` VALUES ('8', '关于this指针使用说法正确的是（)', '1', '1', '3', '0', '0', 'A.保证每个对象拥有自己的数据成员，但共享处理这些数据的代码', 'B.保证基类私有成员在子类中可以被访问。', 'C.保证基类保护成员在子类中可以被访问。', 'D.保证基类公有成员在子类中可以被访问。');
INSERT INTO `question` VALUES ('9', '所谓多态性是指 （）', '1', '1', '3', '0', '0', 'A.不同的对象调用不同名称的函数 ', 'B.不同的对象调用相同名称的函数', 'C.一个对象调用不同名称的函数', 'D.一个对象调用不同名称的对象');
INSERT INTO `question` VALUES ('10', '一个函数功能不太复杂，但要求被频繁调用，则应把它定义为 （）', '1', '1', '4', '0', '0', 'A.内联函数', 'B.重载函数', 'C.递归函数', 'D.嵌套函数');
INSERT INTO `question` VALUES ('11', '下面函数模板定义中不正确的是（）', '2', '1', '1', '0', '0', 'A.A', 'B.B', 'C.C', 'D.D');
INSERT INTO `question` VALUES ('12', '假设ClassY:publicX，即类Y是类X的派生类，则说明一个Y类的对象时和删除Y类对象时 ，调用构造函数和析构函数的次序分别为（）', '2', '1', '2', '0', '0', 'A.X,Y,X', 'B.X,Y；X,Y', 'C.Y,X；X,Y', 'D.Y,X；Y,X');
INSERT INTO `question` VALUES ('13', '适宜采用inline定义函数情况是（）', '2', '1', '3', '0', '0', 'A.函数体含有循环语句', 'B.函数体含有递归语句', 'C.函数代码少、频繁调用', 'D.函数代码多、不常调用');
INSERT INTO `question` VALUES ('14', '假定一个类的构造函数为A(int aa,int bb)\r\n{a=aa--;b=a*bb;},则执行A x(4,5)；语句后 ，x.a和x.b的值分别为（）', '2', '1', '4', '0', '0', 'A.3和15', 'B.5和4', 'C.4和20', 'D.20和5');
INSERT INTO `question` VALUES ('15', '在类中说明的成员可以使用关键字的是（）', '2', '1', '1', '0', '0', 'A.public', 'B.extern', 'C.cpu', 'D.register');
INSERT INTO `question` VALUES ('16', '下列不能作为类的成员的是（）', '2', '1', '2', '0', '0', 'A.自身类对象的指针', 'B.自身类对象', 'C.自身类对象的引用', 'D.另一个类的对象');
INSERT INTO `question` VALUES ('17', '使用地址作为实参传给形参，下列说法正确的是（）', '2', '1', '3', '0', '0', 'A.实参是形参的备份 ', 'B.实参与形参无联系', 'C.形参是实参的备份', 'D.实参与形参是同一对象');
INSERT INTO `question` VALUES ('18', '下列程序的输出结果是（）#include &lt;iostream.h&gt; void main() {int n［］［3］={10,20,30,40,50,60};int (*p)［3］; p=n;cout&lt;&lt;p［0］［0］&lt;&lt;\"，\"&lt;&lt;*(p［0］+1)&lt;&lt;\",\"&lt;&lt;(*p)［2］&lt;&lt;endl;\r\n<span>}', '2', '1', '4', '0', '0', 'A.10，30，50', 'B.10，20，30', 'C.20，40，60', 'D.10，30，60');
INSERT INTO `question` VALUES ('19', '在C++中，使用流进行输入输出，其中用于屏幕输入（）', '2', '1', '1', '0', '0', 'A.cin', 'B.cerr', 'C.cout', 'D.clog');
INSERT INTO `question` VALUES ('20', '假定AA为一个类，a()为该类公有的函数成员，x为该类的一个对象，则访问对象中函数 成员a()的格式为（）', '2', '1', '2', '0', '0', 'A.x.a', 'B.x.a()', 'C.x-&gt;a', 'D.（*x).a()');
INSERT INTO `question` VALUES ('21', '关于对象概念的描述中，说法错误的是（）', '2', '1', '2', '0', '0', 'A.对象就是C语言中的结构变量', 'B.对象代表着正在创建的系统中的一个实体', 'C.对象是类的一个变量', 'D.对象之间的信息传递是通过消息进行的');
INSERT INTO `question` VALUES ('22', '静态成员函数没有（）', '2', '1', '3', '0', '0', 'A.返回值', 'B.this指针 ', 'C.指针参数', 'D.返回类型 ');
INSERT INTO `question` VALUES ('23', '假定AB为一个类，则执行“AB a(2), b［3］,*p［4］;”语句时调用该类构造函数的次数 为（）', '2', '1', '4', '0', '0', 'A.3', 'B.4', 'C.5', 'D.9');
INSERT INTO `question` VALUES ('24', '有关多态性说法不正确的是（）', '3', '1', '1', '0', '0', 'A.C++语言的多态性分为编译时的多态性和运行时的多态性 ', 'B.编译时的多态性可通过函数重载实现', 'C.运行时的多态性可通过模板和虚函数实现 ', 'D.实现运行时多态性的机制称为动态多态性 ');
INSERT INTO `question` VALUES ('25', '假定一个类的构造函数为“A(int i=4, int j=0)\r\n{a=i;b=j;}”, 则执行“A x (1);”语 句后，x.a和x.b的值分别为（）', '3', '1', '2', '0', '0', 'A.1和0', 'B.1和4', 'C.4和0', 'D.4和1');
INSERT INTO `question` VALUES ('26', '类MyA的拷贝初始化构造函数是 （）', '3', '1', '3', '0', '0', 'A. MyA()', 'B.MyA(MyA*)', 'C.MyA(MyA&amp;)', 'D.MyA(MyA)');
INSERT INTO `question` VALUES ('27', '在C++中，函数原型不能标识（） ', '3', '1', '4', '0', '0', 'A.函数的返回类型', 'B.函数参数的个数', 'C.函数参数类型 ', 'D.函数的功能');
INSERT INTO `question` VALUES ('28', '友元关系不能（）', '3', '1', '1', '0', '0', 'A.提高程序的运行效率 ', 'B.是类与类的关系', 'C.是一个类的成员函数与另一个类的关系', 'D.继承');
INSERT INTO `question` VALUES ('29', '实现两个相同类型数加法的函数模板的声明是（）', '3', '1', '2', '0', '0', 'A.add(T x,T y)', 'B.Tadd(x,y)', 'C.T add(T x,y)', 'D.Tadd(T x,T y)');
INSERT INTO `question` VALUES ('30', '在int a=3,int *p=&amp;a；中，*p的值是（）', '3', '1', '3', '0', '0', 'A.变量a的地址值', 'B.无意义', 'C.变量p的地址值', 'D.3');
INSERT INTO `question` VALUES ('31', '下列不是描述类的成员函数的是（）', '3', '1', '4', '0', '0', 'A.构造函数 ', 'B.析构函数', 'C.友元函数', 'D.拷贝构造函数');
INSERT INTO `question` VALUES ('32', '如果从原有类定义新类可以实现的是（）', '3', '1', '4', '0', '0', 'A.信息隐藏 ', 'B.数据封装', 'C.继承机制', 'D.数据抽象');
INSERT INTO `question` VALUES ('33', '下面有关类说法不正确的是（）', '1', '1', '1', '0', '0', 'A.一个类可以有多个构造函数', 'B.一个类只有一个析构函数', 'C.析构函数需要指定参数', 'D.在一个类中可以说明具有类类型的数据成员');
INSERT INTO `question` VALUES ('34', '在函数定义中的形参属于（） ', '1', '1', '2', '0', '0', 'A.全局变量 ', 'B.局部变量', 'C.静态变量', 'D.寄存器变量');
INSERT INTO `question` VALUES ('35', '下列有关重载函数的说法中正确的是（）', '1', '1', '3', '0', '0', 'A.重载函数必须具有不同的返回值类型', 'B.重载函数参数个数必须相同', 'C.重载函数必须有不同的形参列表 ', 'D.重载函数名可以不同 ');
INSERT INTO `question` VALUES ('36', 'this指针存在的目的是（）', '1', '1', '4', '0', '0', 'A.保证基类私有成员在子类中可以被访问 ', 'B.保证基类保护成员在子类中可以被访问', 'C.保证每个对象拥有自己的数据成员，但共享处理这些数据成员的代码', 'D.保证基类公有成员在子类中可以被访问');
INSERT INTO `question` VALUES ('37', '关于new运算符的下列描述中，错误的是（） ', '1', '1', '1', '0', '0', 'A.它可以用来动态创建对象和对象数组', 'B.使用它创建的对象或对象数组可以使用运算符delete删除', 'C.使用它创建对象时要调用构造函数', 'D.使用它创建对象数组时必须指定初始值 ');
INSERT INTO `question` VALUES ('38', '已知：p是一个指向类A数据成员m的指针，A1是类A的一个对象。如果要给m赋值为5，正确 的是（）', '1', '1', '2', '0', '0', 'A.A1.p=5;', 'B.A1-&gt;p=5;', 'C.A1.*p=5;', 'D.*A1.p=5;');
INSERT INTO `question` VALUES ('39', '以下基类中的成员函数表示纯虚函数的是（）', '1', '1', '2', '0', '0', 'A.virtual void tt()=0', 'B.void tt(int)=0', 'C.virtual void tt(int)', 'D.virtual void tt(int){}');
INSERT INTO `question` VALUES ('40', 'C++类体系中，不能被派生类继承的有（）', '1', '1', '3', '0', '0', 'A.常成员函数 ', 'B.构造函数 ', 'C.虚函数', 'D.静态成员函数');
INSERT INTO `question` VALUES ('41', '静态成员函数不能说明为（）', '1', '1', '4', '0', '0', 'A.整型函数', 'B.浮点函数', 'C.虚函数', 'D.字符型函数');
INSERT INTO `question` VALUES ('42', '设有定义int i;double j＝5;，则10+i+j值的数据类型是（）', '1', '1', '4', '0', '0', 'A.int', 'B.double', 'C.float', 'D.不确定');
INSERT INTO `question` VALUES ('43', '要禁止修改指针p本身，又要禁止修改p所指向的数据，这样的指针应定义为（）', '2', '1', '1', '0', '0', 'A.const char *p=“ABCD”；', 'B.char *const p=“ABCD”；', 'C.char const *p=“ABCD”；', 'D.const char *\r\nconst p=“ABCD”；');
INSERT INTO `question` VALUES ('44', '类的构造函数被自动调用执行的情况是在定义该类的（）', '2', '1', '2', '0', '0', 'A.成员函数时', 'B.数据成员时', 'C.对象时', 'D.友元函数时');
INSERT INTO `question` VALUES ('45', '已知类A是类B的友元，类B是类C的友元，则（）', '2', '1', '3', '0', '0', 'A.类A一定是类C++的友元 ', 'B.类C一定是类A的友元', 'C.类C的成员函数可以访问类B的对象的任何成员', 'D.类A的成员函数可以访问类B的对象的任何成员');
INSERT INTO `question` VALUES ('46', '假定一个类的构造函数为“A(int\r\ni=4, int j=0) {a=i;b=j;}”, 则执行“A x (1);”语\r\n句后,x.a和x.b的值分别为（） ', '2', '1', '4', '0', '0', 'A.1和0', 'B.1和4', 'C.4和0', 'D.4和1');
INSERT INTO `question` VALUES ('47', '关于this指针使用说法正确的是（）', '2', '1', '1', '0', '0', 'A.保证每个对象拥有自己的数据成员，但共享处理这些数据的代码', 'B.保证基类私有成员在子类中可以被访问。', 'C.保证基类保护成员在子类中可以被访问。 ', 'D.保证基类公有成员在子类中可以被访问。');
INSERT INTO `question` VALUES ('48', '所谓多态性是指 （）', '2', '1', '2', '0', '0', 'A.不同的对象调用不同名称的函数', 'B.不同的对象调用相同名称的函数', 'C.一个对象调用不同名称的函数', 'D.一个对象调用不同名称的对象');
INSERT INTO `question` VALUES ('49', '友元关系不能（）', '2', '1', '2', '0', '0', 'A.提高程序的运行效率', 'B.是类与类的关系', 'C.是一个类的成员函数与另一个类的关系系', 'D.继承');
INSERT INTO `question` VALUES ('50', '语句ofstream f(“TEMP.DAT”,ios::app｜ios::binary)?的功能是建立流对象f，试图打 开文件TEMP.DAT 并与之连接，并且（）', '2', '1', '3', '0', '0', 'A.若文件存在，将文件写指针定位于文件尾；若文件不存在，建立一个新文件', 'B.若文件存在，将其置为空文件；若文件不存在，打开失败', 'C.若文件存在，将文件写指针定位于文件首；若文件不存在，建立一个新文件', 'D.若文件存在，打开失败；若文件不存在，建立一个新文件');
INSERT INTO `question` VALUES ('51', '构造函数不具备的特征是（） ', '2', '1', '4', '0', '0', 'A.构造函数的函数名与类名相同 ', 'B.构造函数可以重载', 'C.构造函数可以设置默认参数', 'D.构造函数必须指定类型说明');
INSERT INTO `question` VALUES ('52', '在公有继承的情况下，基类的公有或保护成员在派生类中的访问权限（）', '2', '1', '4', '0', '0', 'A.受限制 ', 'B.保持不变', 'C.受保护', 'D.不受保护');
INSERT INTO `question` VALUES ('53', '假定一个类的构造函数为A(int aa,int bb)\r\n{a=aa--;b=a*bb;},则执行A x(4,5)；语句后 ，x.a和x.b的值分别为（）', '3', '1', '1', '0', '0', 'A.3和15', 'B.5和4', 'C.4和20', 'D.20和5');
INSERT INTO `question` VALUES ('54', 'C++对C语言做了很多改进，即从面向过程变成为面向对象的主要原因是（）', '3', '1', '2', '0', '0', 'A.增加了一些新的运算符', 'B.允许函数重载，并允许设置缺省参数', 'C.规定函数说明符必须用原型', 'D.引进了类和对象的概念');
INSERT INTO `question` VALUES ('55', '在类中说明的成员可以使用关键字的是（）', '3', '1', '3', '0', '0', 'A.public', 'B.Extern', 'C.cpu', 'D.register');
INSERT INTO `question` VALUES ('56', 'C++语言中所有在函数中定义的变量，连同形式参数，都属于（）', '3', '1', '4', '0', '0', 'A.全局变量', 'B.局部变量', 'C.静态变量', 'D.函数');
INSERT INTO `question` VALUES ('57', '在私有继承的情况下，基类成员在派生类中的访问权限（）', '3', '1', '1', '0', '0', 'A.受限制 ', 'B.保持不变', 'C.受保护', 'D.不受保护 ');
INSERT INTO `question` VALUES ('58', '使用地址作为实参传给形参，下列说法正确的是（）', '3', '1', '2', '0', '0', 'A.实参是形参的备份 ', 'B.实参与形参无联系', 'C.形参是实参的备份', 'D.实参与形参是同一对象');
INSERT INTO `question` VALUES ('59', 'C++的继承性允许派生类继承基类的（）', '3', '1', '3', '0', '0', 'A.部分特性，并允许增加新的特性或重定义基类的特性 ', 'B.部分特性，但不允许增加新的特性或重定义基类的特性', 'C.所有特性，并允许增加新的特性或重定义基类的特性', 'D.所有特性，但不允许增加新的特性或重定义基类的特性');
INSERT INTO `question` VALUES ('60', '对于int *pa［5］;的描述，正确的是（）', '3', '1', '4', '0', '0', 'A.pa是一个指向数组的指针，所指向的数组是5个int型元素', 'B.pa是一个指向某个数组中第5个元素的指针，该元素是int型变量', 'C.pa［5］表示某个数组的第5个元素的值', 'D.pa是一个具有5个元素的指针数组，每个元素是一个int型指针');
INSERT INTO `question` VALUES ('61', '以下基类中的成员函数表示纯虚函数的是（）', '1', '1', '1', '0', '0', 'A.virtual void tt()=0', 'B.void tt(int)=0', 'C.virtual void tt(int)', 'D.virtual void\r\ntt(int){}');
INSERT INTO `question` VALUES ('62', '当一个类的某个函数被说明为virtual时，该函数在该类的所有派生类中（） ', '1', '1', '2', '0', '0', 'A.都是虚函数', 'B.只有被重新说明时才是虚函数', 'C.只有被重新说明为virtual时才是虚函数', 'D.都不是虚函数');
INSERT INTO `question` VALUES ('63', '要禁止修改指针p本身，又要禁止修改p所指向的数据，这样的指针应定义为（） ', '1', '1', '3', '0', '0', 'A.const char *p=“ABCD”；', 'B.char *const p=“ABCD”；', 'C.char const *p=“ABCD”；', 'D.const char * const p=“ABCD”；');
INSERT INTO `question` VALUES ('64', '函数调用func((exp1,exp2),(exp3,exp4,exp5))中所含实参的个数为（）', '1', '1', '4', '0', '0', 'A.1', 'B.2', 'C.4', 'D.5');
INSERT INTO `question` VALUES ('65', '设有函数模板 template &lt;class Q&gt; Q\r\nSum(Q x,Q y) {return (x)+(y);} 则下列语句中对该函数模板错误的使用是（）', '1', '1', '1', '0', '0', 'A.Sum(10,2);', 'B.Sum(5.0,6.7)；', 'C.Sum(15.2f,16.0f);', 'D.Sum(“AB”,”CD”);');
INSERT INTO `question` VALUES ('66', '类B是类A的公有派生类，类A和类B中都定义了虚函数func(),p是一个指向类A对象的指针 ，则p-&gt;A::func()将（）', '1', '1', '2', '0', '0', 'A.调用类A中的函数func()', 'B.调用类B中的函数func()', 'C.根据p所指的对象类型而确定调用类A中或类B中的函数func()', 'D.既调用类A中函数，也调用类B中的函数');
INSERT INTO `question` VALUES ('67', '在面向对象的程序设计中，首先在问题域中识别出若干个 （） ', '1', '1', '3', '0', '0', 'A.函数', 'B.类', 'C.文件 ', 'D.过程');
INSERT INTO `question` VALUES ('68', '已知f1和f2是同一类的两个成员函数，但f1不能直接调用f2，这说明（） ', '1', '1', '4', '0', '0', 'A.f1和f2都是静态函数', 'B.f1不是静态函数，f2是静态函数', 'C.f1是静态函数，f2不是静态函数', 'D.f1和f2都不是静态函数');
INSERT INTO `question` VALUES ('69', '下列有关模板和继承的叙述正确的是 （） ', '1', '1', '1', '0', '0', 'A.模板和继承都可以派生出一个类系', 'B.从类系的成员看，模板类系的成员比继承类系的成员较为稳定', 'C.从动态性能看， 继承类系比模板类系具有更多的动态特性', 'D.相同类模板的不同实例一般没有联系，而派生类各种类之间有兄弟父子等关系');
INSERT INTO `question` VALUES ('70', '有关C++编译指令，以下叙述正确的是（） ', '1', '1', '2', '0', '0', 'A.C++每行可以写多条编译指令', 'B.#include指令中的文件名可含有路径信息', 'C.C++的编译指令可以以#或//开始', 'D.C++中不管＃if后的常量表达式是否为真，该部分都需要编译');
INSERT INTO `question` VALUES ('71', '在C++中不返回任何类型的函数应该说明为（）', '1', '1', '2', '0', '0', 'A.int', 'B.char', 'C.void', 'D.double');
INSERT INTO `question` VALUES ('72', '若Sample类中的一个成员函数说明如下： void set(Sample&amp; a)，则Sample&amp; a的含义是（）', '1', '1', '3', '0', '0', 'A.指向类Sample的名为a的指针', 'B.a是类Sample的对象引用，用来作函数Set（）的形参', 'C.将a的地址赋给变量Set', 'D.变量Sample与a按位与的结果作为函数Set的参数');
INSERT INTO `question` VALUES ('73', '在编译指令中，宏定义使用哪个指令（）', '3', '1', '1', '0', '0', 'A.#if', 'B.#include', 'C.#define', 'D.#error');
INSERT INTO `question` VALUES ('74', '类的析构函数是对一个对象进行以下哪种操作时自动调用的是（）', '3', '1', '2', '0', '0', 'A.建立', 'B.撤销', 'C.赋值', 'D.引用');
INSERT INTO `question` VALUES ('75', '关于new运算符的下列描述中，错误的是（）', '3', '1', '3', '0', '0', 'A.它可以用来动态创建对象和对象数组', 'B.使用它创建的对象或对象数组可以使用运算符delete删除', 'C.使用它创建对象时要调用构造函数', 'D.使用它创建对象数组时必须指定初始值');
INSERT INTO `question` VALUES ('76', '如果类A被说明成类B的友元，则（）', '3', '1', '4', '0', '0', 'A.类B不一定是类A的友元 ', 'B.类B的成员即类A的成员 ', 'C.类A的成员即类B的成员', 'D.类A的成员函数不得访问类B的成员');
INSERT INTO `question` VALUES ('77', '假定一个类的构造函数为A(int aa,int\r\nbb){a=aa++;b=a*++bb;}，则执行A x(4,5);语句 后，x.a和x.b的值分别为（）', '3', '1', '4', '0', '0', 'A.4和5', 'B.4和20', 'C.4和24', 'D.20和5');
INSERT INTO `question` VALUES ('78', '下列运算符中，在C++语言中不能重载的是（）', '1', '1', '1', '0', '0', 'A.*', 'B.&gt;=', 'C.：：', 'D./');
INSERT INTO `question` VALUES ('79', 'C++语言建立类族是通过（）', '1', '1', '2', '0', '0', 'A.类的嵌套', 'B.类的继承', 'C.虚函数', 'D.抽象类');
INSERT INTO `question` VALUES ('80', '在C++语言中，数据封装要解决的问题是（）', '1', '1', '3', '0', '0', 'A.数据的规范化', 'B.便于数据转换', 'C.避免数据丢失', 'D.防止不同模块之间数据的非法访问');
INSERT INTO `question` VALUES ('81', '静态成员函数没有（）', '1', '1', '4', '0', '0', 'A.返回值', 'B.this指针', 'C.指针参数 ', 'D.返回类型 ');
INSERT INTO `question` VALUES ('82', '在类的定义中，用于为对象分配内存空间，对类的数据成员进行初始化并执行其他内部管 理操作的函数是（）', '1', '1', '4', '0', '0', 'A.友元函数', 'B.虚函数', 'C.构造函数', 'D.析构函数 ');
INSERT INTO `question` VALUES ('83', '所有在函数中定义的变量，都是（）', '3', '1', '1', '0', '0', 'A.全局变量 ', 'B.局部变量', 'C.静态变量', 'D.寄存器变量');
INSERT INTO `question` VALUES ('84', '假定AB为一个类，则执行“AB a(2), b［3］,*p［4］;”语句时调用该类构造函数的次数 为（）', '3', '1', '2', '0', '0', 'A.3', 'B.4', 'C.5', 'D.9');
INSERT INTO `question` VALUES ('85', '如果表达式++a中的“++”是作为成员函数重载的运算符，若采用运算符函数调用格式，则 可表示为（）', '3', '1', '3', '0', '0', 'A.a.operator++(1)', 'B.operator++(a)', 'C.operator++(a,1)', 'D.a.operator++()');
INSERT INTO `question` VALUES ('86', '已知f1和f2是同一类的两个成员函数，但f1不能直接调用f2，这说明（）', '3', '1', '3', '0', '0', 'A.f1和f2都是静态函数', 'B.f1不是静态函数，f2是静态函数', 'C.f1是静态函数，f2不是静态函数', 'D.f1和f2都不是静态函数');
INSERT INTO `question` VALUES ('87', '一个函数功能不太复杂，但要求被频繁调用，则应把它定义为 （）', '3', '1', '4', '0', '0', 'A.内联函数 ', 'B.重载函数重载函数<span style=\"font-size:10.5pt;font-family:&quot;\"></span>', 'C.递归函数', 'D.嵌套函数');
INSERT INTO `question` VALUES ('88', '解决定义二义性问题的方法有（）', '2', '1', '1', '0', '0', 'A.只能使用作用域分辨运算符', 'B.使用作用域分辨运算符或成员名限定', 'C.使用作用域分辨运算符或虚基类', 'D.使用成员名限定或赋值兼容规则');
INSERT INTO `question` VALUES ('89', '在main函数中可以用p.a的形式访问派生类对象p的基类成员a，其中a是（） ', '2', '1', '2', '0', '0', 'A.私有继承的公有成员 ', 'B.公有继承的私有成员', 'C.公有继承的保护成员', 'D.公有继承的公有成员');
INSERT INTO `question` VALUES ('90', '在C++中不返回任何类型的函数应该说明为（）', '2', '1', '2', '0', '0', 'A.Int', 'B.char', 'C.void', 'D.double');
INSERT INTO `question` VALUES ('91', '若Sample类中的一个成员函数说明如下： void set(Sample&amp; a)，则Sample&amp; a的含义是（）', '2', '1', '3', '0', '0', 'A.指向类Sample的名为a的指针', 'B.a是类Sample的对象引用，用来作函数Set（）的形参', 'C.将a的地址赋给变量Set', 'D.变量Sample与a按位与的结果作为函数Set的参数');
INSERT INTO `question` VALUES ('92', '要实现动态联编必须（）', '2', '1', '4', '0', '0', 'A.通过成员名限定来调用虚函数', 'B.通过对象名来调用虚函数', 'C.通过派生类对象来调用虚函数', 'D.通过对象指针或引用来调用虚函数');
INSERT INTO `question` VALUES ('93', '在派生类中定义虚函数时，可以与基类中相应的虚函数不同的是（）', '1', '1', '1', '0', '0', 'A.参数类型 ', 'B.参数个数', 'C.函数名称', 'D.函数体');
INSERT INTO `question` VALUES ('94', '实现两个相同类型数加法的函数模板的声明是（）', '1', '1', '2', '0', '0', 'A.add(T x,T\r\ny)', 'B.T add(x,y)', 'C.T add(T x,y)', 'D.T add(T x,T y)');
INSERT INTO `question` VALUES ('95', '下列不是描述类的成员函数的是（）', '1', '1', '3', '0', '0', 'A.构造函数', 'B.析构函数', 'C.友元函数', 'D.拷贝构造函数');
INSERT INTO `question` VALUES ('96', '继承机制的作用是（）', '1', '1', '3', '0', '0', 'A.信息隐藏 ', 'B.数据封装', 'C.定义新类', 'D.数据抽象');
INSERT INTO `question` VALUES ('97', '已知：p是一个指向类A数据成员m的指针，A1是类A的一个对象。如果要给m赋值为5，正确 的是（）', '1', '1', '4', '0', '0', 'A.A1.p=5;', 'B.A1-&gt;p=5;', 'C.A1.*p=5;', 'D.*A1.p=5;');
INSERT INTO `question` VALUES ('98', '如果采用动态多态性，要调用虚函数的是（）', '1', '1', '4', '0', '0', 'A.基类对象指针 ', 'B.对象名', 'C.基类对象 ', 'D.派生类名');
INSERT INTO `question` VALUES ('99', '若有以下定义，则说法错误的是（） int a=100,*p=&amp;a;', '2', '1', '1', '0', '0', 'A.声明变量p，是一个指针变量 ', 'B.变量p经初始化，获得变量a的地址', 'C.变量p只可以指向一个整型变量 \r\n', 'D.变量p的值为100');
INSERT INTO `question` VALUES ('100', 'C++语言建立类族是通过（）', '2', '1', '4', '0', '0', 'A.类的嵌套 ', 'B.类的继承', 'C.虚函数', 'D.抽象类');
INSERT INTO `question` VALUES ('101', 'C++的流库预定义了4个流，它们是cin、cout、clog和___。', '1', '3', '1', '2', '0', null, null, null, null);
INSERT INTO `question` VALUES ('102', '每个对象都是所属类的一个___。', '1', '3', '1', '2', '0', null, null, null, null);
INSERT INTO `question` VALUES ('103', '在已经定义了整型指针ip后，为了得到一个包括10个整数的数组并由ip所指向，应使用语 句___。', '1', '3', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('104', '函数模板中紧随template之后尖括号内的类型参数都要冠以保留字___。 ', '1', '3', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('105', '定义类的动态对象数组时，系统只能够自动调用该类的___构造函数对其进行初始化。 ', '1', '3', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('106', '表达式cout&lt;&lt;end1 还可表示为___。', '1', '3', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('107', '在C++中，访问一个指针所指向的对象的成员所用的指向运算符是___。', '1', '3', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('108', '假如一个类的名称为MyClass，使用这个类的一个对象初始化该类的另一个对象时，可以调 用___构造函数来完成此功能。', '1', '3', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('109', '对赋值运算符进行重载时，应声明为___函数。', '1', '3', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('110', '如果要把A类成员函数f（）且返回值为void声明为类B的友元函数，则应在类B的定义中加 入的语句___。', '1', '3', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('111', '下列程序段的输出结果是___。for(i=0,j=10,k=0;i&lt;=j;i++,j-=3,k=i+j);cout&lt;&lt;k;', '1', '3', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('112', 'String 类的___方法返回查找到的字符串在主串的位置。', '1', '3', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('113', 'int n=0; while（n=1）n++; while循环执行次数是___。', '2', '3', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('114', '控制格式输入输出的操作中，函数___是用来设置填充字符。要求给出函数名和参数类型 ', '2', '3', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('115', 'C++语言支持的两种多态性分别是编译时的多态性和___的多态性。', '2', '3', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('116', '设函数sum是由函数模板实现的，并且sum(3,6)和sum(4.6,8)都是正确的函数调用，则函 数模板具有___个类型参数。', '2', '3', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('117', '执行下列代码 string str(\"HelloC++\");\r\ncout&lt;&lt;str.substr(5，3); 程序的输出结果是___。', '2', '3', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('118', '在面向对象的程序设计中，将一组对象的共同特性抽象出来形成___。', '2', '3', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('119', '定义类动态对象数组时，元素只能靠自动调用该类的___来进行初始化。', '2', '3', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('120', '已知有20个元素int类型向量V1，若用V1初始化为V2向量，语句是___。', '2', '3', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('121', '假设int a=1,b=2;则表达式<span>(++a/b)*b--的值为___。 ', '3', '3', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('122', '抽象类中至少要有一个___函数。', '3', '3', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('123', '一个抽象类的派生类可以实例化的必要条件是实现了所有的___。', '3', '3', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('124', '下面程序的输出结果为<span>___</span>。<span> #include\r\n&lt;iostream.h&gt; void main() {int\r\nnum=2,i=6; do {i--; num++;\r\n}while(--i);\r\ncout&lt;&lt;num&lt;&lt;endl; }', '3', '3', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('125', '静态成员函数、友元函数、构造函数和析构函数中，不属于成员函数的是___。', '3', '3', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('126', '在用C＋＋进行程序设计时，最好用___代替malloc。 ', '3', '3', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('127', '由const修饰的对象称为___。', '3', '3', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('128', '在C++程序设计中，建立继承关系倒挂的树应使用___继承。 ', '3', '3', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('129', '基类的公有成员在派生类中的访问权限由___决定。 ', '3', '3', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('130', '不同对象可以调用相同名称的函数，但执行完全不同行为的现象称为___', '3', '3', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('131', 'this指针始终指向调用成员函数的___。', '3', '3', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('132', '预处理命令以___符号开头。', '3', '3', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('133', 'C++程序的源文件扩展名为___。 ', '1', '3', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('134', '在#include命令中所包含的头文件，可以是系统定义的头文件，也可以是___的头文件。', '1', '3', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('135', 'vector类中向向量尾部插入一个对象的方法是___。', '1', '3', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('136', 'C++语言中如果调用函数时，需要改变实参或者返回多个值，应该采取___方式。', '1', '3', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('137', '语句序列 ifstream infile; infile.open(“data.dat”); 的功能可用一个语句实现，这个语句是___。', '1', '3', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('138', '如果要把类B的成员函数void fun()说明为类A的友元函数，则应在类Ａ中加入语句___。', '1', '3', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('139', '在编译指令中，宏定义使用___指令。', '1', '3', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('140', '单目运算符作为类成员函数重载时，形参个数为___个。 ', '1', '3', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('141', '抽象类中至少要有一个___函数。 ', '2', '3', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('142', '设类A有成员函数void f(void)；若要定义一个指向类成员函数的指针变量pf来指向f，该 指针变量的声明语句是：___。', '2', '3', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('143', '执行下列程序 double a=3.1415926,b=3.14;\r\ncout&lt;&lt;setprecision(5)&lt;&lt;a&lt;&lt;\",\r\n\"&lt;&lt;setprecision(5)&lt;&lt;b&lt;&lt;endl; 程序的输出结果是___。', '2', '3', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('144', 'vector类中用于删除向量中的所有对象的方法是___。', '2', '3', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('145', '重载的运算符保持其原有的___、优先级和结合性不变。', '2', '3', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('146', '编译时的多态性通过___函数实现。', '2', '3', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('147', '基类的公有成员在派生类中的访问权限由___决定。', '2', '3', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('148', '假设类X的对象x是类Y的成员对象，则“Y Obj”语句执行时，先调用类___的构造函数。', '2', '3', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('149', '下列程序段的输出结果是___。 cout.setf(ios::showpos); cout&lt;&lt;509.3&lt;&lt;endl;', '3', '3', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('150', '下列程序段的输出结果是___\r\nfor(i=0,j=10,k=0;i&lt;=j;i++,j-=3,k=i+j);cout&lt;&lt;k;', '3', '3', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('151', 'C＋＋中ostream的直接基类___。', '3', '3', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('152', 'int n=0; while（n=1）n++; while循环执行次数是___。', '3', '3', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('153', 'C++中有两种继承：单继承和___。', '3', '3', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('154', '在C++中，利用向量类模板定义一个具有10个int的向量A，其元素均被置为1，实现此操作\r\n的语句___。', '3', '3', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('155', 'vector类中向向量尾部插入一个对象的方法是___。 ', '3', '3', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('156', 'C++语言中如果调用函数时，需要改变实参或者返回多个值，应该采取___方式。', '3', '3', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('157', '若函数的定义处于调用它的函数之前，则在程序开始可以省去该函数的___语句。 ', '1', '3', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('158', '在C++中有两种参数传递方式：传值和___。', '1', '3', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('159', '将指向对象的引用作为函数的形参，形参是对象的引用，实参是___。 ', '1', '3', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('160', '若要使用string类，需要引入的头文件是___。', '1', '3', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('161', '在函数前面用___保留字修饰时，则表示该函数表为内联函数。', '1', '3', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('162', '向量操作方法中___方法返回向量中的第一个对象。', '1', '3', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('163', 'C++派生类使用两种基本的面向对象技术：第一种称为性质约束，即对基类的性质加以限制 ；第二种称为___，即增加派生类的性质。', '1', '3', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('164', '重载的运算符保持其原有的___、优先级和结合性不变。', '1', '3', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('165', '编译时的多态性通过___函数实现。', '1', '3', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('166', '预处理语句有三种，分别是宏定义、文件包含和___。', '1', '3', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('167', '构造函数、析构函数和友元函数中，不是该类成员的是___。', '1', '3', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('168', '控制格式输入输出的操作中，函数___是设置域宽的。要求给出函数名和参数类型）。', '1', '3', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('169', '派生类的成员一般分为两部分，一部分是___，另一部分是自己定义的新成员。 ', '3', '3', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('170', 'C＋＋中ostream的直接基类__', '3', '3', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('171', 'vector的___方法返回向量中的最后一个对象。', '3', '3', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('172', '执行下列代码int\r\ni=230; cout\r\n&lt;&lt;\"i=\"&lt;&lt;hex &lt;&lt;i&lt;&lt;endl; 程序的输出结果为___。 ', '3', '3', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('173', '在C++中有两种参数传递方式即值传递和___传递。', '2', '3', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('174', '使用new为int数组动态分配10个存储空间是___。', '2', '3', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('175', '面向对象的四个基本特性是多态性、继承性、和封装性___。', '2', '3', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('176', '定义虚函数所用的关键字是___。', '2', '3', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('177', '执行下列代码cout&lt;&lt;“oct:”&lt;&lt;oct&lt;&lt;34; 程序的输出结果是___。 ', '1', '3', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('178', '在C++中要创建一个文件输入流对象fin，同时该对象打开文件“Test.txt”用于输入，则 正确的声明语句是___。', '1', '3', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('179', '如果一个派生类只有一个唯一的基类，则这样的继承关系称为___。 ', '1', '3', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('180', '假设int a=1,b=2;则表达式(++a/b)*b--的值为___。', '1', '3', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('181', '复制构造函数使用___作为形式参数。', '2', '3', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('182', '通过C++语言中的___机制，可以从现存类中构建其子类。', '2', '3', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('183', '静态成员函数、友元函数、构造函数和析构函数中，不属于成员函数的是___。', '2', '3', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('184', '在下面的类定义中，私有成员有___。class\r\nLocation {int X,Y; protected: int\r\nzeroX,zerxY; int SetZero(intzeroX,\r\nintzeroY); private: int length,height;\r\npublic: void init(int initX,int initY);\r\nint GetX(); int GetY(); };', '2', '3', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('185', '在C++程序设计中，建立继承关系倒挂的树应使用___继承。', '1', '3', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('186', 'C++支持的两种多态性分别是___多态性和运行多态性。', '1', '3', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('187', 'C++中语句const char * const p=“hello”；所定义的指针p和它所指的内容都不能被 ___。', '1', '3', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('188', '在C++中，定义虚函数的关键字是___。 ', '1', '3', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('189', '采用私有派生方式，基类的public成员在私有派生类中是___成员。', '3', '3', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('190', '对赋值运算符进行重载时，应声明为___函数。', '3', '3', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('191', '在C++中有两种参数传递方式即值传递和___传递。', '3', '3', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('192', '预处理命令以___符号开头。', '3', '3', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('193', '在构造函数和析构函数中调用虚函数时采用___。', '3', '3', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('194', 'C++是通过引用运算符___来定义一个引用的。 ', '3', '3', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('195', '如果要把类B的成员函数void fun()说明为类A的友元函数，则应在类Ａ中加入语句___。', '3', '3', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('196', '如果要把PI声明为值为3.14159类型为双精度实数的符号常量，该声明语句是___。', '3', '3', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('197', '在C＋＋四个流对象中，___用于标准屏幕输出。', '1', '3', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('198', '执行下列代码 int a=32; double\r\nc=32; cout.setf(ios::hex);\r\ncout&lt;&lt;\"hex:a=\"&lt;&lt;a&lt;&lt;\",c=\"&lt;&lt;c&lt;&lt;endl;\r\ncout.unsetf(ios::hex); 程序的输出结果为___。', '1', '3', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('199', '已知有20个元素int类型向量V1，若用V1初始化为V2向量，语句是___。', '1', '3', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('200', '下列________是C++的函数声明。', '1', '2', '1', '0', '0', 'A.float result( );', 'B.float result(float, float);', 'C.float result(x, y);', 'D.float result(float x, float y) { „ }');
INSERT INTO `question` VALUES ('201', '如果类A继承了类B，则类A称为________。', '1', '2', '2', '0', '0', 'A.派生类', 'B.继承类', 'C.子类', 'D.父类');
INSERT INTO `question` VALUES ('202', '当用public继承从基类派生一个类时，基类的________成员可被派 生类中的成员函数访问。', '1', '2', '3', '0', '0', 'A.protected', 'B.public', 'C.private', 'D.friend');
INSERT INTO `question` VALUES ('203', '下列函数中，可以作为虚函数的是__________。', '1', '2', '4', '0', '0', 'A.析构函数', 'B.成员函数', 'C.普通函数', 'D.构造函数');
INSERT INTO `question` VALUES ('204', '关于派生类的说法不正确的是_______。', '2', '2', '1', '0', '0', 'A.派生类可显现基类的任何函数成员', 'B.派生类可重载已有的函数成员', 'C.派生类可以拥有自己的新成员', 'D.派生类无法给基类的数据成员初始化');
INSERT INTO `question` VALUES ('205', '在C++语言提供的不合法关键字是______', '2', '2', '2', '0', '0', 'A.Case', 'B.swicth', 'C.cher', 'D.default ');
INSERT INTO `question` VALUES ('206', '请选出不可用作C语言用户标识符的选项______', '2', '2', '3', '0', '0', 'A.a3_b3 _123 IF', 'B.For -abc Case', 'C.void define WORD', 'D.2a DO sizeof ');
INSERT INTO `question` VALUES ('207', '语言提供的非法的数据类型关键字是_____', '2', '2', '4', '0', '0', 'A.short', 'B.Char ', 'C.Double', 'D.integer');
INSERT INTO `question` VALUES ('208', '以下为不合法的十六进制数是_________。', '3', '2', '1', '0', '0', 'A.0x2A', 'B.0x11Au', 'C.0X0', 'D.3A');
INSERT INTO `question` VALUES ('209', '<p>\r\n	若有如下的定义：\r\n</p>\r\n<p>\r\n	<p class=\"MsoNormal\">\r\n		<span>class sam</span>\r\n	</p>\r\n	<p class=\"MsoNormal\">\r\n		<span>{</span>\r\n	</p>\r\n	<p class=\"MsoNormal\">\r\n		<span>public:int num;</span>\r\n	</p>\r\n	<p class=\"MsoNormal\">\r\n		<span>void print(){cout&lt; &lt; num;}</span>\r\n	</p>\r\n	<p class=\"MsoNormal\">\r\n		<span>}</span>\r\n	</p>\r\n	<p class=\"MsoNormal\">\r\n		<span>x,*p=&amp;x;</span>\r\n	</p>\r\n<span>则下列表达式中，__________是正确的（无语法错误）</span>\r\n</p>', '3', '2', '2', '0', '0', 'A.(*p).print( )', 'B.p-&gt;num=10', 'C.p.num', 'D.x.num=5');
INSERT INTO `question` VALUES ('210', '有关sizeof(double)不正确的描述是________。', '3', '2', '3', '0', '0', 'A.一种函数调用', 'B.一个双精度型表达式', 'C.一个整型表达式', 'D.一个不合法的表达式');
INSERT INTO `question` VALUES ('211', '在一个单链表结构中，指针p指向链表的倒数第二个结点，指针s指向新结点，则能将s所指的结点插入到链表末尾的语句组是______', '3', '2', '4', '0', '0', 'A.p=p-&gt;next; s-&gt;next=p; p-&gt;next=s', 'B.p=(*p).next; (*s).next=(*p).next; (*p).next=s', 'C.s-&gt;next=NULL; p=p-&gt;next; p-&gt;next=s', 'D.p=p-next; s-next=p-&gt;next;\r\np-&gt;next=s');
INSERT INTO `question` VALUES ('212', '若x是整型变量，pb是基类型为整型的指针变量，则不正确的赋值表达 式是_______。', '1', '2', '1', '0', '0', 'A.*pb=&amp;x;', 'B.<span>pb=&amp;x</span>', 'C.pb=x;', 'D.*pb=*x 5');
INSERT INTO `question` VALUES ('213', '下面各语句行中，不能正确进行赋字符串操作的语句行是_______', '1', '2', '2', '0', '0', 'A.char *s; scanf(\"%s\",s);', 'B.char st[4][5]={\"ABCDE\"};', 'C.char s[5]={\'A\',\'B\',\'C\',\'D\',\'E\'};', 'D.char *s; s=\"ABCDE\";');
INSERT INTO `question` VALUES ('214', '下列________函数能实现字符串的复制。', '1', '2', '3', '0', '0', 'A.void f(char *s,char *t) { do{ *s++=*t++; }\r\nwhile(*t!=\'\\0\'); }', 'B.void f(char *s,char *t) { while(*t) { *s++=*t++; }\r\n*s=\'\\0\'; }', 'C.void f(char *s,char *t) { do { *s=*t; s++;\r\n}while(*t++); }', 'D.void f(char *s,char *t) { unsigned i; for (i=0;i&lt;\r\nstrlen(t);i++) s[i]=t[i]; }');
INSERT INTO `question` VALUES ('215', '若有以下说明和语句，请选出哪个是对c数组元素的不正确引 用_______ int c[4][5], (*cp)[5]; cp=c;', '1', '2', '4', '0', '0', 'A.*(cp+1)+3', 'B.cp+1', 'C.*(cp+3)', 'D.*(*cp+2)');
INSERT INTO `question` VALUES ('216', '设有以下定义:int a[3][4]={1,2,3,4,5,6,7,8,9,10,11,12};int (*ptr)[4]=a,*p=a[0];则下列表达式中，能正确表示数组元素a[2][1]的表达式有________。', '2', '2', '1', '0', '0', 'A.*(p+9)', 'B.*(*(a+2)+1)', 'C.(*ptr+2)+1', 'D.*((*ptr+2)[1])');
INSERT INTO `question` VALUES ('217', '若有以下定义和语句: int w[2][3],(*pw)[3];\r\npw=w; 则对w数组元素合法引用是________。', '2', '2', '2', '0', '0', 'A.pw[0][0]', 'B.*(pw[1]+2)', 'C.*(w[0]+2)', 'D.*(pw+1)[2]');
INSERT INTO `question` VALUES ('218', '有以下语句：char\r\nstr[4][12]={\"aaa\",\"bbbb\",\"ccccc\",\"dddddd\"},*strp[4];int i;\r\nfor(i=0;i&lt; 4;i++)strp[i]=str[i]; ________是对字符串的正确引用，其中0≤k&lt; 4。', '2', '2', '3', '0', '0', 'A.strp[k]', 'B.*strp', 'C.str[k]', 'D.strp');
INSERT INTO `question` VALUES ('219', '设有如下定义: int (*ptr)(); 则以下叙述中不正确的是______', '2', '2', '4', '0', '0', 'A.ptr是指向一维组数的指针变量', 'B.ptr是指向int型数据的指针变量', 'C.ptr是指向函数的指针,该函数返回一个int型数据', 'D.ptr是一个函数名,该函数的返回值是指向int型数据的指针');
INSERT INTO `question` VALUES ('220', '若有定义：char\r\n*str[]={\"one\",\"two\",\"three\"},**p=str; 则可以表示出字符\'t\'的表达是________', '3', '2', '1', '0', '0', 'A.*str+2', 'B.*str[2]', 'C.*(p+1)', 'D.**++p');
INSERT INTO `question` VALUES ('221', 'C语言规定，有关main函数参数的描述不正确的是________。', '3', '2', '2', '0', '0', 'A.只能有0个', 'B.只能有0个或一个', 'C.只能有0个或2个', 'D.可有任意个');
INSERT INTO `question` VALUES ('222', '若有定义\"int\r\nx[10]={1,2,3,4,5,6,7,8,9,10}, *px=x;\"，则能够正确输出x数组元素的值的是________。', '3', '2', '3', '0', '0', 'A.*px++', 'B.&amp;px', 'C.*px', 'D.px[10]');
INSERT INTO `question` VALUES ('223', '以下不能对数组a进行正确初始化的语句是__AC_________。', '3', '2', '4', '0', '0', 'A.int a[]={};', 'B.int a[3]={1, 2};', 'C.int a[3]={0,1,2,3};', 'D.int a[]={1};');
INSERT INTO `question` VALUES ('224', '不合法的数组定义是_____ ', '1', '2', '1', '0', '0', 'A.char a[]={0,1,2,3,4,5};', 'B.int a[]=\"string\";', 'C.int a[5]={0,1,2,3,4,5};', 'D.vhst s=\"string\";');
INSERT INTO `question` VALUES ('225', '下列关于数组初始化的说法正确的是___________。', '1', '2', '2', '0', '0', 'A.若对数组a定义：\"static int\r\nx[10];\"，则数组元素值均为0', 'B.\"int x[10]={1,2,3,4,5,6,7,8,9};\"表示x[9]元素值为9', 'C.对于\"int x[10];\"它的元素初值是不确定的', 'D.\"int x[10]={1,2,3,4,5};\"是不合法的，因为数组长度为10，而初始值仅有5个');
INSERT INTO `question` VALUES ('226', '能把字符串:\"Hello!\"赋给数组b的语句是________。', '1', '2', '3', '0', '0', 'A.char b[10];strcpy(b,\"Hello!\");', 'B.char b[10]={\'H\',\'e\',\'l\',\'l\',\'o\',\'!\'};', 'C.char b[10]=\"Hello!\";', 'D.char b[10];b=\"Hello!\";');
INSERT INTO `question` VALUES ('227', '下述对C语言字符数组的描术正确的是________', '1', '2', '4', '0', '0', 'A.不可以用关系运算符对字符数组中的字符串进行比较', 'B.字符数组可以存放字符串', 'C.字符数组中的字符串可以整体输入、输出', 'D.可以在赋值语句中通过赋值运算符\"=\"对字符数组整体赋值');
INSERT INTO `question` VALUES ('228', '使用关键字class定义的类中默认的访问权限是私有(private)的。', '1', '4', '1', '2', '0', null, null, null, null);
INSERT INTO `question` VALUES ('229', '作用域运算符(::)只能用来限定成员函数所属的类.', '1', '4', '2', '2', '0', null, null, null, null);
INSERT INTO `question` VALUES ('230', '构造函数和析构函数都不能重载.', '1', '4', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('231', '析构函数是一种函数体为空的成员函数.', '1', '4', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('232', '说明或定义对象时,类名前面不需要加class关键字.', '1', '4', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('233', '对象成员的表示与结构变量成员的表示相同,使用运算符.或-&gt;.', '1', '4', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('234', '所谓私有成员是指只有类中所提供的成员函数才能直接使用它们,任何类以外的函数对它们的访问都是非法的.', '1', '4', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('235', '某类中的友元类的所有成员函数可以存取或修改该类中的私有成员.', '1', '4', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('236', '可以在类的构造函数中对静态数据成员进行初始化.', '2', '4', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('237', '函数的定义不可以嵌套,类的定义可以嵌套.', '2', '4', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('238', 'C++语言中,既允许单继承,又允许多继承.', '2', '4', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('239', '派生类是从基类派生出来,它不能再生成新的派生类', '2', '4', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('240', '派生类的继承方式中有两种:公有继承和私有继承.', '2', '4', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('241', '在公有继承中,基类中的公有成员和私有成员在派生类中都是可见的.', '2', '4', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('242', '在公有继承中,基类中只有公有成员对派生类对象是可见的.', '2', '4', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('243', '在私有继承中,基类中只有公有成员对派生类是可见的.', '2', '4', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('244', '在私有继承中,基类中所有成员对派生类的对象都是不可见的.', '3', '4', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('245', '在保护继承中,对于派生类的访问同于公有继承,而对于派生类的对象的访问同于私有承.', '3', '4', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('246', '派生类中至少包含了它的所有基类的成员,在这些成员中可能有的是不可访问.', '3', '4', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('247', '构造函数可以被继承.', '3', '4', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('248', '析构函数不能被继承.', '3', '4', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('249', '子类型是不可逆的.', '3', '4', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('250', '只要是类M继承了类N,就可以说类M是类N的子类型.', '3', '4', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('251', '如果A类型是B类型的子类型,则A类型必然适应B类型.', '3', '4', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('252', '多继承情况下,派生类的构造函数中基类构造函数的执行顺序取决于定义派生类时所指的各基类的顺序.', '2', '4', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('253', '单继承情况下,派生类中对基类成员的访问也会出现二义性.', '2', '4', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('254', '解决多继承情况下出现的二义性的方法之一是使用成员名限定法.', '2', '4', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('255', '虚基类是用来解决多继承中公共基类在派生类中只产生一个基类子对象的问题.', '2', '4', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('256', '指向对象的指针和指向类的成员的指针在表达形式上是不相同的.', '1', '4', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('257', '已知:m是类A的对象,n是类A的公有数据成员,p是指向类A中n成员的指针.下种表是等价的.m.n和m.*p', '1', '4', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('258', '指向对象的指针与对象都可以作为函数参数,但是使用前者比后者好些.', '1', '4', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('259', '对象引用作为函数参数比用对象指针更方便些.', '1', '4', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('260', '对象数组的元素可以是不同类的对象.', '1', '4', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('261', '对象数组的既可以赋初值又可以赋值.对39指向对象数组的指针不一定必须指向数组的元素.', '1', '4', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('262', '一维对象指针数组的每个元素应该是某个类的对象的地址值.', '1', '4', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('263', 'constchar*p说明了p是指向字符串常量的指针.', '1', '4', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('264', '一个能够更新的变量使用在一个不能被更新的环境中是不破坏类型保护的,反之亦然.', '2', '4', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('265', '一个类的构造函数中可以不包含对其子对象的初始化.', '2', '4', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('266', '转换函数不是成员函数,它是用来时行强制类型转换的.', '2', '4', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('267', '使用模板可以减少重复劳动,提高代码重用率.', '2', '4', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('268', 'C++语言中模板分为函数模板和类模板两种.', '2', '4', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('269', '类模板可以生成若干个模板类,每个模板类又可定义若干个对象.', '2', '4', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('270', '使用提取符(&lt;&lt;)可以输出各种类型的变量的值,也可以输出指针值.', '2', '4', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('271', '预定义的插入符从键盘上接收数据是不带缓冲区的.', '2', '4', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('272', '预定义的提取符和插入符是可以重载的.', '3', '4', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('273', '记录流的当前格式化状态的标志字中每一位用于记录一种格式,这种格式是不能被设置清除的.', '3', '4', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('274', '设置和清除格式标志字的成员函数需要通过对象来引用它们,输出显示格式的对象通常dout.', '3', '4', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('275', '操作子本身是一个对象,它可以直接被提取符或插入符操作.', '3', '4', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('276', 'get()函数不能从流中提取终止字符,字符仍留在流中.getline()函数从流中提取终止字符,但终止字符被丢弃.', '3', '4', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('277', 'ios类的成员函数clear()是用来清除整个屏幕的.', '3', '4', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('278', '使用打开文件函数open()之,需要定义一个流类对象,使用open()函数来操作该对象.', '3', '4', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('279', '使用关闭文件函数close()关闭一个文件时,但流对象仍存在.', '3', '4', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('280', '以app方式打开文件时,当前的读指针和写指针都定位于文件尾.', '1', '4', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('281', '打开ASCII码流文件和二进制流文件时,打开方式是相同的', '1', '4', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('282', 'read()和write()函数可以读写文本文件,也可以读写二进制文件.', '1', '4', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('283', '流的状态包含流的内容、长度和下一次提取或插入操作的当前位置.', '1', '4', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('284', 'seekg()函数seekp()函数分别用来定位读指针和写指针.如果使用seek()函数可以同时定义读写指针.', '1', '4', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('285', '函数的参数个数和类型都相同,只是返回值不同,这不是重载函数.', '1', '4', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('286', '重载函数可以带默认值参数,但要注意二义性.', '1', '4', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('287', '多数运算符可以重载,个别运算符不能,运算符重载是通过函数定义实现的.', '1', '4', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('288', '对每个可重载的运算符来说,只能重载为友元函数.', '1', '4', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('289', '重载的运算符保持原来的优先级和结合性以及操作数的个数.', '1', '4', '2', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('290', '虚函数是用virtual关键字说明的成员函数.', '1', '4', '3', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('291', '构造函数说明为纯虚函数是没有意义的.', '1', '4', '4', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('292', '简述C++的发展简况。', '1', '6', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('293', 'C++语言有那些主要特点？', '2', '6', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('294', '编写的C++语言的程序主要由那些基本组成部分构成？ ', '3', '6', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('295', 'C++语言编写的程序代码有那些格式特点？', '1', '6', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('296', '编写C++语言程序，在书写格式上应该遵从哪些基本原则？', '2', '6', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('297', '什么叫关键字？什么叫标识符？', '3', '6', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('298', 'C++语言有哪些常量？请给出实例。', '1', '6', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('299', '定义盒子Box类，要求具有以下成员：长、宽、高分别为x,y,z，可设置盒子形状； 可计算盒子体积；可计算盒子的表面积。', '1', '8', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('300', '有两个长方柱，其长、宽、高分别为：（1）30，20，10；（2）12，10，20。分别 求他们的体积。编一个基于对象的程序，在类中用带参数的构造函数。', '2', '8', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('301', '有两个长方柱，其长、宽、高分别为：（1）12，20，25；（2）10，30，20。分别 求他们的体积。编一个基于对象的程序，且定义两个构造函数，其中一个有参数，一个无参数。', '3', '8', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('302', '建立一个对象数组，内放5个学生的数据（学号、成绩），用指针指向数组首元素， 输出第1，3，5个学生的数据。初值自拟。', '1', '8', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('303', '建立一个对象数组，内放5个学生的数据（学号、成绩），设立一个函数max，用 指向对象的指针作函数参数，在max函数中找出5个学生中成绩最高者，并输出其学号。初值自拟。', '2', '8', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('304', '定义一个学生类Student做基类，再派生一个Graduate类，学生类有学号、姓名、 和分数，研究生增加工资，它们有同名的函数display(),利用虚函数，编程分别输出学生和研究生的数据，具体数据自拟。', '3', '8', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('305', '输入20个学生成绩(设为int型)，统计各分数段的人数，分数段为90及90以上、 80到89分、70到79分、60到69分、60分以下。', '3', '8', '1', '0', '0', null, null, null, null);
INSERT INTO `question` VALUES ('306', '㎎㎏㎜㎝㎞㎡', '1', '1', '1', '0', '0', 'A.a', 'B.b', 'C.c', 'D.d');
INSERT INTO `questionlevel` VALUES ('1', '记忆');
INSERT INTO `questionlevel` VALUES ('2', '理解');
INSERT INTO `questionlevel` VALUES ('3', '简单应用');
INSERT INTO `questionlevel` VALUES ('4', '综合应用');
INSERT INTO `questiontype` VALUES ('1', '单项选择');
INSERT INTO `questiontype` VALUES ('2', '多项选择');
INSERT INTO `questiontype` VALUES ('3', '填空');
INSERT INTO `questiontype` VALUES ('4', '判断');
INSERT INTO `questiontype` VALUES ('5', '解释概念');
INSERT INTO `questiontype` VALUES ('6', '简答');
INSERT INTO `questiontype` VALUES ('7', '论述');
INSERT INTO `questiontype` VALUES ('8', '计算');
INSERT INTO `questiontype` VALUES ('9', '证明');
INSERT INTO `questiontype` VALUES ('10', '其他');
INSERT INTO `recorder` VALUES ('345', '123456', '306', '1', '1', '2016-12-28');
INSERT INTO `recorder` VALUES ('346', '123456', '306', '12', '3', '2016-12-28');
INSERT INTO `recorder` VALUES ('347', '123456', '307', 'sds', '1', '2017-02-28');
INSERT INTO `recorder` VALUES ('348', '123456', '307', 'zx', '2', '2017-02-28');
INSERT INTO `recorder` VALUES ('349', '123456', '307', 'c', '2', '2017-02-28');
INSERT INTO `recorder` VALUES ('350', '123456', '307', '', '3', '2017-02-28');
INSERT INTO `recorder` VALUES ('351', '123456', '306', 'a', '1', '2017-03-02');
INSERT INTO `regulation` VALUES ('1', '2');
INSERT INTO `role` VALUES ('1', '教务');
INSERT INTO `role` VALUES ('2', '教师');
INSERT INTO `rolepoweralt` VALUES ('1', '1', '1');
INSERT INTO `rolepoweralt` VALUES ('2', '1', '2');
INSERT INTO `rolepoweralt` VALUES ('3', '1', '3');
INSERT INTO `rolepoweralt` VALUES ('4', '1', '4');
INSERT INTO `rolepoweralt` VALUES ('5', '1', '5');
INSERT INTO `rolepoweralt` VALUES ('6', '1', '6');
INSERT INTO `rolepoweralt` VALUES ('7', '1', '7');
INSERT INTO `rolepoweralt` VALUES ('8', '1', '8');
INSERT INTO `rolepoweralt` VALUES ('9', '1', '9');
INSERT INTO `rolepoweralt` VALUES ('10', '1', '10');
INSERT INTO `rolepoweralt` VALUES ('11', '1', '11');
INSERT INTO `rolepoweralt` VALUES ('12', '1', '12');
INSERT INTO `rolepoweralt` VALUES ('13', '1', '13');
INSERT INTO `rolepoweralt` VALUES ('14', '1', '14');
INSERT INTO `rolepoweralt` VALUES ('15', '1', '15');
INSERT INTO `rolepoweralt` VALUES ('16', '1', '16');
INSERT INTO `rolepoweralt` VALUES ('17', '1', '17');
INSERT INTO `rolepoweralt` VALUES ('18', '1', '18');
INSERT INTO `rolepoweralt` VALUES ('19', '1', '19');
INSERT INTO `rolepoweralt` VALUES ('20', '2', '20');
INSERT INTO `rolepoweralt` VALUES ('21', '2', '21');
INSERT INTO `rolepoweralt` VALUES ('22', '2', '22');
INSERT INTO `rolepoweralt` VALUES ('23', '2', '23');
INSERT INTO `sort` VALUES ('1067', '1', '79', '299', '8', '10');
INSERT INTO `sort` VALUES ('1076', '6', '80', '38', '1', '2');
INSERT INTO `sort` VALUES ('1066', '5', '79', '150', '3', '4');
INSERT INTO `sort` VALUES ('1065', '4', '79', '124', '3', '4');
INSERT INTO `sort` VALUES ('1064', '3', '79', '154', '3', '4');
INSERT INTO `sort` VALUES ('1063', '2', '79', '115', '3', '4');
INSERT INTO `sort` VALUES ('1062', '1', '79', '142', '3', '4');
INSERT INTO `sort` VALUES ('1061', '10', '79', '218', '2', '2');
INSERT INTO `sort` VALUES ('1060', '9', '79', '217', '2', '2');
INSERT INTO `sort` VALUES ('1059', '8', '79', '214', '2', '2');
INSERT INTO `sort` VALUES ('1058', '7', '79', '213', '2', '2');
INSERT INTO `sort` VALUES ('1057', '6', '79', '210', '2', '2');
INSERT INTO `sort` VALUES ('1056', '5', '79', '209', '2', '2');
INSERT INTO `sort` VALUES ('1055', '4', '79', '206', '2', '2');
INSERT INTO `sort` VALUES ('1054', '3', '79', '205', '2', '2');
INSERT INTO `sort` VALUES ('1053', '2', '79', '202', '2', '2');
INSERT INTO `sort` VALUES ('1052', '1', '79', '201', '2', '2');
INSERT INTO `sort` VALUES ('1051', '20', '79', '67', '1', '2');
INSERT INTO `sort` VALUES ('1050', '19', '79', '3', '1', '2');
INSERT INTO `sort` VALUES ('1049', '18', '79', '59', '1', '2');
INSERT INTO `sort` VALUES ('1048', '17', '79', '58', '1', '2');
INSERT INTO `sort` VALUES ('1047', '16', '79', '13', '1', '2');
INSERT INTO `sort` VALUES ('1046', '15', '79', '12', '1', '2');
INSERT INTO `sort` VALUES ('1045', '14', '79', '40', '1', '2');
INSERT INTO `sort` VALUES ('1044', '13', '79', '7', '1', '2');
INSERT INTO `sort` VALUES ('1043', '12', '79', '26', '1', '2');
INSERT INTO `sort` VALUES ('1042', '11', '79', '54', '1', '2');
INSERT INTO `sort` VALUES ('1041', '10', '79', '22', '1', '2');
INSERT INTO `sort` VALUES ('1040', '9', '79', '16', '1', '2');
INSERT INTO `sort` VALUES ('1039', '8', '79', '72', '1', '2');
INSERT INTO `sort` VALUES ('1038', '7', '79', '34', '1', '2');
INSERT INTO `sort` VALUES ('1037', '6', '79', '75', '1', '2');
INSERT INTO `sort` VALUES ('1036', '5', '79', '29', '1', '2');
INSERT INTO `sort` VALUES ('1035', '4', '79', '45', '1', '2');
INSERT INTO `sort` VALUES ('1034', '3', '79', '21', '1', '2');
INSERT INTO `sort` VALUES ('1033', '1', '79', '4', '1', '2');
INSERT INTO `sort` VALUES ('1070', '2', '79', '71', '1', '0');
INSERT INTO `sort` VALUES ('1075', '5', '80', '61', '1', '2');
INSERT INTO `sort` VALUES ('1074', '4', '80', '37', '1', '2');
INSERT INTO `sort` VALUES ('1073', '3', '80', '33', '1', '2');
INSERT INTO `sort` VALUES ('1072', '2', '80', '6', '1', '2');
INSERT INTO `sort` VALUES ('1071', '1', '80', '2', '1', '2');
INSERT INTO `sort` VALUES ('1068', '2', '79', '304', '8', '10');
INSERT INTO `sort` VALUES ('1077', '7', '80', '39', '1', '2');
INSERT INTO `sort` VALUES ('1078', '8', '80', '62', '1', '2');
INSERT INTO `sort` VALUES ('1079', '9', '80', '66', '1', '2');
INSERT INTO `sort` VALUES ('1080', '10', '80', '70', '1', '2');
INSERT INTO `sort` VALUES ('1081', '1', '80', '200', '2', '5');
INSERT INTO `sort` VALUES ('1082', '2', '80', '212', '2', '5');
INSERT INTO `sort` VALUES ('1083', '3', '80', '224', '2', '5');
INSERT INTO `sort` VALUES ('1084', '4', '80', '222', '2', '5');
INSERT INTO `sort` VALUES ('1085', '1', '80', '101', '3', '5');
INSERT INTO `sort` VALUES ('1086', '2', '80', '102', '3', '5');
INSERT INTO `sort` VALUES ('1087', '3', '80', '107', '3', '5');
INSERT INTO `sort` VALUES ('1088', '4', '80', '133', '3', '5');
INSERT INTO `sort` VALUES ('1089', '1', '80', '302', '8', '40');
INSERT INTO `sort` VALUES ('1090', '1', '83', '2', '1', '0');
INSERT INTO `sort` VALUES ('1091', '1', '86', '101', '3', '0');
INSERT INTO `sort` VALUES ('1092', '2', '86', '102', '3', '0');
INSERT INTO `sort` VALUES ('1095', '1', '87', '2', '1', '0');
INSERT INTO `sort` VALUES ('1096', '1', '88', '3', '1', '0');
INSERT INTO `sort` VALUES ('1097', '2', '88', '4', '1', '0');
INSERT INTO `sort` VALUES ('1098', '3', '88', '3', '1', '0');
INSERT INTO `sort` VALUES ('1099', '4', '88', '4', '1', '0');
INSERT INTO `sort` VALUES ('1102', '1', '90', '2', '1', '0');
INSERT INTO `sort` VALUES ('1103', '2', '90', '3', '1', '0');
INSERT INTO `sort` VALUES ('1104', '3', '90', '4', '1', '0');
INSERT INTO `sort` VALUES ('1105', '4', '90', '5', '1', '0');
INSERT INTO `sort` VALUES ('1106', '1', '90', '102', '3', '0');
INSERT INTO `sort` VALUES ('1107', '2', '90', '101', '3', '0');
INSERT INTO `sort` VALUES ('1108', '1', '90', '228', '4', '0');
INSERT INTO `sort` VALUES ('1109', '2', '90', '229', '4', '0');
INSERT INTO `sort` VALUES ('1110', '3', '90', '228', '4', '0');
INSERT INTO `sort` VALUES ('1111', '4', '90', '229', '4', '0');
INSERT INTO `teacher` VALUES ('123456', 'wangyao', '', '2017-02-28', '', '', '9810ff71-2c17-4f65-b3b9-f83973f9d325.jpg', '25d55ad283aa400af464c76d713c07ad');
INSERT INTO `teacher` VALUES ('1234561', 'wanggu', null, null, null, null, null, 'fcea920f7412b5da7be0cf42b8c93759');
INSERT INTO `teacher` VALUES ('1234562', 'wangyao', '', '2016-12-28', '', '', null, 'fcea920f7412b5da7be0cf42b8c93759');
INSERT INTO `teacher` VALUES ('1234563', 'muxiangyu', null, null, null, null, null, 'fcea920f7412b5da7be0cf42b8c93759');
INSERT INTO `teacher` VALUES ('1234564', 'liying', null, null, null, null, null, 'fcea920f7412b5da7be0cf42b8c93759');
INSERT INTO `teacher` VALUES ('1234565', 'haojianfen', null, null, null, null, null, 'fcea920f7412b5da7be0cf42b8c93759');
INSERT INTO `teachercoursealt` VALUES ('129', '1234565', '10');
INSERT INTO `teachercoursealt` VALUES ('128', '1234564', '10');
INSERT INTO `teachercoursealt` VALUES ('127', '1234562', '10');
INSERT INTO `teachercoursealt` VALUES ('126', '1234561', '10');
INSERT INTO `teachercoursealt` VALUES ('124', '1234563', '10');
INSERT INTO `teachercoursealt` VALUES ('125', '123456', '10');
INSERT INTO `teachercoursealt` VALUES ('130', '123456', '12');
INSERT INTO `teachercoursealt` VALUES ('131', '1234561', '12');
INSERT INTO `teachercoursealt` VALUES ('132', '123456', '44');
INSERT INTO `teachercoursealt` VALUES ('133', '1234561', '44');
INSERT INTO `teachercoursealt` VALUES ('134', '1234565', '44');
INSERT INTO `teachercoursealt` VALUES ('138', '1234564', '44');
INSERT INTO `teachercoursealt` VALUES ('136', '1234562', '44');
INSERT INTO `teachercoursealt` VALUES ('137', '1234563', '44');
INSERT INTO `teachercoursealt` VALUES ('139', '123456', '48');
INSERT INTO `teachercoursealt` VALUES ('140', '1234561', '48');
INSERT INTO `teachercoursealt` VALUES ('141', '1234562', '48');
INSERT INTO `teachercoursealt` VALUES ('142', '1234563', '48');
INSERT INTO `teachercoursealt` VALUES ('143', '1234564', '48');
INSERT INTO `teachercoursealt` VALUES ('144', '1234565', '48');
INSERT INTO `teacherrolealt` VALUES ('1', '1', '123456');
INSERT INTO `teacherrolealt` VALUES ('2', '2', '123456');
INSERT INTO `teacherrolealt` VALUES ('4', '1', '1234561');
INSERT INTO `teacherrolealt` VALUES ('5', '2', '1234561');
INSERT INTO `teacherrolealt` VALUES ('6', '1', '1234562');
INSERT INTO `teacherrolealt` VALUES ('7', '2', '1234562');
INSERT INTO `teacherrolealt` VALUES ('8', '1', '1234563');
INSERT INTO `teacherrolealt` VALUES ('9', '2', '1234563');
INSERT INTO `teacherrolealt` VALUES ('10', '1', '1234564');
INSERT INTO `teacherrolealt` VALUES ('11', '2', '1234564');
INSERT INTO `teacherrolealt` VALUES ('12', '1', '1234565');
INSERT INTO `teacherrolealt` VALUES ('13', '2', '1234565');
