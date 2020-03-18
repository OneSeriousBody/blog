/*
 Navicat Premium Data Transfer

 Source Server         : MYSQL
 Source Server Type    : MySQL
 Source Server Version : 50536
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 50536
 File Encoding         : 65001

 Date: 18/03/2020 18:39:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_blog
-- ----------------------------
DROP TABLE IF EXISTS `t_blog`;
CREATE TABLE `t_blog`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `appreciation` bit(1) NOT NULL,
  `commentabled` bit(1) NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `first_picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `flag` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `published` bit(1) NOT NULL,
  `recommend` bit(1) NOT NULL,
  `share_statement` bit(1) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `views` int(11) NULL DEFAULT NULL,
  `type_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `tag_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK292449gwg5yf7ocdlmswv9w4j`(`type_id`) USING BTREE,
  INDEX `FK8ky5rrsxh01nkhctmo7d48p82`(`user_id`) USING BTREE,
  CONSTRAINT `FK292449gwg5yf7ocdlmswv9w4j` FOREIGN KEY (`type_id`) REFERENCES `t_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK8ky5rrsxh01nkhctmo7d48p82` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_blog
-- ----------------------------
INSERT INTO `t_blog` VALUES (2, b'1', b'0', '但丁在《神曲》里根据恶行的严重性顺序从轻到重排列七宗罪，其次序为：\r\n色欲（拉丁语：luxuria，英语：lust）－－放纵自己的欲望，只重视肉体的满足，忽略心灵的沟通交流。\r\n色欲是指过于强烈的、不合乎道德的欲望。对性爱的渴望，对刺激的追求等都是色欲最极端的罪行。（但丁的标准是“过分爱慕对方”，而这样便会贬低了神对人们的爱。）\r\n暴食（拉丁语：gula，英语：gluttony）－－浪费食物，沉迷享乐。\r\n狭义的观点认为“暴食”等于浪费食物。从广义来说，就是指“沉迷”于某事物，如酗酒、滥用药物、屯积不必要的物品、沉溺于赌博玩乐而不思进取等。（但丁的观点是“过分贪图逸乐”。）\r\n贪婪（拉丁语：avaritia，英语：greed）－－希望占有比所需更多的事物。\r\n尤其是指金钱或权力的过分追求。圣多玛斯·阿奎纳认为贪婪是“背向神的罪恶，正如所有朽坏的罪恶一样，是人为了会腐败的东西，放弃永恒的东西。”与贪婪有关的罪包括偷窃、打劫、贪腐、叛国等。（但丁的观点是“过度热衷于寻求金钱上或权力上的优越”。）\r\n懒惰（拉丁语：acedia，英语：sloth）－－逃避现实、无责任心及浪费时间。\r\n懒惰被宣告为有罪是因为：1.其他人需更努力工作以填补缺失。2.该做的事情还没有做好，对自己是百害而无一利。（从但丁的神学观念上去看，怠惰是“未能全心爱上帝，未能全副精神爱上帝，未能尽全人之心灵爱上帝”，具体来说包括怠惰、怯懦、容易满足及无责任感。）\r\n暴怒（拉丁语：ira，英语：wrath）－－憎恨他人。\r\n产生无理的愤怒，对人复仇。在律法所赋与的权力以外，行使惩罚他人的意欲亦被归作愤怒。歧视、过分的警戒心、对他人有伤害的意图也算是暴怒。（但丁描述为“把对公义的爱护歪曲为复仇和憎恨”。）\r\n嫉妒（拉丁语：invidia，英语：envy）－－因对方所拥有的资产比自己丰富而恼恨他人。\r\n嫉妒跟贪婪一样，是一种因为不能满足的欲望而产生的罪恶。贪婪通常跟物质财产有关，而嫉妒则跟其他方面有关，例如爱情，或他人的成功。（但丁说：“对自己资产的喜爱变质成了忌恨其他更美好事物的拥有者的欲望”。）\r\n傲慢（拉丁语：superbia，英语：pride）－－最严重的罪恶，包括对上帝不敬、对他人凶残。\r\n《圣经》在路加福音4:5-8记载：撒旦是这世界的统治者，撒旦也曾以他所统治的世界荣耀试探耶稣，这显示撒旦拥有全世界的政治权柄。圣经中并没有交代撒旦的真实身份，仅在旧约有提到：上帝明令人类不可食用智慧之树的果实，撒旦为了摧毁上帝的创造物，化为蛇引诱人类犯罪，导致人类被逐出伊甸园，从此必须忍受寒冷与饥饿。后来其他人的小说写作内容借用撒旦代表：傲慢被认为是七宗罪中最原始，最严重的一项，因为撒旦拥有统治世界的权力，而滥用权力正是一种傲慢。\r\n四世纪当时的埃及修士庞帝古斯主教（Evagrius Ponticus）把这些罪行定为八种“致命的激情”（8 deadly passions），而在东正教方面，这些冲动仍然被描述为“致命的激情” 而不是深藏在他们体内的罪孽。而主动迎接这些“激情”或拒绝与这些“激情”对抗的人在正统基督徒道德神学（Orthodox Christian moral theology）方面是被定位成有罪的。\r\n四种基本美德和神学三美德合称为七德行。\r\n通过我进入无尽痛苦之城\r\n通过我进入永世凄苦之坑\r\n通过我进入万劫不复之人群\r\n正以推动我那崇高的造物主\r\n我是神权神志神爱的结晶\r\n在我之前未有永恒之创造\r\n我将于天地一同长久\r\n进入者 必将断绝一切希望\r\n傲慢 戒之在骄-负重罚之\r\n嫉妒 戒之在妒-缝眼罚之\r\n暴怒 戒之在怒-黑烟罚之\r\n懒惰 戒之在惰-奔跑罚之\r\n贪婪 戒之在贪-伏卧罚之\r\n暴食 戒之在馐-饥饿罚之\r\n色欲 戒之在色-火焰罚之\r\n—— 但丁 《神曲·炼狱篇》', '2020-03-11 17:15:39', 'https://picsum.photos/id/1005/800/450', '转载', b'1', b'1', b'1', '七宗罪', '2020-03-13 19:27:57', 0, 14, 1, '13', '七宗罪（拉丁语：septem peccata mortalia；英语：seven deadly sins），天主教称七罪宗，或称七大罪或七原罪，属于天主教教义中对人类恶行的分类。归入这一类别的，能够直接形成其他不道德的行为或习惯。罪行按严重程度，由重到轻依次为傲慢、嫉妒、暴怒、懒惰、贪婪、暴食和色欲。');
INSERT INTO `t_blog` VALUES (3, b'1', b'0', '十诫，有时可能写做十戒，是《圣经》记载的上帝借由以色列的先知和众部族首领摩西向以色列民族颁布的十条规定，即《摩西十诫》。耶稣复活以后，十诫成为给全世界的人的诫命。\r\n据《圣经》记载这是上帝亲自用指头写在石版上，后被放在约柜内。犹太人奉之为生活的准则，也是最初的法律条文。由于摩西在第一次拿到十诫后，回到以色列部族竟然看到以色列人在崇拜一只象征上帝的金牛犊，愤然将上帝写下的石板摔碎。因此，放到圣幕或者圣殿至圣所约柜中的是第二次做成的石板，并仍旧是上帝亲自写的。（和合版圣经原文记载[上帝吩咐摩西说：“你要凿出两块石版，和先前你摔碎的那版一样，其上的字我要写在这版上.----出埃及记34章1节]）\r\n存放石板的约柜一直存放在耶路撒冷圣殿中，直到公元1世纪罗马军队攻陷并焚毁耶路撒冷，圣殿中至圣所存放的约柜也消逝了。\r\n十诫对以色列人的生活有广泛的影响，但是耶稣也曾经指出，犹太人故意寻找律法的空子，即绕过律法的约束。在新约圣经中，由于耶稣的降临，使得现在的基督徒已经不是活在“律法中”，乃是活在“恩典里”，但是十诫仍然对所有的基督徒产生深远的影响，并且一直是基督徒信仰的根基。\r\n\r\n自圣奥思定开始，教会在给候洗者和信徒的教理讲授中，「十诫」占着优越的地位。在十五世纪，人们习惯把十诫的规条写成有节奏的词句，以便背诵并采用积极的形式。这种方式直到今日仍被沿用。教会的教理书在讲解基督徒的伦理时，经常随从「十诫」的次序。\r\n在历史的过程中，诫命的画分和编号曾有变化。奥思定所做的分法已成了天主教和新教（路德宗）的传统。希腊教父所做的分法稍有不同，这分法可见於东正教会和改革教会的团体。\r\n', '2020-03-11 20:34:59', 'https://picsum.photos/id/1005/800/450', '转载', b'1', b'0', b'1', '十诫', '2020-03-13 19:27:37', 0, 14, 1, '13', '十诫，是《圣经》记载的上帝（天主）借由以色列的先知和众部族首领摩西（梅瑟）向以色列民族颁布的十条规定。据《圣经》记载这是上帝亲自用指头写在石版上，后被放在约柜内。犹太人奉之为生活的准则，也是最初的法律条文。另2000年音乐剧《十诫》在法国巴黎正式开演。');
INSERT INTO `t_blog` VALUES (4, b'1', b'1', '\r\n## 诞生阶段\r\n20世纪60年代中期之前的第一代计算机网络是以单个计算机为中心的远程联机系统。典型应用是由一台计算机和全美范围内2 000多个终端组成的飞机定票系统。终端是一台计算机的外部设备包括显示器和键盘,无CPU和内存。随着远程终端的增多,在主机前增加了前端机( 。当时,人们把计算机网络定义为“以传输信息为目的而连接起来,实现远程信息处理或进一步达到资源共享的系统”,但这样的通信系统已具备了网络的雏形。\r\n\r\n## 形成阶段\r\n20世纪60年代中期至70年代的第二代计算机网络是以多个主机通过通信线路互联起来,为用户提供服务,兴起于60年代后期,典型代表是美国国防部高级研究计划局协助开发的ARPANET。主机之间不是直接用线路相连,而是由接口报文处理机(IMP)转接后互联的。IMP和它们之间互联的通信线路一起负责主机间的通信任务,构成了通信子网。通信子网互联的主机负责运行程序,提供资源共享,组成了资源子网。这个时期,网络概念为“以能够相互共享资源为目的互联起来的具有独立功能的计算机之集合体”,形成了计算机网络的基本概念。\r\n\r\n## 互联互通阶段\r\n20世纪70年代末至90年代的第三代计算机网络是具有统一的网络体系结构并遵循国际标准的开放式和标准化的网络。ARPANET兴起后,计算机网络发展迅猛,各大计算机公司相继推出自己的网络体系结构及实现这些结构的软硬件产品。由于没有统一的标准,不同厂商的产品之间互联很困难,人们迫切需要一种开放性的标准化实用网络环境,这样应运而生了两种国际通用的最重要的体系结构,即TCP/IP体系结构和国际标准化组织的OSI体系结构。\r\n\r\n## 高速网络技术阶段\r\n20世纪90年代末至今的第四代计算机网络,由于局域网技术发展成熟,出现光纤及高速网络技术,多媒体网络,智能网络,整个网络就像一个对用户透明的大的计算机系统,发展为以Internet为代表的互联网。', '2020-03-12 15:17:42', 'https://picsum.photos/id/1005/800/450', '原创', b'1', b'1', b'1', '计算机网络', '2020-03-13 19:26:05', 1, 1, 1, '4,10', '	计算机网络技术是通信技术与计算机技术相结合的产物。计算机网络是按照网络协议，将地球上分散的、独立的计算机相互连接的集合。连接介质可以是电缆、双绞线、光纤、微波、载波或通信卫星。计算机网络具有共享硬件、软件和数据资源的功能，具有对共享数据资源集中处理及管理和维护的能力。');
INSERT INTO `t_blog` VALUES (6, b'1', b'1', '英文缩写\r\n1．Emergency Room，急诊室。\r\n2．Programmer 程序员的网络简称Er，如phper、javaer等\r\n3．美国全国广播公司著名的电视连续剧的名称，中文名称为：《急诊室的故事》。1994年开播，最后一集在2009年4月2日结束。\r\n4．生物学名词，内质网（Endoplasmic reticulum）的缩写。\r\n4．生物学名词，雌激素受体（estrogen receptor）的缩写。\r\n5．员工关系（employee relations）的缩写。ER是HR （人力资源）部门中的一个组成。\r\n6．英语语气词，同eh， 表示疑问、怀疑，或者征求同意所发的声音。啊！嗯！是吗？好吗？\r\n7．化学元素铒（Erbium）的符号。铒是一种银灰色金属，质软，不溶于水，溶于酸。盐类和氧化物呈粉红至红色。\r\n9．英国王室（English royal）的缩写。\r\n', NULL, 'https://picsum.photos/id/1005/800/450', '原创', b'1', b'1', b'1', 'ER', '2020-03-13 19:27:15', 0, 1, 1, '3,2,7', '源自程序员（programmer）的英文翻译。网络经常在PHP之后追加er作为PHP程序员（phper）使用，用于JAVA之后追加er作为JAVA程序员（javaer）使用，以及追加在各类程序语言之后用以简称此语言的程序员使用，因此网络上将某某Er作为某某程序员或某某的人使用。\r\n');
INSERT INTO `t_blog` VALUES (8, b'1', b'1', 'java中的构造方法是一种特殊类型的方法，用于初始化对象。Java构造函数在对象创建时被调用。 它构造值，即提供对象的数据，这是为什么它被称为构造函数。\r\n创建java构造函数的规则构造函数基本上定义了两个规则。它们分别如下：\r\n\r\n构造函数名称必须与其类名称相同构造函数必须没有显式返回类型\r\nJava构造函数的类型有两种类型的构造函数：\r\n\r\n默认构造函数(无参数构造函数)参数化构造函数\r\n\r\n1.java默认构造函数(无参数构造函数)没有参数的构造函数称为默认构造函数。默认构造函数的语法如下：\r\n```java\r\n<class_name>(){}\r\n```\r\n默认构造函数的示例：\r\n在这个例子中，在Bike类中创建了无参数(no-arg)构造函数。它将在对象创建时被调用。\r\n```java\r\nclass Bike1 {\r\n    Bike1() {\r\n        System.out.println(\"Bike is created\");\r\n    }\r\n\r\n    public static void main(String args[]) {\r\n        Bike1 b = new Bike1();\r\n    }\r\n}\r\n```\r\n上面的示例代码运行结果如下 - \r\n```xml\r\nBike is created\r\n\r\n```\r\n\r\n规则：如果类中没有构造函数，编译器会自动创建一个默认构造函数。\r\n\r\n问题： 默认构造函数的目的是什么？\r\n默认构造函数根据类型为对象提供默认值，如：0，null等。\r\n显示默认值的默认构造函数示例\r\n```java\r\nclass Student3 {\r\n    int id;\r\n    String name;\r\n\r\n    void display() {\r\n        System.out.println(id + \" \" + name);\r\n    }\r\n\r\n    public static void main(String args[]) {\r\n        Student3 s1 = new Student3();\r\n        Student3 s2 = new Student3();\r\n        s1.display();\r\n        s2.display();\r\n    }\r\n}\r\n\r\n```\r\n运行上面代码，得到如下结果 - \r\n```xml\r\n0 null\r\n0 null\r\n```\r\n\r\n解释： 在上面的类中，代码中并没有创建任何构造函数，但编译器自动提供了一个默认构造函数。默认构造函数分别为字段：id 和 name 分别提供了0和null值。\r\n2.Java参数化构造函数具有参数的构造函数称为参数化构造函数。\r\n问题： 为什么使用参数化构造函数？回答： 参数化构造函数用于为不同对象提供不同初始化的值。\r\n参数化构造函数的示例在这个例子中，我们创建了具有两个参数的Student类的构造函数。构造函数中柯有任意数量的参数。\r\n```java\r\nclass Student4 {\r\n    int id;\r\n    String name;\r\n\r\n    Student4(int i, String n) {\r\n        id = i;\r\n        name = n;\r\n    }\r\n\r\n    void display() {\r\n        System.out.println(id + \" \" + name);\r\n    }\r\n\r\n    public static void main(String args[]) {\r\n        Student4 s1 = new Student4(111, \"Karan\");\r\n        Student4 s2 = new Student4(222, \"Aryan\");\r\n        s1.display();\r\n        s2.display();\r\n    }\r\n}\r\n```\r\n\r\n运行上面代码，得到如下结果 - \r\n```xml\r\n111 Karan\r\n222 Aryan\r\n```\r\n\r\nJava构造函数重载构造方法重载是Java中的一种技术，一个类可以有任何数量的参数列表不同的构造函数。编译器通过构造函数参数列表中的参数数量及其类型来区分这些构造函数。\r\n构造函数重载示例\r\n```java\r\nclass Student5 {\r\n    int id;\r\n    String name;\r\n    int age;\r\n\r\n    Student5(int i, String n) {\r\n        id = i;\r\n        name = n;\r\n    }\r\n\r\n    Student5(int i, String n, int a) {\r\n        id = i;\r\n        name = n;\r\n        age = a;\r\n    }\r\n\r\n    void display() {\r\n        System.out.println(id + \" \" + name + \" \" + age);\r\n    }\r\n\r\n    public static void main(String args[]) {\r\n        Student5 s1 = new Student5(111, \"Karan\");\r\n        Student5 s2 = new Student5(222, \"Aryan\", 25);\r\n        s1.display();\r\n        s2.display();\r\n    }\r\n}\r\n```\r\n\r\n上面示例代码，执行后输出结果如下 - \r\n```xml\r\n111 Karan 0\r\n222 Aryan 25\r\n```\r\n\r\njava的构造函数和方法之间的区别构造函数和方法之间有许多区别，它们如下面列出\r\n\r\n\r\n\r\nJava构造函数\r\nJava方法\r\n\r\n\r\n\r\n\r\n构造器用于初始化对象的状态(数据)。\r\n方法用于暴露对象的行为。\r\n\r\n\r\n构造函数不能有返回类型。\r\n方法一般都有返回类型。\r\n\r\n\r\n构造函数隐式调用。\r\n方法要显式调用。\r\n\r\n\r\n如果没有指定任何构造函数，java编译器提供一个默认构造函数。\r\n在任何情况下编译器都不会提供默认的方法调用。\r\n\r\n\r\n构造函数名称必须与类名称相同。\r\n方法名称可以或可以不与类名称相同(随意)。\r\n\r\n\r\n\r\nJava拷贝构造函数在Java中没有复制构造函数。但是可以将一个对象的值复制到另一个中，就像C++中的复制构造函数。\r\n在java中有很多方法可以将一个对象的值复制到另一个对象中。它们分别是：\r\n\r\n通过构造函数通过将一个对象的值分配给另一个对象通过Object类的clone()方法\r\n在这个例子中，使用java构造函数将一个对象的值复制到另一个对象中。\r\n```java\r\nclass Student6 {\r\n    int id;\r\n    String name;\r\n\r\n    Student6(int i, String n) {\r\n        id = i;\r\n        name = n;\r\n    }\r\n\r\n    Student6(Student6 s) {\r\n        id = s.id;\r\n        name = s.name;\r\n    }\r\n\r\n    void display() {\r\n        System.out.println(id + \" \" + name);\r\n    }\r\n\r\n    public static void main(String args[]) {\r\n        Student6 s1 = new Student6(111, \"Karan\");\r\n        Student6 s2 = new Student6(s1);\r\n        s1.display();\r\n        s2.display();\r\n    }\r\n}\r\n```\r\n\r\n上面示例代码，执行后输出结果如下 - \r\n```xml\r\n111 Karan\r\n111 Karan\r\n```\r\n\r\n不使用构造函数复制值\r\n可以通过将对象值分配给另一个对象，将一个对象的值复制到另一个对象中。 在这种情况下，不需要创建构造函数。\r\n```java\r\nclass Student7 {\r\n    int id;\r\n    String name;\r\n\r\n    Student7(int i, String n) {\r\n        id = i;\r\n        name = n;\r\n    }\r\n\r\n    Student7() {\r\n    }\r\n\r\n    void display() {\r\n        System.out.println(id + \" \" + name);\r\n    }\r\n\r\n    public static void main(String args[]) {\r\n        Student7 s1 = new Student7(111, \"Karan\");\r\n        Student7 s2 = new Student7();\r\n        s2.id = s1.id;\r\n        s2.name = s1.name;\r\n        s1.display();\r\n        s2.display();\r\n    }\r\n}\r\n```\r\n\r\n上面示例代码，执行后输出结果如下 - \r\n```xml\r\n111 Karan\r\n111 Karan\r\n```\r\n\r\n问题1： 构造函数有返回值 ？\r\n回答：  是的，构造函数返回当前类的实例(不能指定返回值类型，但它会返回一个值)。\r\n问题2： 可以构造函数执行其他任务而不是初始化？\r\n回答：  是的，比如：对象创建，启动线程，调用方法等。你可以像在方法中执行的任何操作一样，在构造函数中也可以做到这些。\r\n\r\n\r\n', NULL, 'https://picsum.photos/id/1005/800/450', '转载', b'1', b'1', b'1', 'Java构造器（构造方法）', '2020-03-14 10:20:34', 8, 3, 1, '7,11', 'java构造器的一些解析');
INSERT INTO `t_blog` VALUES (9, b'1', b'1', '为了提高光盘存储密度，并容易从读出信号中提取同步信号，必须要把数据转换成适合在光盘介质上存储的物理表达形式。cd光盘信息记录层用凹坑的前沿和后沿来代表1，凹坑和非凹坑的长度来代表0的个数。受聚焦激光束斑点直径的限制，cd光盘上的凹坑和非凹坑的长度不能太短，否则光学头无法检测出凹坑的边缘变化，因此相邻1之间0的个数要大于1，即应至少有2个0。\r\n数字信号以比特（bit）为单位，如果在数据的记录或读出过程中由于某种干扰使数字信号偏移了1位，它所表示的就完全是别的数字信号了，而且以后读出的信号均永远无法恢复。为了避免干扰对数字信号造成无法挽回的损失，在数字信号的传输和记录过程中，通常将数字信号分割成称为帧的小字组。为了表示帧与帧之间的分界线并取得位同步，在每帧数据之前插入了帧同步信号。同步码的选择非常困难，红皮书选用了如下24位的同步码：100000000001000000000010。\r\n上述24位同步码相邻1之间0的个数为10。为了能从光盘的读出信号中提取同步信号，必须要保证记录数据中绝对不会出现同步码，因此记录数据相邻1之间0的个数要小于10。根据光盘上相邻1之间0的个数要大于1和小于10的要求，必须要将8位的二进制数据进行适当的位数扩展和变换。\r\n因为8位二进制数据有256种组合，所以在不同位数的二进制表示中，能满足这一条件、且其组合码个数不小于256种的最低位数是14位。也就是说，在14位二进制的214=16384个数值中，有大于256个数满足“1和1之间必须有2个以上10个以下的0”这一条件。由于红皮书要将8位数据转换成14位数据后才能记录到光盘上，因此人们将这种编码方式称为8－14调制或efm（eightto fourteen modulation）调制。\r\n在14位二进制数的全部16384个组合中，有267种满足上述条件，其中的256种用于efm调制，剩下的11个码中有2个用于显示和控制的同步，其它的因直流分量过多而未用。实际的编码和解码均通过查表来实现。8位码可以是数据、地址、错误检测码或错误校正码，根据14位码就可以确定光盘上凹坑和非凹坑的长度。\r\n由于光盘上的数据是以串行方式连续存放的，当两个14位码连接起来时，接合处可能会出现不满足上述条件的情况。因此，红皮书在两个14位记录码之间又插入了3位合并位。合并位起调整作用，调整时不仅使记录码连接部分满足上述条件，而且还尽量减少读出信号频谱中的直流分量和低频分量。', '2020-03-13 12:58:54', 'https://picsum.photos/id/1005/800/450', '原创', b'1', b'1', b'1', 'EFM', '2020-03-13 19:15:34', 0, 2, 1, '5,4', '第一英里以太网（EFM）是一个通过在终端用户和运送者之间的努力扩展以太网技术的范围，“第一英里”是指在订户或用户和公共网络之间的链接。以太网在第一英里允许这个订户用家庭以太网接口连接，意味着速率越快，网络访问就越快。以太网在第一英里提供最终连通性和多媒体应用带宽。以太网在第一英里也希望使光学以太网一个到DSL和电缆调制解调器的低成本的可选择的方法。');

-- ----------------------------
-- Table structure for t_blog_tags
-- ----------------------------
DROP TABLE IF EXISTS `t_blog_tags`;
CREATE TABLE `t_blog_tags`  (
  `blogs_id` bigint(20) NOT NULL,
  `tags_id` bigint(20) NOT NULL,
  INDEX `FK5feau0gb4lq47fdb03uboswm8`(`tags_id`) USING BTREE,
  INDEX `FKh4pacwjwofrugxa9hpwaxg6mr`(`blogs_id`) USING BTREE,
  CONSTRAINT `FK5feau0gb4lq47fdb03uboswm8` FOREIGN KEY (`tags_id`) REFERENCES `t_tag` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKh4pacwjwofrugxa9hpwaxg6mr` FOREIGN KEY (`blogs_id`) REFERENCES `t_blog` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_blog_tags
-- ----------------------------
INSERT INTO `t_blog_tags` VALUES (9, 4);
INSERT INTO `t_blog_tags` VALUES (9, 5);
INSERT INTO `t_blog_tags` VALUES (4, 4);
INSERT INTO `t_blog_tags` VALUES (4, 10);
INSERT INTO `t_blog_tags` VALUES (6, 2);
INSERT INTO `t_blog_tags` VALUES (6, 3);
INSERT INTO `t_blog_tags` VALUES (6, 7);
INSERT INTO `t_blog_tags` VALUES (3, 13);
INSERT INTO `t_blog_tags` VALUES (2, 13);
INSERT INTO `t_blog_tags` VALUES (8, 7);
INSERT INTO `t_blog_tags` VALUES (8, 11);

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `blog_id` bigint(20) NULL DEFAULT NULL,
  `parent_comment_id` bigint(20) NULL DEFAULT NULL,
  `admin_comment` bit(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKke3uogd04j4jx316m1p51e05u`(`blog_id`) USING BTREE,
  INDEX `FK4jj284r3pb7japogvo6h72q95`(`parent_comment_id`) USING BTREE,
  CONSTRAINT `FK4jj284r3pb7japogvo6h72q95` FOREIGN KEY (`parent_comment_id`) REFERENCES `t_comment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKke3uogd04j4jx316m1p51e05u` FOREIGN KEY (`blog_id`) REFERENCES `t_blog` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES (1, '/images/avatar.png', '写得不错！', '2020-03-14 13:05:37', 'martin@163.com', 'martin', 8, NULL, b'0');
INSERT INTO `t_comment` VALUES (2, '/images/avatar.png', '我jio得可以！', '2020-03-14 13:07:27', 'ludejin@163.com', 'ludejin', 8, 1, b'0');
INSERT INTO `t_comment` VALUES (3, '/images/avatar.png', '阿姨洗铁路', '2020-03-14 13:52:22', 'martin@163.com', 'martin', 8, 2, b'0');
INSERT INTO `t_comment` VALUES (4, '/images/avatar.png', '是大佬！', '2020-03-14 13:53:06', 'Mark@163.com', 'Mark', 8, NULL, b'0');
INSERT INTO `t_comment` VALUES (5, 'https://picsum.photos/id/1000/100/100', '我来了！', '2020-03-14 14:04:24', 'fadeprogramerwzt@163.com', 'CoderWZT', 8, NULL, b'1');
INSERT INTO `t_comment` VALUES (6, 'https://picsum.photos/id/1000/100/100', '你是菜逼', '2020-03-14 14:04:50', 'fadeprogramerwzt@163.com', 'CoderWZT', 8, 4, b'1');

-- ----------------------------
-- Table structure for t_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_tag`;
CREATE TABLE `t_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_tag
-- ----------------------------
INSERT INTO `t_tag` VALUES (2, '软件工程');
INSERT INTO `t_tag` VALUES (3, '软件工程2');
INSERT INTO `t_tag` VALUES (4, '计算机网络');
INSERT INTO `t_tag` VALUES (5, '计算机基础');
INSERT INTO `t_tag` VALUES (6, '数据结构与算法（C++版）');
INSERT INTO `t_tag` VALUES (7, '数据结构与算法（Java版）');
INSERT INTO `t_tag` VALUES (8, '数据结构与算法（C语言版）');
INSERT INTO `t_tag` VALUES (9, '数据结构与算法（Python版）');
INSERT INTO `t_tag` VALUES (10, '操作系统');
INSERT INTO `t_tag` VALUES (11, 'Java编程实战');
INSERT INTO `t_tag` VALUES (12, 'Web应用开发');
INSERT INTO `t_tag` VALUES (13, '天主教');

-- ----------------------------
-- Table structure for t_type
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_type
-- ----------------------------
INSERT INTO `t_type` VALUES (1, '错误日志');
INSERT INTO `t_type` VALUES (2, '认知升级');
INSERT INTO `t_type` VALUES (3, 'Java');
INSERT INTO `t_type` VALUES (4, 'Web开发');
INSERT INTO `t_type` VALUES (5, 'JavaScript');
INSERT INTO `t_type` VALUES (6, 'HTML');
INSERT INTO `t_type` VALUES (7, 'Spring');
INSERT INTO `t_type` VALUES (8, 'Golang');
INSERT INTO `t_type` VALUES (9, 'C++');
INSERT INTO `t_type` VALUES (12, '异常处理');
INSERT INTO `t_type` VALUES (13, 'Semantic UI');
INSERT INTO `t_type` VALUES (14, '神论');
INSERT INTO `t_type` VALUES (15, '宗教（K）');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'https://picsum.photos/id/1000/100/100', '2020-03-08 11:42:22', 'fadeprogramerwzt@163.com', 'Coder', 'e10adc3949ba59abbe56e057f20f883e', 1, '2020-03-08 11:43:11', 'CoderWZT');

SET FOREIGN_KEY_CHECKS = 1;
