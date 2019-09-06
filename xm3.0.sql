/** 玩去网数据库2.0**/
SET NAMES UTF8;
DROP DATABASE IF EXISTS wanqu;
CREATE DATABASE wanqu CHARSET=UTF8;
USE wanqu;
/**用户表**/
CREATE TABLE user(
	uid INT PRIMARY KEY AUTO_INCREMENT,		#用户id（自增）
	uname VARCHAR(16),				#用户名
	password VARCHAR(32),				#用户密码
	gender BOOL,						#用户性别(1-->男 0-->女)
	email VARCHAR(16),				#用户邮箱
	phone CHAR(11),					#联系电话
	user_name VARCHAR(50),			#用户真实姓名
	avatar VARCHAR(50),				#用户头像
	level BOOL						#用户级别  1->管理员   0->普通用户  
);
INSERT INTO user VALUES
(1,'admin',md5('123456'),1,'','15057489986','admin','',1),
(2,'jarvis',md5('456789'),1,'','13077845611','jarvis','',0),
(3,'tom',md5('456789'),1,'','13515763248','tom','',0),
(4,'jerry',md5('456789'),0,'','15845672233','jerry','',0),
(5,'kaier',md5('456789'),1,'','15845457433','kaier','',0),
(6,'ricton',md5('456789'),1,'','17785672233','ricton','',0),
(7,'blook',md5('456789'),1,'','18345236723','blook','',0),
(8,'lucy',md5('456789'),0,'','13767582233','lucy','',0),
(9,'monkey',md5('456789'),0,'','13767582233','monkey','',0),
(10,'ross',md5('456789'),0,'','13767582233','monkey','',0),
(11,'jack',md5('456789'),0,'','13767582233','monkey','',0);


/**景点表**/
CREATE TABLE jingdian(
	jingdian_id INT PRIMARY KEY AUTO_INCREMENT, 
	id INT,						#景点id
	title VARCHAR(128),				#主标题
	subtitle VARCHAR(128),		#副标题
	price DECIMAL(10,2),			#价格
	pic VARCHAR(100)					#展示图片
);
/** 当季热玩  **/
INSERT INTO jingdian VALUES
("null",211,'<杭州-乌镇-西塘3日游>5A景区','丰厚的民俗草根文化积淀，水墨西塘让你感受古镇千年的诗情画意',70,'images/djrw/xitang/djrwxtgzpic1.jpg'),
("null",212,'<浙江杭州-宋城千古情主题酒店杭州西湖店-自驾2日游> 4A景区','一生必看的演出，感受大型歌舞的视觉体验和心灵震撼，体验宋城的文化气息',80,'images/djrw/songcheng/djrwscpic1.jpg'),
("null",213,'<湖州南浔古镇+乌镇西栅1日游>5A景区','水乡古镇九十九，不如南浔走一走，江南风景好，最忆是南浔',85,'images/djrw/nanxun/djrwnxgzpic1.jpg'),
("null",214,'<横店影视城3日自助定制游>5A景区','全球规模最大的影视拍摄基地，中国唯一的“国家级影视产业实验区”',80,'images/djrw/hengdian/djrwhdpic1.jpg'),
("null",215,'<普陀山2日跟团游>5A景区','普陀山2日游，临海边精装客栈，游海天佛国、精选景点良心推荐，祈福佳选',120,'images/djrw/putuoshan/djrwptspic1.jpg'),
("null",216,'<华东五市-苏州园林-杭州-乌镇火车6日游>5A景区','淳朴秀美的水乡风景；风味独特的美食佳肴；缤纷多彩的民俗节日',80,'images/djrw/wuzhen/djrwwzpic1.jpg'),
("null",217,'<杭州西溪宾馆自驾2日游>5A景区','游《非诚勿扰》拍摄地，感受湿地水乡浪漫，纯玩0购物，市区范围内上门接',85,'images/djrw/xixi/djrwxxsdpic1.jpg'),
("null",218,'<浙江杭州-临安湍口众安氡温泉度假酒店-自驾2日游>','双人海鲜自助晚餐/双人下午茶/无限畅玩温泉/恒温水上乐园一价全含套餐',208,'images/djrw/linan/djrwlatkpic1.jpg'),
("null",219,'杭州-乌镇-西塘3日游','杭州当地参团，至杭州往返交通自理，情迷四西，纯玩0购物，漫步西湖，船游西溪，双水乡，小资西塘，含2早2正，1车1导',488,'images/qt/qt01.png'),
("null",220,'[春节]<西塘-乌镇西栅1日游>','纯玩无购物，更享精美魔术头巾，游西塘日景，赏乌镇西栅夜景，一天两个古镇，看尽古镇繁华',268,'images/qt/qt02.jpg'),
("null",221,'<浙江嘉兴-西塘景区内小河时光客栈-西塘自驾游>','含西塘门票2张，游水墨西塘，品赏江南水乡古韵，错峰更有趣',252,'images/qt/qt03.jpg'),
("null",222,'[春节]<杭州+千岛湖+乌镇西栅+西塘+南浔4日游>','国际五星，宿西栅，0购物，登梅峰岛玩转江南3水乡 含船游西湖，50元风味餐限时含大闸蟹 ',1165,'images/qt/qt04.jpg'),
("null",223,'<丽江-玉龙雪山-大理-香格里拉双飞6日游>','春节温暖年夜饭/全程蜜月大床/双廊骑行/遇见海鸥/冰川公园大索道/梦幻蓝月谷/实景演出印象丽江/万人出游 ',2709,'images/qt/qt05.jpg'),
("null",224,'<浙江杭州-宋城千古情主题酒店杭州西湖店-自驾2日游>','单人/双人/三人/两大一小/两大两小套餐任选 游宋城 观千古情演出（贵宾席）',718,'images/qt/qt06.jpg'),
("null",225,'[春节]<杭州西湖+西湖游船+雷峰塔+灵隐寺飞来峰1日游>','纯玩无购物、杭州精品景点历史文化深度之旅、可升级宋城千古情演出贵宾席、夜游京杭运河',198,'images/qt/qt07.jpg'),
("null",226,'<横店影视城2日游>','影视狂欢经典游3景点+梦幻谷 四星品质 热卖爆款 明星推荐 跟着延禧游横店',1188,'images/qt/qt08.jpg'),
("null",227,'[春节]<横店影视城3日游>','影视经典家庭休闲游4景点 宿四星酒店 跟着延禧游横店 畅享连住2晚特惠价',1397,'images/qt/qt09.jpg'),
("null",228,'[春节]<横店影视城-梦幻谷高铁动车2-3日自由行>','宿四星酒店（国贸大厦/丰景嘉丽/贵宾楼多种选择）， 3点/4点联套餐自选（游5A景区，看实景演出 ）',653,'images/qt/qt10.jpg'),
("null",228,'[春节]<横店影视城2日游>','影视狂欢经典游3景点+梦幻谷 宿三星酒店旅游大厦 热卖爆款 跟着延禧游横店',653,'images/qt/qt11.jpg'),
("null",229,'[春节]<普陀山2日跟团游>','住（临海边精装客栈）含早餐丨市区内可接车，游海天佛国、精选景点丨纯玩无购物，口碑产品，良心推荐，祈福佳选 ',268,'images/qt/qt12.jpg'),
("null",230,'[春节]<普陀山2日游>','游海天佛国 丨上万出游千人好评 丨玩精华景点 杭州市区可接 纯玩无购物 宿岛上海边精品客栈免费WIFI 含早含矿泉水',239,'images/qt/qt13.jpg'),
("null",231,'[春节]<普陀山巴士跟团2日游>','杭州到普陀山天天发班，宿宝中岛上，免费升级豪标住宿更舒适，纯玩无购物，含3次景交，祈福敬香之旅',371,'images/qt/qt14.jpg'),
("null",232,'<华东六市+乌镇+杭州+普陀山火车7日游>','玩转四水乡，船游江南，游普陀山六大精华景点，宿海边经济型精装驿站',1448,'images/qt/qt15.jpg'),
("null",233,'<浙江杭州-良渚君澜度假酒店-自驾2日游>','含西溪湿地西区联票+自助早餐 免费使用酒店健身娱乐设施+儿童乐园亲子公园+户外拓展公园',792,'images/qt/qt16.jpg'),
("null",234,'<浙江杭州-临安湍口众安氡温泉度假酒店-自驾2日游>','双人海鲜自助晚餐/双人下午茶/无限畅玩温泉/恒温水上乐园一价全含套餐 临安网红温泉亲子酒店 自选大明山/大明山滑雪',1060,'images/qt/qt17.jpg'),
("null",234,'<浙江杭州-临安柳溪江假日酒店-自驾2日游>','可选湍口众安氡温泉/大明山/大明山滑雪（平日全天/周末3小时/春节和元旦1小时）/太湖源/瑞晶石花洞等景区门票',193,'images/qt/qt18.jpg'),
("null",235,'<浙江杭州-临安华悦松泉度假酒店-自驾2日游>','自选周边景点大明山/大明山滑雪（平日全天畅滑/周末3小时套票/元旦和春节1小时套票） 湍口温泉 瑞晶石花洞 浙西大峡谷等',318,'images/qt/qt19.jpg');

/** 轮播图 **/
INSERT INTO jingdian VALUES
("null",151,'首页轮播','',5200,'images/lunbo/1.png'),
("null",152,'首页轮播','',6300,'images/lunbo/2.jpg'),
("null",153,'首页轮播','',6800,'images/lunbo/3.jpg'),
("null",154,'首页轮播','',6800,'images/lunbo/4.jpg');
/**景点图片表**/
CREATE TABLE jingdian_pic(
	jingdian_pic_id INT PRIMARY KEY AUTO_INCREMENT, 
	id INT,				#景点id
	pic VARCHAR(100),		#景点图片
	content TEXT			#介绍 
);
/** 杨见阳当季热玩图片 **/
/** 西塘古镇图片 **/
INSERT INTO jingdian_pic VALUES
("null",211,'images/djrw/xitang/djrwxtgzpic1.jpg',''),
("null",211,'images/djrw/xitang/djrwxtgzpic2.jpg',''),
("null",211,'images/djrw/xitang/djrwxtgzpic3.jpg',''),
("null",211,'images/djrw/xitang/djrwxtgzpic4.jpg',''),
("null",211,'images/djrw/xitang/djrwxtgzpic5.jpg',''),
("null",211,'images/djrw/xitang/djrwxtgzpicqt01.jpg','西塘风景秀丽，人才辈出，文化底蕴深厚。据统计，西塘历史上这里曾出过进士十九人，举人三十一人。周鼎在《萍川十景诗》中描绘了西塘许多的景致，如西塘晓市、北翠春耕、南泓夜泛、环秀断虹、雁塔湾头等，揭示了古镇西塘当时的生活场景，展示了西塘一幅幅美丽的画卷。'),
("null",211,'images/djrw/xitang/djrwxtgzpicqt02.jpg','西塘素以桥多、弄多、廊棚多而闻名。西塘民风淳厚，橹声悠扬，到处洋溢着中国古代传统文化特有的人文积淀。西塘古镇是专家们研究“江南水乡民俗文化”的圣地；艺术家们描绘“江南水乡民俗文化”的基地；游客们品味“江南水乡民俗文化”的净地。'),
("null",211,'images/djrw/xitang/djrwxtgzpicqt03.jpg','西塘人有闲情意志，喜欢养鸟种花，有“杜鹃之乡”的美誉。从清代中期已有人开始种养，杜鹃花生性娇嫩，要细心栽培，种养杜鹃也是修身养性的行为。'),
("null",211,'images/djrw/xitang/djrwxtgzpicqt04.jpg','西街：西塘东西走向的主要街道，分上下两段，东为上，西为下，所以有上西街和下西街之分。西街有着水乡极为典型的街道格局，即一根扁担的宽度。'),
("null",211,'images/djrw/xitang/djrwxtgzpicqt05.jpg','塘东街：塘东街上有许多酒楼，以前有“借问酒家何处有，胥塘河边处处楼”的说法。说起这条商业街不得不说说西塘的商人。有位来西塘的作者说：西塘是儒商文化与平民文化的交会点。'),
("null",211,'images/djrw/xitang/djrwxtgzpicqt06.jpg','烧香港：烧香港不是要把香港烧了的意思，而是以前河道两岸庙宇众多，善男信女们乘着小船来此烧香，故名烧香港。西塘烧香港的景点有倪天增祖居纪念馆、五福桥、圣堂、明清木雕馆等。'),
("null",211,'images/djrw/xitang/djrwxtgzpicqt07.jpg','塔湾街：塔湾街因西面原有一寺庙名雁塔禅院，又地处市河转弯处而得名。这一带在明时酒店云集，明代有一诗人周鼎写了一首《西塘晓市》来描写这里的繁华：旭日满晴川，翩翩贾客船。'),
("null",211,'images/djrw/xitang/djrwxtgzpicqt08.jpg','这里的街道临河而建，商铺的生意就在河边做成。往昔，水乡农家的出行以河为道，以舟代步，许多交易只能在船上岸边进行，为此，一种连接河道与店铺又可遮阳避雨的特殊建筑———廊棚便应运而生，并代代传承，相沿成习。'),
("null",211,'images/djrw/xitang/djrwxtgzpicqt09.jpg','西塘是个平民化的小镇，所有一切都如此朴素，没有周庄的繁华，没有南浔的富甲之态，没有浓厚的商业氛围，但是西塘的独特魅力令留宿旅者陶醉。西塘是古典的，也是现代的。');
/** 杭州宋城图片  **/
INSERT INTO jingdian_pic VALUES
("null",212,'images/djrw/songcheng/djrwscpic1.jpg',''),
("null",212,'images/djrw/songcheng/djrwscpic2.jpg',''),
("null",212,'images/djrw/songcheng/djrwscpic3.jpg',''),
("null",212,'images/djrw/songcheng/djrwscpic4.jpg',''),
("null",212,'images/djrw/songcheng/djrwscpic5.jpg',''),
("null",212,'images/djrw/songcheng/djrwscpicqt01.jpg','民俗表演，走进宋城，春节逛庙会、春天锅庄狂欢节、夏季泼水节、秋季火把节，既可观看大型的室外民俗表演，你也可以尽情地参与到宋城精心设置的跳锅庄舞、泼水狂欢等体验环节中来。'),
("null",212,'images/djrw/songcheng/djrwscpicqt02.jpg','惊悚挑战，在宋城，你还可以体验到“江南怪街”各种稀奇古怪的事情，兰若寺和惊悚鬼屋，给人身临其境的惊悚体验，恐惧蔓延全身。'),
("null",212,'images/djrw/songcheng/djrwscpicqt03.jpg','失落古城，宋城内另有一座神秘的“城中城”：失落古城。这是一处链接过去、现代与未来的神秘空间。它以前卫的高科技手段表现传统文化主题，可以现代娱乐精神穿越体验古老文明。'),
("null",212,'images/djrw/songcheng/djrwscpicqt04.jpg','佛文化，宋城再现了东南佛国的奇观，四大佛窟、佛窟探秘、十八罗汉台、五佛堂、月老祠、还有巨大的释迦牟尼造像……让你感受浓重佛文化氛围。'),
("null",212,'images/djrw/songcheng/djrwscpicqt05.jpg','美味小吃，漫步千年古街，琳琅满目的各式小吃，会刺激到你的视觉，让你的味蕾得到尽情的享受。');
/** 南浔古镇图片 **/
INSERT INTO jingdian_pic VALUES
("null",213,'images/djrw/nanxun/djrwnxgzpic1.jpg',''),
("null",213,'images/djrw/nanxun/djrwnxgzpic2.jpg',''),
("null",213,'images/djrw/nanxun/djrwnxgzpic3.jpg',''),
("null",213,'images/djrw/nanxun/djrwnxgzpic4.jpg',''),
("null",213,'images/djrw/nanxun/djrwnxgzpic5.jpg',''),
("null",213,'images/djrw/nanxun/djrwnxgzpicqt01.jpg','石桥连接两岸故称为“百间楼”。傍河而筑的百间楼，有的充分利用空间筑骑楼；有的楼前连披檐，故街道行人方便，雨季可避雨，夏季可遮阳。百间楼的封火山墙，有三叠式马头墙；也有琵琶式山墙，高低错落，极富情趣。各楼之间又有券门相隔，把人们的视线引向纵深。沿河石砌护岸整齐，且有河埠，即方便百姓、船家、商人上岸、下船，搬运货物和出行，又便于百姓汲水和洗涤。百间楼的建筑即保持明代建筑风格，又具有清代建筑遗韵。是具有典型江南水乡风味的民居楼群建筑。嘉庆年间张镇曾有赞美百间楼的诗句（张镇《浔溪渔唱》）：“百间楼上倚婵娟，百间楼下水清涟；每到斜阳村色晚，板桥东泊卖花船。”描绘出一幅形象生动如诗如画的秀丽景色和水乡风光。'),
("null",213,'images/djrw/nanxun/djrwnxgzpicqt02.jpg','在古代，有些地方有一个风俗，当姑娘到了婚嫁的年龄，就预定于某一天,这一天一般是正月十五或八月十五。让求婚者集中在绣楼之下,姑娘抛出一个绣球，谁得到这个绣球，谁就可以成为这个姑娘的丈夫。当然,姑娘一般会看准意中人，把绣球抛到他身上，以便他捡到。在很多地方,抬新娘的花轿，轿顶上要结一个绣球，意图吉庆瑞祥。'),
("null",213,'images/djrw/nanxun/djrwnxgzpicqt03.jpg','南北兼容的山势、浪漫的十万亩桃林、原始古朴的青天河村、水天一色的净美天堂，处处都是最迷人的风光。置身于青天河的美景之中，犹如在幻境一般，让人产生一种幻觉，对人生充满无限美好的遐想。三生三世太长，不如趁着阳光正好，我们一起，走过青天河的十里桃花，一边是风光旖旎、桃花遍布的七彩谷。一边是树木蔽日、松涛如海的原始森林风光盛宴，游览间，呼吸着“负氧离子”，和小动物们玩耍嬉戏，错过了青天河，就错过了春天一半的美景，错过了十万亩桃花海，就错过了中国最美的春天，趁春光明媚，福利大好，不负时光不负卿。'),
("null",213,'images/djrw/nanxun/djrwnxgzpicqt04.jpg','南浔古镇住宿很丰富，特别介绍的就是民宿，入夜的南浔古镇，入住南浔诗缘江南民宿，是最佳拍摄点和甚好视点。居住在南浔古镇百间楼民居群，紧依着名景点张静江故居、东大街，傍河临水而建，让人回味无穷。'),
("null",213,'images/djrw/nanxun/djrwnxgzpicqt05.jpg','小莲庄,又称“刘园”。是南浔五大名园之一。这是晚清南浔“四象”之首，清末光禄大夫刘铺的私家花园及家庙所在。位于镇南爵鸪溪畔,于光绪十一年(1885年)由刘镜和次子刘锦藻所营建,前后费时四十年,于i924年建成。小莲庄因慕元未书画家赵孟所建“莲花庄”之名而名为“小莲庄”。 小莲庄占地面积17399平方米,其中荷花池5267平方米,建筑面积3809平方米。总体布局分园林和刘氏家庙二部份。园林又分为外园和内园。外园以十亩荷花池为中心。肉园的主体是一座用太湖石堆砌的假山群。整个园林构思精纱,匠心独特,亭楼阔榭，黑山依水。各处建筑分别成景，景景之间，具界不界，内园外园似用非隔，错落有致，陶曲成趣。'),
("null",213,'images/djrw/nanxun/djrwnxgzpicqt06.jpg','嘉业藏书楼是刘镛的孙子——刘承干所建，大门上的“嘉业藏书楼”五个大字是由刘廷琛所题。刘承干继承了祖上大笔遗产却不善于经商，只喜欢读书、藏书、印书。他用了20年的时间，花费30万两白银，共收藏了16万册60万卷藏书。为我國的古书籍保护做出了重大贡献。');
/** 横店影视城图片 **/
INSERT INTO jingdian_pic VALUES
("null",214,'images/djrw/hengdian/djrwhdpic1.jpg',''),
("null",214,'images/djrw/hengdian/djrwhdpic2.jpg',''),
("null",214,'images/djrw/hengdian/djrwhdpic3.jpg',''),
("null",214,'images/djrw/hengdian/djrwhdpic4.jpg',''),
("null",214,'images/djrw/hengdian/djrwhdpic5.jpg',''),
("null",214,'images/djrw/hengdian/djrwhdpicqt01.jpg','横店梦幻谷给你一个梦想乐园，夏日戏水乐园。'),
("null",214,'images/djrw/hengdian/djrwhdpicqt02.jpg','“明清宫苑”是按照北京紫禁城一比一的比例修建的，占地1500亩,汇聚了京城宫殿、皇家园林、王府衙门、胡同民宅等四大建筑系列，真实地再现了北京故宫原貌及老北京民居。'),
("null",214,'images/djrw/hengdian/djrwhdpicqt03.jpg','秦王宫，四海归一殿（正殿）分前殿、中殿、后殿，纵深长达120多米。宫殿气宇之轩昂，仅此便可略见一斑。'),
("null",214,'images/djrw/hengdian/djrwhdpicqt04.jpg','清明上河图，踏上“汴河”上最雄伟的桥“虹桥”两岸风光 尽收眼底，《清明上河图》是以虹桥为中心，沿汴河展开描绘的精彩画面。汴河蜿蜒，河水清澈，波光粼粼，再现了千年前北宋东京汴河漕运景象。'),
("null",214,'images/djrw/hengdian/djrwhdpicqt05.jpg','万盛街，横店影视城的美食，因为世界各地明星和游客的络绎不绝而愈发丰富多彩，几乎所有的风味都能在横店影视城口尝到。南北小吃加上地方名点，横店影视城之旅也完全可以是一次饕餮之旅。');
/** 普陀山图片 **/
INSERT INTO jingdian_pic VALUES
("null",215,'images/djrw/putuoshan/djrwptspic1.jpg',''),
("null",215,'images/djrw/putuoshan/djrwptspic2.jpg',''),
("null",215,'images/djrw/putuoshan/djrwptspic3.jpg',''),
("null",215,'images/djrw/putuoshan/djrwptspic4.jpg',''),
("null",215,'images/djrw/putuoshan/djrwptspic5.jpg',''),
("null",215,'images/djrw/putuoshan/djrwptspicqt01.jpg','磐陀石，在普陀山梅岭峰梅福庵西行不远处，一片开阔的山顶平台上，有一对看似摇摇欲坠，实则稳如磐石的巨石——磐陀石，相传这里就是观音大士的说法处。'),
("null",215,'images/djrw/putuoshan/djrwptspicqt02.jpg','千步沙，沙色如金，纯净松软，宽坦软美，犹如锦茵设席，人行其上，不濡不陷。'),
("null",215,'images/djrw/putuoshan/djrwptspicqt03.jpg','潮音洞半浸海中，洞口朝大海，日夜被海浪击拍着，潮水奔腾入洞口，声若雷鸣，洞内怪石交错，层层叠叠，颇有看点。');
/** 乌镇图片 **/
INSERT INTO jingdian_pic VALUES
("null",216,'images/djrw/wuzhen/djrwwzpic1.jpg',''),
("null",216,'images/djrw/wuzhen/djrwwzpic2.jpg',''),
("null",216,'images/djrw/wuzhen/djrwwzpic3.jpg',''),
("null",216,'images/djrw/wuzhen/djrwwzpic4.jpg',''),
("null",216,'images/djrw/wuzhen/djrwwzpic5.jpg',''),
("null",216,'images/djrw/wuzhen/djrwwzpicqt01.jpg','江南百床馆，展出江南古床的博物馆，面积约1200多平方米，内收数十张明、清、近代的江南古床精品。'),
("null",216,'images/djrw/wuzhen/djrwwzpicqt02.jpg','宏源泰染坊始创于宋元年间，原址在南栅，清光绪迁址于此，系蓝印花布制作基地，也是蓝印花布制品集散中心。在宏源泰染坊，可以欣赏到祖祖辈辈留下的手艺。'),
("null",216,'images/djrw/wuzhen/djrwwzpicqt03.jpg','桥是江南水乡古镇不可或缺的，大多始建或重建于明清，有些桥还题有桥联。');
/** 西溪国家湿地公园图片 **/
INSERT INTO jingdian_pic VALUES
("null",217,'images/djrw/xixi/djrwxxsdpic1.jpg',''),
("null",217,'images/djrw/xixi/djrwxxsdpic2.jpg',''),
("null",217,'images/djrw/xixi/djrwxxsdpic3.jpg',''),
("null",217,'images/djrw/xixi/djrwxxsdpic4.jpg',''),
("null",217,'images/djrw/xixi/djrwxxsdpic5.jpg',''),
("null",217,'images/djrw/xixi/djrwxxsdpicqt01.jpg','渔庄烟雨的“烟雨”，有“柳烟、云烟、炊烟”三烟之妙，人、烟、水共处，犹如身临仙境。'),
("null",217,'images/djrw/xixi/djrwxxsdpicqt02.jpg','秋芦飞雪所处地理位置在蒹葭深处，金秋时节，游人可以泛舟徐徐融入芦苇的世界，也可以登秋雪庵弹指楼，观秋芦遍野，赏芦花胜雪，乃西溪一绝。'),
("null",217,'images/djrw/xixi/djrwxxsdpicqt03.jpg','“河渚听曲”以河渚街为中心，辐射古荡蒋村集市及周边区域，着重体现当地作为北派越剧发源地的特殊地位，以及延绵至今，依旧生生不息、绚丽多彩的民俗文化。'),
("null",217,'images/djrw/xixi/djrwxxsdpicqt04.jpg','西溪梅墅一带沿岸有许多梅树，水域曲折，河道迂回，便如梅树的枝条一样虬曲。而西溪的梅枝亦苍劲嶙峋、风韵洒落，多变而有规律，呈现出一种很强的力度和线的韵律感。'),
("null",217,'images/djrw/xixi/djrwxxsdpicqt05.jpg','莲花滩生态保护区位于西溪腹地，是西溪主要的观鸟区，植被丰茂，绿水环绕，鹭鸟飞翔天际，鸣禽宛转丛林，生意盎然，野趣纷呈。');
/** 临安湍口众安氡温泉图片 **/
INSERT INTO jingdian_pic VALUES
("null",218,'images/djrw/linan/djrwlatkpic1.jpg',''),
("null",218,'images/djrw/linan/djrwlatkpic2.jpg',''),
("null",218,'images/djrw/linan/djrwlatkpic3.jpg',''),
("null",218,'images/djrw/linan/djrwlatkpic4.jpg',''),
("null",218,'images/djrw/linan/djrwlatkpic5.jpg',''),
("null",218,'images/djrw/linan/djrwlatkpicqt01.jpg','室内温泉区，不仅能促进血液循环，加速新陈代谢，且温泉本身的矿物质透过表皮渗入身体皮肤时，其美容、美肤效果更为突显。'),
("null",218,'images/djrw/linan/djrwlatkpicqt02.jpg','户外温泉区，消除疲劳，促进新陈代谢，与日光浴相结合。'),
("null",218,'images/djrw/linan/djrwlatkpicqt03.jpg','蒸房，用于驱风、袪寒、暖体活血、温肤靓颜，给您宫廷版的享受。'),
("null",218,'images/djrw/linan/djrwlatkpicqt04.jpg','儿童戏水区，小朋友的乐园，在这里，可以尽情嬉戏玩耍。');
/** 大皇宫 **/
INSERT INTO jingdian_pic VALUES
("null",219,'images/djrw/dahaunggong/djrwdhgpic1.jpg','');
/** 大皇宫 **/
INSERT INTO jingdian_pic VALUES
("null",220,'images/djrw/beihaidao/djrwbhdpic1.jpg','');

/**史前风**/
/** 轮播图景点主页图片 **/
/** 轮播图图一 **/
INSERT INTO jingdian_pic VALUES
("null",151,'images/lunbo/lbtgn/lbtgn.png',''),
("null",151,'images/lunbo/lbtgn/lbtgn1.jpg',''),
("null",151,'images/lunbo/lbtgn/lbtgn2.jpg',''),
("null",151,'images/lunbo/lbtgn/lbtgn3.jpg',''),
("null",151,'images/lunbo/lbtgn/lbtgn4.jpg',''),
("null",151,'images/lunbo/lbtgn/lbtgn5.jpg',''),
("null",151,'images/lunbo/lbtgn/lbtgnjd1.jpg','丽江束河古镇好玩吗？如果说丽江的大研古镇是一位看一眼就让人闪光的大家闺秀，那么，十里之外的束河古镇则是一位清新脱俗，让人回味无穷的小家碧玉。束河的魅力在于它本身散发出来的一种静，不同于丽江古城的喧嚣，束河是适合发呆的地方，静静的享受。'),
("null",151,'images/lunbo/lbtgn/lbtgnjd2.jpg','马帮荣归·长桌宴，寻觅茶马古道，宴遇马帮荣归一千四百多年前，一支支全副武装的马帮，穿行在滇西横断山脉的高山密林中，足迹踏遍大理，西双版纳，普洱，香格里拉，直到印度，尼泊尔等地，长途跋涉，历经千险。今天，您有幸遇到来自大研花巷的马帮队伍，满载返乡，荣归故里。和阿伯为马帮兄弟们接风洗尘，商议阿西达出嫁事宜，马帮兄弟们与家人们相见会发生怎样的故事？'),
("null",151,'images/lunbo/lbtgn/lbtgnjd3.jpg','在丽江丰盛的宴席当属浓缩了丽江饮食文化及民俗精髓的八大碗。因此，长桌宴也用纳西八大碗来款待归来的马帮和四方宾朋，纳西八大碗以八个地道的大土碗为容器，所用原料均是绿色生态，方法原生古朴，味道香醇。'),
("null",151,'images/lunbo/lbtgn/lbtgnjd4.jpg','丽江古城又名大研古城，是一座风景秀丽，历史悠久和文化灿烂的名城，也是中国罕见的保存相当完好的少数民族古镇，世界文化遗产，丽江古城是中国历史文化名城中唯一两个没有城墙的古城之一。当夜幕降临，灯光乍起的时候，那星星点点的灯光，是夜幕中的一群群萤火虫，实在好看。'),
("null",151,'images/lunbo/lbtgn/lbtgnjd5.jpg','乘车前往玉龙雪山风景区， 游览4506米的【冰川公园】（含大索道）【蓝月谷景区】（不含蓝月谷电瓶车50元/人），游览时间约为1.5小时，不含排队上山和上索道时间。中餐安排雪厨自助餐（儿童超过1.2米需要补足24元/人餐差）。'),
("null",151,'images/lunbo/lbtgn/lbtgnjd6.jpg','大型歌舞《丽江千古情》是丽江文化的魂，用IMAX3D的大片视觉，重现《纳西创世纪》、《泸沽女儿国》、《马帮传奇》、《古道今风》、《玉龙第三国》等丽江长达千年的历史与传说，引领观众穿越雪山， 在旷远原始的洪荒之域、在泸沽湖畔的摩梭花楼、在挟风裹雨的茶马古道、在曼舞欢歌的古道重镇、在浪漫凄情的玉龙第三国、在世外桃源般的香巴拉相约一场风花雪月的邂逅，感受一个美丽的时刻。'),
("null",151,'images/lunbo/lbtgn/lbtgnjd7.jpg','寻觅茶马古道，宴遇马帮荣归，一千四百多年前，一支支全副武装的马帮，穿行在滇西横断山脉的高山密林中，足迹踏遍大理，西双版纳，普洱，香格里拉，直到印度，尼泊尔等地，长途跋涉，历经千险。今天，您有幸遇到来自大研花巷的马帮队伍，满载返乡，荣归故里。'),
("null",151,'images/lunbo/lbtgn/lbtgnjd8.jpg','以藏王为核心主题，邀您共享“王的盛宴”。 醉美香格里拉民族歌舞晚会，融入了本地藏族特色舞蹈《锅庄》、《弦子》、《热巴》等民族特色的一场歌舞表演，让游客欣赏藏族正宗传统民族民俗文化。晚餐为您安排补充高原能量的当地特色【牦牛小火锅】，让您享受视觉上的盛宴。');
/** 轮播图图二 **/
INSERT INTO jingdian_pic VALUES
("null",152,'images/lunbo/lbtgt/lbtgt.png',''),
("null",152,'images/lunbo/lbtgt/lbtgt1.jpg',''),
("null",152,'images/lunbo/lbtgt/lbtgt2.jpg',''),
("null",152,'images/lunbo/lbtgt/lbtgt3.jpg',''),
("null",152,'images/lunbo/lbtgt/lbtgt4.jpg',''),
("null",152,'images/lunbo/lbtgt/lbtgtjd1.jpg','写在前面，旅行不仅仅是美景和目的地，还在于感受沿途的那些人那些事，和那些曾经发生在这片土地上的点点滴滴。
行程亦不仅仅是我们通常所说的吃住行游购娱，更在于那些无形的感观和服务， 一声问候、一个微笑、一份如家人般的体贴和关心...
没有本职之外的不管不顾，没有黄婆卖瓜的自卖自夸， 取而代之的是从心底发散而来的真诚和热情，消融了阻隔在游客和导游之间的雪墙。我不仅是你的向导，我还是你的朋友。
我们的领队团队是一群平均年龄35岁的爱和暖意的传播者，拥有平均10年以上的带队经验，其中不乏出境旅游规模成行以来的第一批领队。专业、贴心、热忱是我们的标签和宗旨， 以下截取了部分参团归来的游客对我们领队导游的评价。'),
("null",152,'images/lunbo/lbtgt/lbtgtjd2.jpg','一句话看懂各线路
【默认行程】：大阪起东京止，大阪东京两天自由活动，市区精品酒店，方便自由活动。
【东阪两天自由】：与默认行程起止点相反，东京起大阪或名古屋止，其他内容一样
【名名两天自由】：名古屋起止，大阪-京都-中部-富士山-东京-名古屋，其他内容与默认行程一样。
【东名一天自由】：此行程东京起名古屋或大阪止，东京一天自由活动，升级一晚市区高品质酒店，2晚连住东京市内及1晚和风温泉酒店。
【名东一天自由】：与东名一天自由起止点相反，名古屋或大阪起东京止。
【阪东纯玩升级】：大阪起东京止，纯玩，升级酒店住宿，升级餐食，1-2天自由活动可切换
【东阪纯玩升级】：东京起大阪止，纯玩，升级酒店住宿，升级餐食，1-2天自由活动可切换
【东阪两天自由2】：与【东阪两天自由】类似，航班和景点作微调
东/阪/名，指的是东京、大阪、名古屋等进出口岸，进出口岸的不同可能会影响总体行车时间以及舒适度，请您在订购前确认相应团期的进出口岸和航班信息。');
/** 轮播图图三 **/
INSERT INTO jingdian_pic VALUES
("null",153,'images/lunbo/lbtgw/lbtgw.png',''),
("null",153,'images/lunbo/lbtgw/lbtgw1.jpg',''),
("null",153,'images/lunbo/lbtgw/lbtgw2.jpg',''),
("null",153,'images/lunbo/lbtgw/lbtgw3.jpg',''),
("null",153,'images/lunbo/lbtgw/lbtgw4.jpg',''),
("null",153,'images/lunbo/lbtgw/lbtgwjd1.jpg','迪拜 中东最富裕的城市
迪拜是一座国际化大都市，也是阿拉伯联合酋长国最大和人口最多的城市，中东最富裕的城市。境内旅游资源丰富，有被称为世界第八大奇迹的群岛，也有浓郁的沙漠风情。除此之外，还有诸多国际之最的建筑，同时也是超于香港的购物天堂。
风景名胜
迪拜著名景点有：哈利法塔：又称迪拜大厦或比斯迪拜塔，是位于阿联酋迪拜的一栋已经建成的摩天大楼，有162层，比台北101足足高出320米。地球群岛：又名世界群岛，被称为世界第八大奇迹。阿拉伯塔酒店：全世界最豪华的酒店，世界上唯一的7星级酒店。沙漠风情：在黄金沙漠冲沙可切身感受阿拉伯文化的魅力。购物中心：是世界上最大的购物中心，内有世界上最大的水族馆以及一条到达迪拜塔的官方通道。朱美拉清真寺：是迪拜最大最美的清真寺之一，也是迪拜地标之一，同时也是摄影师喜欢拍摄的地点。国家博物馆：迪拜少数几个提供当地历史文物的景点之一，是迪拜最古老的建筑物。迪拜河：也称为迪拜海沟，是感受迪拜脉搏的地方。
最佳旅游时间
11月至次年3月为佳，这时是冬季，平均气温9-25℃。此外，炎炎夏日也因为缤纷多彩的狂欢变得不再那么漫长无聊。在阿联酋旅游最大的威胁就是被日光晒伤和脱水。夏季的阳光非常强烈，在户外活动时要穿长袖衣服，戴帽子，暴露部位要抹防晒霜，多饮水。');
/** 轮播图图四 **/
INSERT INTO jingdian_pic VALUES
("null",154,'images/lunbo/lbtzb/lbtzb.png',''),
("null",154,'images/lunbo/lbtzb/lbtzb1.jpg',''),
("null",154,'images/lunbo/lbtzb/lbtzb2.jpg',''),
("null",154,'images/lunbo/lbtzb/lbtzb3.jpg',''),
("null",154,'images/lunbo/lbtzb/lbtzb4.jpg',''),
("null",154,'images/lunbo/lbtzb/lbtzbjd1.jpg','千岛湖，位于浙江省杭州西郊的淳安县境内，以“山青、水秀、洞奇、石怪、人美”著称。著名诗人郭沫若 也有留下过“西子三千个，群山已失高，峰峦成岛屿，平地卷波涛”的绝美诗句。本行程主要游览千岛湖中心湖区--月光岛、梅峰岛，具体参考以下行程！'),
("null",154,'images/lunbo/lbtzb/lbtzbjd2.jpg','月光岛，是千岛湖具浪漫气息和人气人文底蕴的景区。它以“爱情”为主线，缀有“情、系、心、梦”四园以及接纳游人摆渡上岛，“当一天岛主”的逸园，间以“连心、幸运、状元”三桥联系。'),
("null",154,'images/lunbo/lbtzb/lbtzbjd3.jpg','状元桥（25元，费用自理），惊险刺激，有惊无险。是为纪念“三元宰相”商辂及方逢晨、詹睽等三状元而建。人称“状元桥上走一走，高中状元就是我”；手划船（25元，费用自理），千岛湖水比较深，能与谁亲密接触的地方不多。'),
("null",154,'images/lunbo/lbtzb/lbtzbjd4.jpg',''),
("null",154,'images/lunbo/lbtzb/lbtzbjd5.jpg','梅峰岛位于皖浙交界处的千岛湖景区内，群岛星罗棋布、港湾纵横交错、生态环境绝佳。岛上现有人工栽种的各种梅树五千多株，红梅、绿梅、白梅、腊梅等居多。梅花盛开时，此处随成为千岛湖绝佳的赏梅胜地。登上梅峰观景台，天气晴好时，可以纵览湖区300余座大小岛屿，是目前千岛湖登高揽胜处。上山需要小爬十几分钟的山路，山路不多，台阶很缓，闲逛下来也别有一番山间妙趣。'),
("null",154,'images/lunbo/lbtzb/lbtzbjd6.jpg','');

/** 高勇 **/
/*景点表*/
INSERT INTO jingdian VALUES
("null",1,'<杭州临安-十门峡大酒店-自驾2日游>','宿景区旁十门峡大酒店 含十门峡景区门票，览电影拍摄地 观生态风景区 尝试徒手攀岩 送酒店早餐',242,"images/zhoubian/lina/hzla01.jpg"),
("null",2,'<杭州-苏州-周庄-南京4日游>纯玩','游杭州西湖，赏苏式园林，漫步水墨周庄，逛六朝帝都南京六朝古都，假山园林，水乡古镇',883,'images/zhoubian/zhouz/zhouzhuang01.jpg'),
("null",3,'<桐庐-温州港酒店-自驾2日游>','大奇山国家森林公园/富春江小三峡严子陵钓台/瑶琳仙境/垂云通天河/琴溪香谷/红灯笼乡村家园/富春桃源/天子地生态旅游区/等多个景点，门票自选，天下佳山水 古今推富春 溶洞奇观 自然生态 风景秀丽 休闲度假',424,'images/zhoubian/wenz/wenzhou01.jpg'),
("null",4,'<浙江临安-华悦松泉度假酒店-自驾2日游>','浙西大龙湾-龙井峡闯关/大明山/浙西大峡谷/河桥古镇/浙西十门峡/太湖源/氡温泉/西天目山等多个景点门票自选，山水如画 清新自然 浙西名山 风景秀丽 水上乐园 温馨度假',591,"images/zhoubian/huay/huayue01.jpg"),
("null",5,'<杭州-绍兴巴士2日游>','杭州成团，文豪故里，游魅力西湖，2000多年沧桑，仍完整地保存着原有的水乡古镇的风貌和格局',232,"images/zhoubian/shaox/shaoxing01.jpg"),
("null",6,'<杭州-横店影视城-乌镇-西栅4日游>','确保夜宿西栅内，2晚五星酒店，玩足西栅24h，东方好莱坞秦王宫，1车1导，杭州进出，爸妈游，亲子休闲，横店影视城，乌镇西栅，杭州西湖',1406,"images/zhoubian/wuz/wuzhen01.jpg"),
("null",7,'<杭州-无锡-上海3日游>','游杭州西湖，宋城，无锡三国水浒城，登东方明珠，叹繁华都市，可升级宋城千古情，另含双游船 无购物景点，杭州成团，湖光山色，烟雨江南，水乡古镇',709,"images/zhoubian/shangh/shanghai01.jpg"),
("null",8,'<杭州-无锡-南京3日游>','纯玩 游杭州西湖 登雷峰塔 观三国水浒城 逛古都南京 赏烟雨中的江南 无购物景点 湖光山色 烟雨江南 六朝古都',763,"images/zhoubian/nanj/wuxi01.jpg");
/*景点介绍*/
INSERT INTO jingdian_pic VALUES 
("null",1,"images/zhoubian/lina/hzla01.jpg",""),
("null",1,"images/zhoubian/lina/hzla02.jpg",""),
("null",1,"images/zhoubian/lina/hzla03.jpg",""),
("null",1,"images/zhoubian/lina/hzla04.jpg",""),
("null",1,"images/zhoubian/lina/hzla05.jpg",""),
("null",1,'images/zhoubian/lina/jsla01.jpg','十门峡大酒店.临安十门峡大酒店位于清凉峰国家自然保护区北簏海拔680米的徽杭古道东端十门峡龙门景区龙门景点入口处，地理位置十分优越。临安十门峡大酒店总建筑面积13000平方米，'),
("null",1,'images/zhoubian/lina/jsla02.jpg','主楼为白墙黑瓦和特色窗栅马头墙的徽派建筑，副楼为端庄大气大面积挑檐和庑殿屋顶的江南传统轻灵婉约仿苏式古建筑，寓示着酒店位于淅、皖两省的接壤处，并拥有着徽文化及吴越文化的文化底蕴。酒店拥有各式精致客房，提供地热取暧，其中20间还为日本榻榻米式风格，满足不同顾客的需求。酒店有从20人至160人不同规格的大小会议室八个，餐厅有单包厢、二联包、四联包等不同风格的豪华包间和宴会大厅，可容纳500余人同时用餐。此外酒店室外游泳池、健身房、卡拉OK、棋牌室等休闲康乐设施齐全，是您旅游度假、商务会议、休闲健身的好去处。'),
("null",1,'images/zhoubian/lina/jsla03.jpg','十门峡
十门峡景区位于浙皖交界处，清凉峰自然保护区内，地处临安西部，景区分别由十大门景点组成，目前剑门、龙门景区已开发完善对外营业，虎门、象门景区正在开发建设度假酒店与漂流项目，综合旅游资源之丰富，“十门千峰擎日月，剑门千丈锁天地”，层峦叠嶂， 周边地貌 飞瀑流泉，奇景成群，百里峡谷沟壑纵横，奇峰林立，峰插云天，雄奇险峻，美轮美奂。'),
("null",1,'images/zhoubian/lina/jsla04.jpg','剑门乃经典古装剧新《倩女幽魂》、《剑蝶》外景拍摄地。高达百米，拔地入云，斧劈刀削，险峻无比，神仙难攀，绝壁奇松仪态万千。虎门景区千峰直插云霄，苍山如画，群峰之势蔚为壮观；海拔之高，俯视浙西群峰。站在峰顶，绵延群山尽收眼底，可谓气象万千。 三万亩原始森林，株高冠大，景区有古树名木千余棵，树龄一般都在200年以上，甚至有树龄长达800年。其中景区的地质地貌景观，华东地区徒手攀岩基地之一，并拥有国际标准攀岩赛道6条。龙门景区为华东大瀑布群，18条大瀑布从千丈悬崖飞泻而下，潭瀑相连，溪涧遍布，古木成林'),
("null",1,'images/zhoubian/lina/jsla05.jpg','重要提醒黄金周、特殊节日等旅游旺季，均为担保订房，一经确认不接受退改，敬请见谅。★取票方式：凭有效身份证件至酒店迎宾楼前台或剑门景区售票处取票。'),
("null",2,"images/zhoubian/zhouz/zhouzhuang01.jpg",""),
("null",2,"images/zhoubian/zhouz/zhouzhuang02.jpg",""),
("null",2,"images/zhoubian/zhouz/zhouzhuang03.jpg",""),
("null",2,"images/zhoubian/zhouz/zhouzhuang04.jpg",""),
("null",2,"images/zhoubian/zhouz/zhouzhuang05.jpg",""),
("null",2,'images/zhoubian/zhouz/jsshaoxing01.jpg','产品特色★【周庄】：虽历经900多年沧桑，仍完整地保存着原有的水乡古镇的风貌和格局，典型的“小桥、流水、人家”；★【宋城】：大宋皇城区（这里还原1000年前的杭州，景区人员穿着古装穿梭，皮影戏、杂耍、员外招亲等民间活动）、游乐区（儿童游乐场、成人游乐场）、大型歌舞秀表演区（世界三大秀之一的宋城千古情，震撼演出）；'),
("null",2,'images/zhoubian/zhouz/jsshaoxing02.jpg','重要提示1.本产品为旅行社折 扣后价格，任何证件、老人均无效无差价退还，请游客知晓~2.由于节假日例如:国庆节，春节大型节日，堵车等情况，造成行程中标注时间差距较大，等车时间较长，请知晓~3.此行程不含返程车票，南京当地散团，不返始发地，请知晓'),
("null",3,"images/zhoubian/wenz/wenzhou01.jpg",""),
("null",3,"images/zhoubian/wenz/wenzhou02.jpg",""),
("null",3,"images/zhoubian/wenz/wenzhou03.jpg",""),
("null",3,"images/zhoubian/wenz/wenzhou04.jpg",""),
("null",3,"images/zhoubian/wenz/wenzhou05.jpg",""),
("null",3,'images/zhoubian/wenz/jswenzhou01.jpg','桐庐温州港酒店地处乔林路与瑶琳路交叉口处，靠近桐庐市中心长途汽车站，步行只需10分钟。附近旅游景点环绕，离大奇山国家森林公园开车只需10分钟路程，离严子陵钓台，瑶琳仙境，红灯笼外婆家等一些景点开车只需20-30分钟的路程。酒店全新装修，按星级酒店配置标准，有线，无线网络全网覆盖，20兆的光纤速度。每个房间标配2瓶矿泉水，地下广阔停车场供您使用。温州港酒店是您出差，旅游住宿的理想选择，欢迎您的光临。'),
("null",3,'images/zhoubian/wenz/jswenzhou02.jpg','温馨提示：桐庐乔林路239号 ，近白云源路 。'),
("null",3,'images/zhoubian/wenz/jswenzhou03.jpg','大奇山国家森林公园是一处以森林资源为主体的自然景观，境内既有山峦叠翠、怪石嶙峋、峡谷溪瀑、鸟语花香之景，又有茂林修竹、平湖芳草、果园飘香的田园风光。大奇山形若莲花宝座，海拔600余米，面积40平方公里，内有木本植物和各类灌木近千种，属国家保护的植物有13种，兽类39种，禽类81种。公园的开发一直本着“林茂才能景秀”的原则，以“寓旅于林，以旅兴林”为方针，森林公园向游人开放后，山水依然朴实无华，蓝天、碧水、茂林、修竹，楚楚动人，公园景色青翠、空气纯净、山泉甘洌。'),
("null",3,'images/zhoubian/wenz/jswenzhou4.jpg','景区地址：富春江南岸5公里处(近大奇山)。'),
("null",3,'images/zhoubian/wenz/jswenzhou5.jpg','富春江小三峡位于富春江上游桐庐七里泷至建德梅城一段，全长24公里，是富春江上风光优美的一段。富春江小三峡，分为龙门峡、子陵峡和子胥峡。从七里泷口到严子陵钓台为富春江小三峡“龙门峡”，长约4公里，峡内山高谷深，群峰对峙，江面舒展，水势平缓。峡内有下湾渔唱、富春江钓鱼岛、唐松迎客、盘山石壁等景观。从严子陵钓台至子胥渡口称“子陵峡”，长12公里，是富春江小三峡中环境最幽深、风景最秀丽，峡中两山拔水而起，两岸峭壁嵯峨，河道蜿蜒曲折，清代诗人刘嗣绾有诗云：“一折青山一扇屏，一湾碧水一条琴。无声诗与有声画，须在桐庐江上寻。”这里的河道幽深曲折，山上古树挺拔，翠竹萧萧，山为水铸情，水因山溢美'),
("null",3,'images/zhoubian/wenz/jswenzhou6.jpg','景点地址：浙江省杭州市桐庐县富春江镇云源路2号。'),
("null",3,'images/zhoubian/wenz/jswenzhou7.jpg','瑶琳仙境位于中国浙江省桐庐县境内，距杭州80公里，离县城23公里，是华东沿海中部亚热带湿润区喀斯特洞穴的典型代表，属国家风景名胜区。瑶琳仙境，又名瑶琳洞，纵深1公里，总面积达28000平方米，是“中国旅游胜地四十佳”、“浙江省十大旅游胜地”之一。2002年跻入国家AAAA极风景旅游景区行列。它以曲折有致的洞势地貌，瑰丽多姿的群石景观，被誉为“全国诸洞之冠”。画家叶浅予夸它“中国少有，世界见”。'),
("null",3,'images/zhoubian/wenz/jswenzhou8.jpg','景区地址：桐庐县瑶琳镇洞前村。'),
("null",3,'images/zhoubian/wenz/jswenzhou9.jpg','垂云通天河全长4.5公里，河道内岩溶地貌发育良好。地下水源丰沛，水质清澄，河道曲折幽深，或成潭、或成泊、或成瀑，变幻无穷。据史料记载，垂云通天河早在三国吴越时代就是一处有游人涉足的地下胜景。留有唐人摩崖石刻“垂云古迹”，明代诗人杨宏赞道：“夏日炎忘暑，冬游却似春，源流虽一派，清白只垂云”。垂云通天河荡舟寻奇，分二级河道，第 一级700米，游人乘船至此，由特别设计的升船装置将游客连人带船升至8米高度差的二级河道，惊险刺激。在岩溶地下河装备特制船机，作为游乐和运载工具，不仅国内首创，东南亚地区也属罕见。'),
("null",3,'images/zhoubian/wenz/jswenzhou10.jpg','景点地址：桐庐县瑶琳东琳村垂云通天河。'),
("null",4,"images/zhoubian/huay/huayue01.jpg",""),
("null",4,"images/zhoubian/huay/huayue02.jpg",""),
("null",4,"images/zhoubian/huay/huayue03.jpg",""),
("null",4,"images/zhoubian/huay/huayue04.jpg",""),
("null",4,"images/zhoubian/huay/huayue05.jpg",""),
("null",4,"images/zhoubian/huay/jshuayue01.jpg","华悦松泉度假酒店地处临安市美丽秀气的昌化古镇上，建筑面积3800余平方米，由国际著名设计师按巴厘岛风情创作，提供了一个自然温馨而奇妙的环境。这里以海滨自然风光、独特浪漫巴厘岛风情元素与现代空间概念相结合，散发着美妙的音符、建筑的语言、景观中的精华。酒店还设有用餐大厅、包厢、自助早餐厅、多功能会议室、棋牌室及专用停车场等配套设施和服务。酒店采用most advanced的电脑网络管理系统、极速的独立wifi网络和监控系统、话务系统、消防安全系统和数字电视系统。"),
("null",4,"images/zhoubian/huay/jshuayue02.png","酒店地址：临安昌化镇永丰路丰乐街33号 ，近唐昌街。"),
("null",4,"images/zhoubian/huay/jshuayue03.png","浙西大龙湾景区(就是原来的浙西天滩）景区绿树成荫，瀑布成群，溪水清澈见底。横空出世的摩天巨石，深渊莫测的神秘龙潭，胜于天界瑶池的天然浴场，美妙无比的千米天滩等天然胜境，将神话美、原始美、山水美、民俗美融为一体。由天滩食街、鳌鱼巨石、三女飞瀑、龙潭繁花、天河浴场、天滩胜景等二十八个景点及其它人文景观组成，是杭徽古道上的一颗生态明珠。【龙井峡闯关】在峡谷中穿越玩惊险刺激的户外拓展。从美食街吊脚楼前开始，沿峡谷建造了大型拓展项目，其中有浮桥、天使之手——跷跷板、网墙、梅花桩、玻璃桥、吊桥、缅甸桥、独木桥、穿越行走、天梯、A字桥、滑道。穿梭在巨石横空的峡谷河道上空，你，敢来挑战吗？"),
("null",4,"images/zhoubian/huay/jshuayue04.png","景区地址：浙江省杭州市临安区龙岗镇龙岗镇龙井村"),
("null",4,"images/zhoubian/huay/jshuayue05.jpg","又称天目山温泉，古亦名“芦荻泉”，早在1300多年有之。地热区面积约0.2平方公里，地下储热温度40—50度，溢出表面的水温30——32.5度，属低温热水。大气降水是温泉的主要补给来源，日出水量3000立方米。该温泉为无色、无臭、微涩、透明的低矿化度重碳酸型泉水。温泉除含有常规成分外，还富含氡、氟、锶、钡、铳等特殊成分，有很高的保健价值，对心血管、内分泌、肠胃、关节、神经、皮肤等均有辅助治疗功效。　“水阁冬温客更多，石池春暖人宜浴”，秋冬季跳到温泉池里泡上半天，既防病治病、消除疲劳、保养皮肤，又能“入浴突感气身暖，出门顿生满面春”，体验“温泉文化”，让身心更为洁净。"),
("null",4,"images/zhoubian/huay/jshuayue06.jpg","地址：浙江省杭州市临安区湍口镇湍泉街188号"),
("null",4,"images/zhoubian/huay/jshuayue07.jpg",'【大明山风景区】是镶嵌在杭州至黄山黄金旅游线上一颗璀璨明珠。大明山景区面积29平方公里，高峰大明顶海拔1489.9米，拥有32奇峰、13幽涧、8条飞瀑、3个千亩以上的高山草甸, 横贯六座山体的万米岩洞，共有大小景点96个，以朱元璋屯兵千亩田、起兵反元建立大明王朝是浙西临安唯一的省级风景名胜区，国家AAAA级风景旅游区，是镶嵌在杭州至黄山黄金旅游线上一颗璀璨明珠。大明山景区面积29平方公里，顶峰大明顶海拔1489.9米，拥有32奇峰，13幽涧，8条飞瀑，3个千亩以上的高山草甸, 横贯六座山体的万米岩洞，共有大小景点96个，原始，神奇，险峻，古幽， 被誉为“浙江黄山”。'),
("null",4,"images/zhoubian/huay/jshuayue08.jpg","景区地址：杭州市临安清凉峰镇白果村"),
("null",4,"images/zhoubian/huay/jshuayue09.jpg","【浙西大峡谷】被誉为“华东旅游峡谷”之一。峡内奇峰秀瀑，危岩多峭，有“白马岩中出，黄牛壁上耕”之誉。整个峡谷是线型环带状，全长80公里，共分龙井峡、上溪峡、浙门峡三个景段。峡内地貌典型，山景、树景、石景、水景形态各异，品位不俗。景区内植被丰富、林木参天、石成陡壁、水多急流，森林覆盖面达90%以上，是享受天然森林浴的人间天堂。大峡谷主要景点有：柘林瀑、剑门关、嬉水滩、老碓溪、白马崖等小游览区，山水俱佳，风景怡人。"),
("null",4,"images/zhoubian/huay/jshuayue10.jpg","景区地址：杭州市临安大峡谷镇一八省道旁"),
("null",5,"images/zhoubian/shaox/shaoxing01.jpg",""),
("null",5,"images/zhoubian/shaox/shaoxing02.jpg",""),
("null",5,"images/zhoubian/shaox/shaoxing03.jpg",""),
("null",5,"images/zhoubian/shaox/shaoxing04.jpg",""),
("null",5,"images/zhoubian/shaox/shaoxing05.jpg",""),
("null",5,"images/zhoubian/shaox/jsxihu01.jpg","赏西湖风光，品江南水乡，走进鲁迅故里，赏兰亭集序。"),
("null",5,"images/zhoubian/shaox/jsxihu02.jpg","绍兴古城，绿水晶莹，石桥飞架，乌篷穿梭，一派典型的江南水乡景色。"),
("null",6,"images/zhoubian/wuz/wuzhen01.jpg",""),
("null",6,"images/zhoubian/wuz/wuzhen02.jpg",""),
("null",6,"images/zhoubian/wuz/wuzhen03.jpg",""),
("null",6,"images/zhoubian/wuz/wuzhen04.jpg",""),
("null",6,"images/zhoubian/wuz/wuzhen05.jpg",""),
("null",6,"images/zhoubian/wuz/jswuzhen01.jpg","日、夜、晨游西栅、赏西湖全景、畅游横店秦王宫，深度体会水乡晨昏之美"),
("null",7,"images/zhoubian/shangh/shanghai01.jpg",""),
("null",7,"images/zhoubian/shangh/shanghai02.jpg",""),
("null",7,"images/zhoubian/shangh/shanghai03.jpg",""),
("null",7,"images/zhoubian/shangh/shanghai04.jpg",""),
("null",7,"images/zhoubian/shangh/shanghai05.jpg",""),
("null",7,"images/zhoubian/shangh/jsshanghai01.JPG","漫步在堤上，新柳如烟，春风骀荡，好鸟和鸣，意境动人；"),
("null",8,"images/zhoubian/nanj/wuxi01.jpg",""),
("null",8,"images/zhoubian/nanj/wuxi02.jpg",""),
("null",8,"images/zhoubian/nanj/wuxi03.jpg",""),
("null",8,"images/zhoubian/nanj/wuxi04.jpg",""),
("null",8,"images/zhoubian/nanj/wuxi05.jpg",""),
("null",7,"images/zhoubian/shangh/jsshanghai02.jpg","感受中国第-大城市的时尚，登东方明珠，览高楼大厦，叹繁华都市；"),
("null",8,"images/zhoubian/nanj/jsnanjing01.jpg","太湖风光,融淡雅清秀与雄奇壮阔于一体，碧水辽阔，烟波浩淼，峰峦隐现，气象万千；"),
("null",8,"images/zhoubian/nanj/jsnanjing02.jpg","西湖的标志性景点，旧时雷峰塔与北山的保俶塔，一南一北，隔湖相对，有“雷峰如老衲，保俶如美人”之誉，西湖上亦呈现出“一湖映双塔，南北相对峙”的美景； ");


/** 胡迅 **/
/**国内旅游**/
INSERT INTO jingdian VALUES
("null",31,"大足石刻 5A级景区",'世界八大石窟之一，有“东方艺术明珠”之称，是世界石窟艺术的最后丰碑。欣赏真正的“千手”观音。',70,"images/gnlv/lbdzsk/lbdzsk01.jpg"),
("null",32,"五台山 5A级景区","五台山是中国唯一一个青庙黄庙共处的佛教道场，国家重点风景名胜区，国家地质公园，国家自然与文化双重遗产",118,"images/gnlv/lbwts/lbwts01.jpg"),
("null",33,"庐山 5A级景区","匡庐奇秀甲天下，纯玩无购物，绝无任何隐形消费，让您安安心心的游玩！",85,"images/gnlv/lbls/lbls01.jpg"),
("null",34,"泰山 5A级景区","会当凌绝顶，一览众山小，泰安住宿豪华型/五星，济南住宿挂牌四星，臻享舒适，舒适体验，轻奢体验",80,"images/gnlv/lbts/lbts01.jpg"),
("null",35,"布达拉宫 5A级景区","朝圣者的天堂，宫堡式建筑群，金光灿烂，气势雄伟，是藏族古建筑艺术的精华。",100,"images/gnlv/lbbdlg/lbbdlg01.jpg"),
("null",36,"武当山 5A级景区","一座历史悠久的仙山，武当拳的发源地，国家森林公园、中国十大避暑名山、海峡两岸交流基地，入选最美 “国家地质公园”。",100,"images/gnlv/lbwds/lbwds01.jpg"),
("null",37,"净月潭 5A级景区","禅，净，修，净月潭，北普陀寺，国家级风景名胜区，国家森林公园，全国文明风景旅游区示范点",75,"images/gnlv/lbjyt/lbjyt01.jpg"),
("null",38,"明十三陵 5A级景区","五环内上门接，纯玩无购物， 含午餐门票， 鸟巢水立方外景，气势磅礴的陵寝建筑群",90,"images/gnlv/lbmssl/lbmssl01.jpg"),
("null",39,"【春节】【家庭游】欢乐五星北京双飞5日跟团游","<航班自选 新春大促双成人立减1100元 免一米二以下儿童早餐费 春节赠游雪世界&庙会 听德云社 游恭王府 3顿特色餐 宿4晚五星酒店>",3804,"images/qt/qtgn01.jpg"),
("null",40,"【高端游】厦门+鼓浪屿双飞4日跟团游","<潮玩10人团 抢预售红包 5星万豪或华邑无敌海景房 1晚鼓浪屿 专车接送0等待 登日光岩 搭海景地铁 夜游中山路观5D夜秀 暖冬双人减400>",1856,"images/qt/qtgn01.jpg"),
("null",41,"陆地头等舱+抖音网红餐厅+哈尔滨+童话雪乡+冰雪大世界+4H滑雪+雪地温泉+冰雪画廊雾凇双飞5日跟团游","<0购物0自费 20人封顶小团 1晚亚朵 1晚五钻酒店 雪乡升级2人独卫暖炕 雾凇奇观 温泉滑雪 赠6大冰雪体验/冰雪大世界/二人转/梦幻家园>",5515,"images/qt/qtgn03.jpg"),
("null",42,"【春节】壶口瀑布+黄帝陵+兵马俑+明城墙+华清宫+华山+历博+回民街双飞6日跟团游","<一天自由行 西安五星酒店 享大秦小宴 看精华壶口和华山 赠历博珍宝馆 提前入住华山 尽兴游玩华山>",2682,"images/qt/qtgn04.jpg"),
("null",43,"【春节】长沙+张家界大峡谷+玻璃桥+天门山国家森林公园+玻璃栈道+凤凰古城双飞5日跟团游","<3月预售 指定团期2人减600 纯玩0购物 专车专导 宿特色主题客栈 观天门天眼 必乘7544米大索道 赠土家三下锅 赏流泉飞瀑大峡谷 >",1772,"images/qt/qtgn05.jpg"),
("null",44,"【春节】昆明+大理+丽江+玉龙雪山冰川大索道双飞一动6日跟团游","<迎寒假望春节 双成人立减800元 玉龙雪山大索道 蓝月谷 大理花海洱海 赠彝族祭火大典长街宴 双古城 音乐餐吧 大理到昆明动车 >",2549,"images/qt/qtgn06.jpg"),
("null",45,"【春节】桂林+阳朔+游轮百里大漓江+龙脊梯田+银子岩+象鼻山+古东瀑布双飞5日跟团游","<同程专线 品质保障 万人销量 春节团期双成人立减1000 纯玩无购物 免费升级1晚五星市中心酒店 登龙脊探神秘少数民族古寨 打卡20元景色>",2570,"images/qt/qtgn07.jpg"),
("null",46,"【春节】广州长隆+广州市区双飞5日自由行","<自选2晚长隆度假区附近酒店 自选2晚广州市区酒店 玩转长隆 市区 自选长隆度假区门票>",2010,"images/qt/qtgn08.jpg"),
("null",47,"【家庭游】厦门亲子房双飞5日自由行","<航班自选 亲子家庭房型自选 可入住三成人 含专车接送机服务 良辰美景 快乐游厦门>",1212,"images/qt/qtgn09.jpg"),
("null",48,"西安双飞4日自由行","<酒店自选 推荐入住五星盛美利亚 体验跑男入住酒店 西班牙风情 >",2048,"images/qt/qtgn10.jpg"),
("null",49,"【亲子游】三亚+亚龙湾红树林双飞5日自由行","<全程五星级 亚龙湾红树林 一线海边沙滩 舒适躺椅 户外儿童乐园 周边百花谷商业街 吃购行方便>",4231,"images/qt/qtgn11.jpg"),
("null",50,"成都+重庆双飞6日自由行","<3晚成都武侯祠和颐酒店 2晚重庆大唐诺亚服务公寓 东临洪崖洞 位于解放碑商圈 舒适享受 畅享川渝>",1922,"images/qt/qtgn12.jpg"),
("null",51,"北海+涠洲岛双飞6日自由行","<北海往返 航班自选 推荐入住北海五星级香格里拉大酒店3晚 涠洲岛上住2晚 推荐海岸线度假酒店>",2662,"images/qt/qtgn13.jpg"),
("null",52,"丽江双飞7日自由行","<航班自选 推荐丽江古城内 止舍文旅2晚 DIY你的假期 >",1812,"images/qt/qtgn14.jpg"),
("null",53,"上海迪士尼+外滩火车5日自由行","<车次自选 推荐2晚上海外滩酒店 2晚迪士尼附近酒店 可加购迪士尼门票>",545,"images/qt/qtgn15.jpg"),
("null",54,"【春节】厦门中山路永丽达+鼓浪屿双动4日自由行","<暖冬海岛游 2晚地标中山路酒店 1晚鼓浪屿近海别墅 毗邻轮渡码头和景区 出行便捷 包含专车接送>",1750,"images/qt/qtgn16.jpg"),
("null",55,"长沙+张家界双飞4日自由行","<长沙进出 航班自选 2晚长沙大成国际高级房 1晚张家界京武铂尔曼高级房>",1763,"images/qt/qtgn16.jpg");

/**国内旅游图片**/
/**大足石刻轮播**/
INSERT INTO jingdian_pic VALUES
("null",31,"images/gnlv/lbdzsk/lbdzsk01.jpg",""),
("null",31,"images/gnlv/lbdzsk/lbdzsk02.jpg",""),
("null",31,"images/gnlv/lbdzsk/lbdzsk03.jpg",""),
("null",31,"images/gnlv/lbdzsk/lbdzsk04.jpg",""),
("null",31,"images/gnlv/lbdzsk/lbdzsk05.jpg","");
/**大足石刻景点介绍图片**/
INSERT INTO jingdian_pic VALUES 
("null",31,"images/gnlv/dazushike/dzskpicqt01.jpg",'石窟艺术的丰碑大足石刻素有“东方明珠”之称。唐末、宋初时期的宗教摩崖石刻，以佛教题材为主，是中国著名的古代石刻艺术'),
("null",31,"images/gnlv/dazushike/dzskpicqt02.jpg",'精美的石刻公元13世纪末和17世纪中叶，大足曾两度遭受兵燹。"五山"摩崖造像中，除宝顶山圣寿寺两次焚毁、两度重修外，摩崖造像一直保存完好。'),
("null",31,"images/gnlv/dazushike/dzskpicqt03.jpg",'宝顶石刻宝顶山位于大足区龙岗街道东北15公里处，海拔527.83米。巨型雕刻360余幅，以六道轮回，广大宝楼阁、华严三圣像。'),
("null",31,"images/gnlv/dazushike/dzskpicqt04.jpg",'险峻山崖时间跨度从公元9世纪到13世纪，以其艺术品质极高、题材丰富多变而闻名遐迩！'),
("null",31,"images/gnlv/dazushike/dzskpicqt05.jpg",'晚唐造像自公元892—1252年的360年间（晚唐景福至南宋淳佑年间），大足先后建成佛教、道教和"三教"造像区34处，造像数量占大足石刻总数的80%左右。其中除北山摩崖造像始凿于公元892年晚唐景福元年外，其余均为公元1082—1252年北宋元丰至南宋淳佑的170余年间建成。');

/**五台山轮播**/
INSERT INTO jingdian_pic VALUES
("null",32,"images/gnlv/lbwts/lbwts01.jpg",""),
("null",32,"images/gnlv/lbwts/lbwts02.jpg",""),
("null",32,"images/gnlv/lbwts/lbwts03.jpg",""),
("null",32,"images/gnlv/lbwts/lbwts04.jpg",""),
("null",32,"images/gnlv/lbwts/lbwts05.jpg","");
/**五台山景点介绍图片**/
INSERT INTO jingdian_pic VALUES
("null",32,"images/gnlv/wutaishan/wtspicqt01.jpg",'五台山名字由来五台山方圆约320公里，因五峰如五根擎天巨柱拔地而起、 巍然矗立，峰顶平坦如台，故名五台。'),
("null",32,"images/gnlv/wutaishan/wtspicqt02.jpg",'奇峰灵崖五台山奇峰灵崖随处皆是，著名者达五十余处。其中写字崖，用水洒湿以后，拿手帕仔细拭擦，崖面会显示出类似篆隶体字迹，水干字隐。'),
("null",32,"images/gnlv/wutaishan/wtspicqt03.jpg",'观日出黎明时分，登临五台山东台望海峰，即东台顶，注视云海红日，心如天地宽阔。'),
("null",32,"images/gnlv/wutaishan/wtspicqt04.jpg",'独特五爷庙坐北向南这座建筑便是大名鼎鼎的五龙王殿，人们通称五爷庙。因为一般的佛教寺院是不供龙王的，一直香火不断。'),
("null",32,"images/gnlv/wutaishan/wtspicqt05.jpg",'跳布扎跳布扎起源于西藏,是五台山黄教每年农历六月十五前后举行的重大佛教活动。活动为期三天,分“镇鬼”、“跳神”和“斩鬼”，以此驱邪。');

/**庐山轮播**/
INSERT INTO jingdian_pic VALUES
("null",33,"images/gnlv/lbls/lbls01.jpg",""),
("null",33,"images/gnlv/lbls/lbls02.jpg",""),
("null",33,"images/gnlv/lbls/lbls03.jpg",""),
("null",33,"images/gnlv/lbls/lbls04.jpg",""),
("null",33,"images/gnlv/lbls/lbls05.jpg","");
/**庐山景点介绍图片**/
INSERT INTO jingdian_pic VALUES
("null",33,"images/gnlv/lushan/lspicqt01.jpg",'含鄱口北面为第二高峰“大月山”，南面为庐山第三高峰 “五老峰”，湖光山色，相互比美。'),
("null",33,"images/gnlv/lushan/lspicqt02.jpg",'老别墅老别墅的故事景区，荟萃了庐山别墅中的精华。在其周边，还有“朱德别墅”、“ 邓小平别墅”、“林彪别墅”等可供游人外部参观。'),
("null",33,"images/gnlv/lushan/lspicqt03.jpg",'花径花径公园位于牯岭街西南2公里处，相传是唐代诗人白居易咏诗《大林寺桃花》的地方。园中繁花似锦，亭台碑碣，曲径通幽，湖光山色，风景如画。'),
("null",33,"images/gnlv/lushan/lspicqt04.jpg",'如琴湖如琴湖座落西谷，峰岭围抱，森林蓊蔚，环境幽雅。湖心立岛，岛内有许多人工饲养的孔雀，所以名为 孔雀岛，曲桥连接，上缀水榭，形成绿水青山，相映成趣。'),
("null",33,"images/gnlv/lushan/lspicqt05.jpg",'三叠泉三叠泉位于五老峰下部，飞瀑流经的峭壁有三级，溪水分三叠泉飞泻而下，落差共155米，极为壮观，撼人魂魄。');

/**泰山轮播**/
INSERT INTO jingdian_pic VALUES
("null",34,"images/gnlv/lbts/lbts01.jpg",""),
("null",34,"images/gnlv/lbts/lbts02.jpg",""),
("null",34,"images/gnlv/lbts/lbts03.jpg",""),
("null",34,"images/gnlv/lbts/lbts04.jpg",""),
("null",34,"images/gnlv/lbts/lbts05.jpg","");
/**泰山景点介绍图片**/
INSERT INTO jingdian_pic VALUES
("null",34,"images/gnlv/taishan/lspicqt01.jpg",'五岳独尊 古人形容“泰山吞西华，压南衡，驾中嵩，轶北恒，为五岳之长”。中国古代神话传说中，盘古死后，头部化为泰山。古代传统文化认为，东方为万物交替、初春发生之地，故泰山有“五岳之长”、“五岳独尊”的称誉。'),
("null",34,"images/gnlv/taishan/lspicqt02.jpg",'会当凌绝顶，一览众山小 泰山风景以壮丽著称。重叠的山势，厚重的形体，苍松巨石的烘托，云烟的变化，使它在雄浑中兼有明丽，静穆中透着神奇。'),
("null",34,"images/gnlv/taishan/lspicqt03.jpg",'十八盘 共有石阶1633级。泰山之雄伟，尽在十八盘，泰山之壮美，尽在攀登中。'),
("null",34,"images/gnlv/taishan/lspicqt04.jpg",'南天门 这里是泰山十八盘的顶峰，更是登上泰山的标志。站在这里，你就能体验一览众山小的成就感。'),
("null",34,"images/gnlv/taishan/lspicqt04.jpg",'天街 天街位于南天门以东，街上人来人往，热闹非凡，街道两旁布满了宾馆、饭店、商铺还有各色小店，是一条天上街市。');

/**布达拉宫轮播**/
INSERT INTO jingdian_pic VALUES
("null",35,"images/gnlv/lbbdlg/lbbdlg01.jpg",""),
("null",35,"images/gnlv/lbbdlg/lbbdlg02.jpg",""),
("null",35,"images/gnlv/lbbdlg/lbbdlg03.jpg",""),
("null",35,"images/gnlv/lbbdlg/lbbdlg04.jpg",""),
("null",35,"images/gnlv/lbbdlg/lbbdlg05.jpg","");
/**布达拉宫景点介绍图片**/
INSERT INTO jingdian_pic VALUES
("null",35,"images/gnlv/budalagong/bdlgpicqt01.jpg",'帕巴拉康—圣观音殿帕巴拉康—圣观音殿是布达拉宫的主供佛殿，殿堂内主供布达拉宫的镇宫之宝级文物——圣观音像。'),
("null",35,"images/gnlv/budalagong/bdlgpicqt02.jpg",'白宫德央厦—东欢乐广场白宫德央厦—东欢乐广场位于白宫东侧，面积达1300余平方米，是旧西藏政府在布达拉宫内举行演出等大型活动的场所。'),
("null",35,"images/gnlv/budalagong/bdlgpicqt03.jpg",'措钦司西平措努—西大殿措钦司西平措努一西大殿，位于红宫四层中央，大殿面积达776.2平方米，是五世达赖喇嘛的享堂，四周墙壁绘2215组壁画，记录了五世达赖喇嘛的家族史及本人传记。'),
("null",35,"images/gnlv/budalagong/bdlgpicqt04.jpg",'伍孜加毗——金顶群金顶群是布达拉宫一处独特景观，位于海拔3750余米的布达拉宫主楼红宫之巅，这里共有7座金顶，均为铜鎏金制成。'),
("null",35,"images/gnlv/budalagong/bdlgpicqt05.jpg",'堆廓拉康—时轮殿时轮殿位于红宫六层回廓东侧，殿内中央供奉一座铜鎏金时轮立体坛城，周围佛龛内供奉有印度、中国的著名历算传承者168位的塑像等珍贵造像。');

/**武当山轮播**/
INSERT INTO jingdian_pic VALUES
("null",36,"images/gnlv/lbwds/lbwds01.jpg",""),
("null",36,"images/gnlv/lbwds/lbwds02.jpg",""),
("null",36,"images/gnlv/lbwds/lbwds03.jpg",""),
("null",36,"images/gnlv/lbwds/lbwds04.jpg",""),
("null",36,"images/gnlv/lbwds/lbwds05.jpg","");
/**武当山景点介绍图片**/
INSERT INTO jingdian_pic VALUES
("null",36,"images/gnlv/wudangs/wdspicqt01.jpg",'金顶景区 武当山主峰天柱峰顶上的金顶，是武当山的精华和象征，也是武当道教在皇室扶持下走向鼎盛高峰的标志。'),
("null",36,"images/gnlv/wudangs/wdspicqt02.jpg",'亘古无双胜境 武当山以其绚丽多姿的自然景观、规模宏大的古建筑群、源远流长的道教文化、博大精深的武当武术成为中外游客关注的焦点。'),
("null",36,"images/gnlv/wudangs/wdspicqt02.jpg",'道教圣地 位于湖北省西北部的十堰市丹江口市境内， 属大巴山东段。武当山又名太和山、谢罗山、参上山、仙室山，古有“太岳”、“玄岳”、“大岳”之称。');


/**净月潭轮播**/
INSERT INTO jingdian_pic VALUES
("null",37,"images/gnlv/lbjyt/lbjyt01.jpg",""),
("null",37,"images/gnlv/lbjyt/lbjyt02.jpg",""),
("null",37,"images/gnlv/lbjyt/lbjyt03.jpg",""),
("null",37,"images/gnlv/lbjyt/lbjyt04.jpg",""),
("null",37,"images/gnlv/lbjyt/lbjyt05.jpg","");
/**净月潭景点介绍图片**/
INSERT INTO jingdian_pic VALUES
("null",37,"images/gnlv/jingyuetan/jytpicqt01.jpg",'山水林相依 长春净月潭国家风景名胜区座落在吉林省长春市的东南部，风景区内潭水碧透，林海莽莽，大岭纵横、水、林相依的生态景象构成了净月潭四季变幻的风情长卷。'),
("null",37,"images/gnlv/jingyuetan/jytpicqt02.jpg",'森林浴场 净月潭公园内的生态型景点“森林浴场”素以人间“天然氧吧”著称，这里含氧丰富，负氧离子高于市区400倍，在这里活动对身体很有好处。'),
("null",37,"images/gnlv/jingyuetan/jytpicqt03.jpg",'鹿苑 鹿苑”是净月潭森林公园内主要景观之一，苑内饲养有长白山梅花鹿、天山马鹿、大兴安岭驯鹿、麋鹿等鹿科动物500多只，更有热带风情的非洲鸵鸟供人观赏。'),
("null",37,"images/gnlv/jingyuetan/jytpicqt04.jpg",'东北虎园 东北虎园放养有东北虎、非洲狮、熊、梅花鹿、丹顶鹤等珍稀野生动物60多个品种，2000多只动物，还有丰富的动物技艺表演，其中更有“动物大巡游”人兽同欢项目。'),
("null",37,"images/gnlv/jingyuetan/jytpicqt05.jpg",'沙滩浴场 游客可在乘船戏水之后小憩于韩式帐篷，品尝净月鱼宴。还可以选择体验“飞渡锁链桥”活动。');


/**明十三陵轮播**/
INSERT INTO jingdian_pic VALUES
("null",38,"images/gnlv/lbmssl/lbmssl01.jpg",""),
("null",38,"images/gnlv/lbmssl/lbmssl02.jpg",""),
("null",38,"images/gnlv/lbmssl/lbmssl03.jpg",""),
("null",38,"images/gnlv/lbmssl/lbmssl04.jpg",""),
("null",38,"images/gnlv/lbmssl/lbmssl05.jpg","");
/**明十三陵景点介绍图片**/
INSERT INTO jingdian_pic VALUES
("null",38,"images/gnlv/mingshisanling/msslpicqt01.jpg",'十三陵 沐浴在一片纯净中，景区一片宁静。眼前景物的颜色合为一体，惊为天作。'),
("null",38,"images/gnlv/mingshisanling/msslpicqt02.jpg",'春 春天，穿行在明十三陵景区，看桃花盛开，樱桃和杏压满枝头。'),
("null",38,"images/gnlv/mingshisanling/msslpicqt03.jpg",'夏 夏天了，去哪避暑呢？ 十三陵周围群山环抱，中部为平原，陵前有小河曲折蜿蜒，山明水秀，约上你的小伙伴一起来吧！'),
("null",38,"images/gnlv/mingshisanling/msslpicqt04.jpg",'秋 色彩丰富的秋天，安静祥和的明十三陵。'),
("null",38,"images/gnlv/mingshisanling/msslpicqt05.jpg",'冬 冬日——风雪定陵。'),
("null",38,"images/gnlv/mingshisanling/msslpicqt06.jpg",'昭陵 现存有完整的祾恩门、祾恩殿及其东西配殿，和方城、明楼、宝顶等。这里埋葬有明朝第十二帝穆宗朱载垕和他的三位皇后。');

/**汪睿**/
/**国外景点**/
INSERT INTO jingdian VALUES
("null",61,'<日本东京-京都-大阪7或6日游>','东京风情，京都底蕴，七天六夜，日本大阪+京都+箱根+东京7日6晚跟团游，玩转白川乡，五星全日空两点进出，AB线东京1日私属+2晚市区连住+4-5钻酒店+京都奈良C线世遗白川乡+2天自由+2晚温泉',8000,'images/country/Japan/pic.jpg'),
("null",62,'<希腊+西班牙+葡萄牙12日游>','希腊8日跟团游·4-5星+悬崖酒店【25人小团 蜜月必选】五星航空+雅典卫城含讲解+圣托里尼岛全天自由活动+OIA小镇日落+弗朗明戈秀+马德里皇宫+圣家族大教堂+奎尔公园+羊排餐+海鲜饭+购物村+蜜月赠送',14000,'images/country/Greece/pic.jpg'),
("null",63,'<巴厘岛机票+当地6或7日游>','印度尼西亚巴厘岛7日5晚跟团游·『东航直飞全国联运·纯玩无购物』乌布隐逸谷网红秋千+赠鸟巢畅拍 | 金银岛出海一日游+南洋花香按摩1小时 | 2天自由活动 | 全程泳池酒店连住',5076,'images/country/BaliIsland/pic.jpg'),
("null",64,'<挪威+丹麦+瑞典+芬兰+峡湾10-11日游>','挪威12日私家团·【罗弗敦群岛极地深度探索】【单反/无人机/Go Pro免费提供使用】奥斯陆+奥镇+斯沃尔韦尔+纳尔维克+特罗姆瑟，出海垂钓+观鲸，冬季皮划艇+北极野生动物园，室外桑拿体验，极光摄影专业指导',13000,'images/country/Norway/pic.jpg'),
("null",65,'<阿布扎比+迪拜机票+当地4晚6日游>','联酋迪拜+阿布扎比7日5晚跟团游(5钻)·【CZ武汉直飞+全国联运】【全程无购物】【司导费／旅游税一价包】【5钻酒店+特色酒店】【678｜范思哲｜索菲特｜阿玛尼等任选升级】【打卡金相框】【特色火锅】【免签】',6600,'images/country/Dubai/pic.jpg'),
("null",66,'<泰国-曼谷-芭堤雅-沙美岛5晚6日游>','泰国曼谷+芭堤雅6日5晚跟团游·（3钻）【部分团期每人立减600元，限时免落地签，再省450元】【A线双岛出海，LK泰式国五酒店 B线送夜秀表演 C线3晚钻五酒店+暹罗梦幻剧场】大皇宫+玉佛寺+人妖秀+富贵黄金屋+金沙岛出海',2699,'images/country/Bangkok/pic.jpg'),
("null",67,'<澳大利亚-凯恩斯-墨尔本10日游>','澳大利亚悉尼+墨尔本+凯恩斯+黄金海岸+新西兰奥克兰+罗托鲁瓦+基督城+皇后镇15日跟团游(4钻)·【认准自营】纯玩+保证住库克山+萤火虫+大堡礁+米弗峡湾+天空缆车+优质酒店+八菜一汤+优选内陆段+A线南极中心+观星',31000,'images/country/Australia/pic.jpg'),
("null",68,'<马尔代夫Lily Beach莉莉岛5晚7日自由行>','马尔代夫库拉玛提岛Kuramathi7日5晚自由行>>>首晚马累+4晚岛上+全餐+可优惠升一价全包+拖尾沙滩+可升级水飞+高性价比热卖',11000,'images/country/Maldives/pic.jpg'),
("null",69,'清迈3-14日自由行','【淡季促销】立减50/晚！佛系清迈·梦秸山/梦沐餐厅/黑森林餐厅/黑白蓝庙/素贴山祈福+双龙寺/拉查帕皇家花园·塔佩门·瓦洛洛市场·清迈两大夜市~',2004,'images/country/others/pic1.jpg'),
("null",70,'日本大阪+京都+箱根+东京6日5晚跟团游','双人立减1000元+签证简化+拒签全退】A京都/B东京/C大阪各一天自由活动，泡富士山温泉，体验日式榻榻米，大阪2晚升级5钻酒店，赠wifi，2月安排grinpa雪乐园+日系旅拍',4871,'images/country/others/pic2.jpg'),
("null",71,'马尔代夫罗宾逊努努岛ROBINSONCLUBNOONU5晚7日自由行','<上海出发，新加坡转机，内飞上岛，一价全包餐型，2017年11月新开业岛屿，浮潜A级，蜜月圣地>',15100,'images/country/others/pic3.jpg'),
("null",72,'迪拜3晚6天或4晚6天跟团游','<A线445，D线全程5钻，D一价全含，法拉利公园，网红打卡CX国泰或CA国航执飞>',5599,'images/country/others/pic4.jpg'),
("null",73,'美国东西海岸+黄石国家公园+尼亚加拉大瀑布+大都会艺术博物馆15日品质跟团游','<纽约大都会艺术博物馆，黄石公园（2次入园），大提顿，布莱斯峡谷，锡安，羚羊彩穴，马蹄湾>',18799,'images/country/others/pic5.jpg'),
("null",74,'肯尼10天经典之旅跟团游','<全程5钻酒店住宿、马赛马拉连住3晚、非洲特色BBQ烤肉餐、EY航空>',18799,'images/country/others/pic6.jpg');
/**日本**/
INSERT INTO jingdian_pic VALUES
("null",61,"images/country/Japan/6.jpg",""),
("null",61,"images/country/Japan/7.jpg",""),
("null",61,"images/country/Japan/8.jpg",""),
("null",61,"images/country/Japan/9.jpg",""),
("null",61,"images/country/Japan/10.jpg",""),
("null",61,"images/country/Japan/1.jpg","东京迪士尼度假区的主要部分，被誉为“亚洲第一游乐园”，也是目前营运最成功的迪士尼乐园之一。从主建筑“灰姑娘城”进入游乐园，开始一段忘我的豪华童话之旅吧！除了各种充满仙境般梦幻气息的娱乐设施外，经典卡通人物的表演和盛装游行也相当精彩，园区还定期举行年度活动，尤其圣诞、新年期间的特别活动格外吸引人，不同年龄层的游客都能在此找到乐趣。游玩迪士尼并没有特定的路线，建议入园后先往里头走，把高人气的项目预约掉。玩游乐项目迪士尼乐园分为世界市集、探险乐园、西部乐园、动物天地、梦幻乐园、卡通城、明日乐园，这7个区域中可玩性最高的要数明日乐园了，尤其推荐“星际旅行”和“太空山”。"),
("null",61,"images/country/Japan/2.jpg","是东京最著名的商业区，也是日本最具代表性的繁华商圈，以高级购物商店而闻名，聚集了顶级大牌旗舰店、高档百货和各种百年老店等，与巴黎香榭丽舍大街、纽约第五大道齐名，可以在各种影视镜头中看到银座的景象。银座有8条大街，从一丁目到八丁目由中央大街贯通，其中又以四丁目十字路口最为繁华。每到周六、周日，从中午到傍晚，银座的主要道路禁止车辆通行，变成“步行者天国”。银座作为日本高档消费的代名词，令无数游客流连忘返，然而随着平价品牌店铺的陆续登陆，银座也变得更加“平民化”。"),
("null",61,"images/country/Japan/3.jpg","是东京历史最悠久、人气最旺的寺院，也是浅草地区的中心，供奉的本尊是圣观音。它始建于7世纪，因屡遭火灾，后被重建。相传因三位渔民出海捕鱼时捞起了一座约5.5厘米高的金观音小雕像，才修建了这座庙宇。门后挂着两个巨大的草鞋。仲见世商店街门内是通往寺庙广场的仲见世商店街，一字排开的诸多店铺摆满了各种日本风情的小商品，如传统的扇子、纸制的小玩意等。这是东京最热闹的购物街之一，很多游客在这里一边观赏一边挑选精美的工艺品。"),
("null",61,"images/country/Japan/4.jpg","风雷神门浅草寺的象征是入口处的风雷神门，左右分别是镇守寺院的风神和雷神，大门上挂着写有“雷门”两字的巨大红灯笼，非常气派。"),
("null",61,"images/country/Japan/5.jpg","新宿是东京最著名的繁华商区之一，不仅有数不尽的商场和大厦，还有赏樱地新宿御苑、富有文艺的黄金街及歌舞伎町等知名景点。充满绮丽色彩的新宿都能满足你对东京的所有想象，而《迷失东京》等多部电影也曾在这取景。");
/**希腊**/
INSERT INTO jingdian_pic VALUES
("null",62,"images/country/Greece/6.jpg",""),
("null",62,"images/country/Greece/7.jpg",""),
("null",62,"images/country/Greece/8.jpg",""),
("null",62,"images/country/Greece/9.jpg",""),
("null",62,"images/country/Greece/10.jpg",""),
("null",62,"images/country/Greece/1.jpg","圣托里尼岛北边岬角的顶端有个名叫伊亚的小镇，它是圣托里尼岛的第二大城镇。和商业味稍浓厚的费拉小镇不同，多数游客来这里的主要目的就是欣赏这里的日落。据说这里有全世界最美丽的日落，能看到“夕阳落入爱琴海”。伊亚小镇的日落景色被许多艺术家、摄影家作为灵感的来源。白色的房子、蓝顶的教堂、传统的风车在夕阳的照耀下总是能让人陶醉。欣赏落日的最佳位置每当夕阳西下的时候，游客总会蜂拥而来，找一个观赏日落的最佳位置静静地坐上1小时，看着太阳慢慢的落下，消失在地平线，海面上只剩下一片绯红的余晖，整个世界宁静下来。游客们总会情不自禁的拍手鼓掌，赞美这美丽的夕阳。小镇的最西侧有两个平台，一个是类似烽火台的海边平台，一个是风车下的小广场，这两个地方都是观看日落的最佳位置。"),
("null",62,"images/country/Greece/2.jpg","费拉是爱琴海岛屿圣托里尼岛的首府，这座小镇建在圣托里尼岛西部400米高的火山边缘，景色相当壮观，小镇房屋的墙全是白色，屋顶是深蓝色，与天空、海洋混成一体，随手一拍就是一张明信片。费拉不仅是一个传统的居民居住点，同时也是圣托里尼岛的商业和旅游中心，十分繁华。小镇交通便利，酒店众多，从这出发到伊亚小镇、黑沙滩和红沙滩等都有直达的公共汽车，可以说是圣岛的公交中转站。每到7、8、9月的旺季这里基本上都挤满了游客，很多都是刚结婚的新人，来这里度蜜月。费拉的中心广场有巴士、出租车站、银行和药店。小镇上有无数迷宫般的窄街小巷，曲曲折折、上上下下。走不完的一级级台阶旁，不是咖啡店，就是酒吧间，不是珠宝店，就是礼品屋，你可以在这里买一张明信片，当场投递，寄给家人和朋友分享快乐和祝福。街巷里的游客们摩肩接踵，川流不息，旺季的时候几乎到了人挨人的地步。这里的饭店和酒店生意也好得令人出奇，很多都需要提前很久预订。早晨的闲暇时光，你可以在这里俯瞰爱琴海、眺望对面的火山岛、吹吹海风，晒晒阳光浴或在步道上随意的走走逛逛，拍拍照片。傍晚时分可以坐在靠近悬崖边的餐厅里边品尝美食边欣赏日落。到了晚上这里更是灯火通明，你可以去酒吧听听歌，点上一杯酒放松一下。
"),
("null",62,"images/country/Greece/3.jpg","作为圣托里尼明信片式的地标建筑，蓝顶教堂其实在圣托里尼有很多座，但最有名的，也就是在国家地理杂志上出现过的蓝顶教堂，则是位于费拉镇的圣母玛丽亚（Saint Maria）教堂，位于费拉（Fira）镇和Firostefani镇中间那段海边步道上。"),
("null",62,"images/country/Greece/4.jpg","蓝顶教堂很小，在紧邻海边的山坡上，因此从费拉镇过去，可见到白色建筑、蓝色圆顶和蔚蓝大海的经典组合。这里不仅是圣岛驴友的比游之地，也是拍摄婚纱照的经典背景风光。早上8、9点钟太阳升起和下午6、7点黄昏时分，是拍摄教堂的最佳时间。"),
("null",302,"images/country/Greece/5.jpg","黑沙滩在卡马利（Kamari）镇，是火山岛喷发过后的火山灰沉积下来的黑砂石不断风化后形成的绵长黑沙滩，是圣托里尼岛东面最受欢迎的度假海滩，据说黑色的沙子还有一定的美容、医疗功效，在旅游旺季，沙滩上人会非常多。");
/**巴厘岛**/
INSERT INTO jingdian_pic VALUES
("null",63,"images/country/BaliIsland/1.jpg",""),
("null",63,"images/country/BaliIsland/2.jpg",""),
("null",63,"images/country/BaliIsland/3.jpg",""),
("null",63,"images/country/BaliIsland/4.jpg",""),
("null",63,"images/country/BaliIsland/5.jpg",""),
("null",63,"images/country/BaliIsland/6.jpg",""),
("null",63,"images/country/BaliIsland/7.jpg",""),
("null",63,"images/country/BaliIsland/8.jpg",""),
("null",63,"images/country/BaliIsland/9.jpg",""),
("null",63,"images/country/BaliIsland/10.jpg",""),
("null",63,"images/country/BaliIsland/11.jpg","");
/**挪威**/
INSERT INTO jingdian_pic VALUES
("null",64,"images/country/Norway/1.jpg",""),
("null",64,"images/country/Norway/2.jpg",""),
("null",64,"images/country/Norway/3.jpg",""),
("null",64,"images/country/Norway/4.jpg",""),
("null",64,"images/country/Norway/5.jpg",""),
("null",64,"images/country/Norway/6.jpg",""),
("null",64,"images/country/Norway/7.jpg",""),
("null",64,"images/country/Norway/8.jpg",""),
("null",64,"images/country/Norway/9.jpg",""),
("null",64,"images/country/Norway/10.jpg","");
/**迪拜**/
INSERT INTO jingdian_pic VALUES
("null",65,"images/country/Dubai/1.jpg",""),
("null",65,"images/country/Dubai/2.jpg",""),
("null",65,"images/country/Dubai/3.jpg",""),
("null",65,"images/country/Dubai/4.jpg",""),
("null",65,"images/country/Dubai/5.jpg",""),
("null",65,"images/country/Dubai/6.jpg",""),
("null",65,"images/country/Dubai/7.jpg",""),
("null",65,"images/country/Dubai/8.jpg",""),
("null",65,"images/country/Dubai/9.jpg",""),
("null",65,"images/country/Dubai/10.jpg","");
/**曼谷**/
INSERT INTO jingdian_pic VALUES
("null",66,"images/country/Bangkok/1.jpg",""),
("null",66,"images/country/Bangkok/2.jpg",""),
("null",66,"images/country/Bangkok/3.jpg",""),
("null",66,"images/country/Bangkok/4.jpg",""),
("null",66,"images/country/Bangkok/5.jpg",""),
("null",66,"images/country/Bangkok/6.jpg",""),
("null",66,"images/country/Bangkok/7.jpg",""),
("null",66,"images/country/Bangkok/8.jpg",""),
("null",66,"images/country/Bangkok/9.jpg",""),
("null",66,"images/country/Bangkok/10.jpg","");
/**澳大利亚**/
INSERT INTO jingdian_pic VALUES
("null",67,"images/country/Australia/1.jpg",""),
("null",67,"images/country/Australia/2.jpg",""),
("null",67,"images/country/Australia/3.jpg",""),
("null",67,"images/country/Australia/4.jpg",""),
("null",67,"images/country/Australia/5.jpg",""),
("null",67,"images/country/Australia/6.jpg",""),
("null",67,"images/country/Australia/7.jpg",""),
("null",67,"images/country/Australia/8.jpg",""),
("null",67,"images/country/Australia/9.jpg",""),
("null",67,"images/country/Australia/10.jpg","");
/**马尔代夫**/
INSERT INTO jingdian_pic VALUES
("null",68,"images/country/Maldives/1.jpg",""),
("null",68,"images/country/Maldives/2.jpg",""),
("null",68,"images/country/Maldives/3.jpg",""),
("null",68,"images/country/Maldives/4.jpg","");
/** 薛政 **/
INSERT INTO jingdian VALUES
("null",171,'桂林-漓江-遇龙河-银子岩-世外桃源双飞5日游','TOP人气首选，0购0自费，臻选五星大公馆，星级游船大漓江，印象山水间双表演，品年夜饭儿童送红包',7120,'images/xue/1 (1).jpg'),
("null",172,'桂林-漓江-阳朔-龙脊梯田-逍遥湖-象鼻山双飞6日游','桂林全景，印象刘三姐/2晚五星酒店/赠198元山水间演出/0购0自费，年夜饭升级/儿童新年红包',3570,'images/xue/1 (2).jpg'),
("null",173,'桂林-漓江-阳朔-象鼻山-银子岩双飞5日游','自营销冠，纯玩0购物，4万人高满意度，升级1晚五星大公馆，打卡网红澳门酒家，品年夜饭儿童送红包',1710,'images/xue/1 (3).jpg'),
("null",174,'桂林-阳朔-大漓江-遇龙河双飞5日游','20人小团/超2K人优选/奢华四星船/臻选大公馆/阳朔2整天/儿童含早/醉氧古东/金牌导游/三只松鼠新春大礼包',700,'images/xue/1 (4).jpg'),
("null",175,'桂林ClubMed地中海度假村双飞3-8日自由行','早订早优惠，山水主题乐园，融合法国度假理念，吃喝玩乐全含，私享假期，畅想自由，便利出行',670,'images/xue/1 (5).jpg'),
("null",176,'桂林-漓江-阳朔-世外桃源单飞5日游','纯玩休闲，2晚阳朔挂四，含十里画廊换车费，品阳朔啤酒鱼，升级1餐澳门美食，卧铺回上海',2570,'images/xue/1 (6).jpg'),
("null",177,'桂林-阳朔-漓江-遇龙河-银子岩双飞4日游','探桂林 三5A景区 升级一晚维也纳 Q版卡通萌地图 24h接送站',7120,'images/xue/1 (7).jpg'),
("null",178,'桂林-古东-阳朔-漓江-世外桃源-龙脊双飞6日游','全景爸妈游/0购物0自费，缆车登顶观梯田，网红漓江渔火/江边下午茶/7大特色美食，送288元礼包',4270,'images/xue/1 (8).jpg'),
("null",179,'桂林-漓江-阳朔双飞5日游','千人好评,四星船360全景漓江,阳朔庭院式特色客栈/桂林段豪华酒店,赠280元千古情/象山传奇双表演,保证空座率,春节预售',6570,'images/xue/1 (9).jpg'),
("null",180,'桂林-漓江-阳朔-遇龙河双飞5日游','冰点价爆款抢购/免费升2晚五星大公馆/精华漓江/古东红枫/赠山水间大秀/登顶日月双塔/桂林地道米粉/24H接送',8470,'images/xue/1 (10).jpg'),
("null",181,'桂林-漓江-阳朔-龙脊梯田双飞5日游','全景全含,住梯田吊脚楼/观龙脊全景,漓江0距离,赠280千古情/私享庭院赏桂剧,桂林1晚大公馆，0购含接送',1470,'images/xue/1 (11).jpg'),
("null",182,'桂林-漓江-龙脊梯田-遇龙河-银子岩-世外桃源双飞5日游','王者桂林 约泡龙胜温泉 观梯田之冠 升级一餐豪标椿记美食',170,'images/xue/1 (12).jpg'),
("null",183,'桂林-漓江-阳朔-越南-河内-北海双飞10日游','广越美食之旅，14味米粉，阳朔啤酒鱼，人气澳门酒家，160元海鲜自助，含签证费，不散拼更放心',1270,'images/xue/1 (13).jpg'),
("null",184,'桂林双飞5日自由行','前两晚桂林市区酒店，后两晚入住ClubMed度假村，千人出游，高品质体验，畅想自由，放肆玩乐',370,'images/xue/1 (14).jpg');

/**用户订单**/
CREATE TABLE wanqu_order(
	aid INT PRIMARY KEY AUTO_INCREMENT,  #订单编号
	status VARCHAR(20),						#订单状态  未使用  已使用
	jingdian_time DATE,				#出游时间
	order_time DATETIME,				#下单时间
	id INT,					#景点id
	jingdian_title VARCHAR(128),			#主标题
	count INT,						#购买数量
	price INT,						#总金额
	client_name VARCHAR(255),		#客户姓名
	uid INT,							#购买该订单的用户id
	FOREIGN KEY (uid) REFERENCES user (uid),
	evaluate VARCHAR(10),
	phone varchar(16), #下单人电话
	IDnumber varchar(18), #身份证号
	chuxing_phone varchar(16) #出行人电话
);
INSERT INTO wanqu_order VALUES
(null,"已使用","2018-10-1",now(),211,'西塘古镇 5A景区',1,70,'薛宝钗',2,'点评','13866668888','220511199901010012','13866668888'),
(null,"已使用","2018-11-11",now(),212,'杭州宋城 4A景区',1,80,'宋公明',2,'点评','13866668888','220511199901010012','13866668888'),
(null,"已使用","2018-12-12",now(),213,'南浔古镇 5A景区',1,85,'诸葛孔明',2,'点评','13866668888','220511199901010012','13866668888'),
(null,"已使用","2019-1-30",now(),214,'横店影视城 5A景区',1,80,'盖伦',2,'点评','13866668888','220511199901010012','13866668888'),
(null,"已使用","2019-1-30",now(),215,'普陀山 5A景区',3,360,'和二',2,'点评','13866668888','220511199901010012','13866668888'),
(null,"已使用","2018-1-31",now(),215,'普陀山 5A景区',1,120,'李文华',3,'点评','13866668888','220511199901010012','13866668888'),
(null,"已使用","2019-1-22",now(),216,'乌镇 5A景区',1,80,'贾宝玉',3,'点评','13866668888','220511199901010012','13866668888'),
(null,"已使用","2019-1-13",now(),217,'西溪国家湿地公园 5A景区',1,85,'万圣龙王',3,'点评','13866668888','220511199901010012','13866668888'),
(null,"已使用","2019-1-01",now(),218,'临安湍口众安氡温泉',1,208,'贾维斯',3,'点评','13866668888','220511199901010012','13866668888');
/**评论区**/
CREATE TABLE message(
	mid INT PRIMARY KEY AUTO_INCREMENT,	#评论id(自增)
	uid INT,										#填写该订单的用户id
	FOREIGN KEY (uid) REFERENCES user (uid),
	level INT,									#评价等级1-5	
	time DATETIME,							#评价时间
	content VARCHAR(10000),			#评价内容
	img1 VARCHAR(255),					#评价图片 
	img2 VARCHAR(255),					#评价图片 
	img3 VARCHAR(255),					#评价图片 
	img4 VARCHAR(255),					#评价图片 
	id INT					#景点id
);
INSERT INTO message VALUES
(null,1,5,now(),'十几年没报过团出行了，这次带着妈妈一起出来耍，就想着试试看报了个团，很方便，很实惠。而且还在挤门口出发，妈妈说一天下来一点都不累，行程安排也很好。一到早集合，差不多90分钟不到就到西塘了，在车上导游小姐姐龙导也很nice，简单介绍了西塘以及出来玩的注意事项，很温柔，很有耐心。到了西塘，先带我们去了几个主要的景点，再自由活动，安排合理，可以带长辈休息下，也可以年轻人拍照。中途确实没购物，没推销，很自由。下次看看还有哪些其他路线，和家里人一起去溜达。','images/pinlun/xtgz/xtgz01.jpg','images/pinlun/xtgz/xtgz02.jpg','images/pinlun/xtgz/xtgz03.jpg','images/pinlun/xtgz/xtgz04.jpg',211),
(null,2,4,now(),'玩的很开心，景色古色古香的，景色宜人。行程安排的很合理，时间利用很充分。来之前有问过朋友跟团还是自己去，还是跟团的好，省时又省钱。小张导游很漂亮，景点介绍的很详细，很有用，景区里面注意什么也提前通知到了，还给介绍了好多好吃的～','images/pinlun/xtgz/xtgz05.jpg','images/pinlun/xtgz/xtgz06.jpg','images/pinlun/xtgz/xtgz07.jpg','images/pinlun/xtgz/xtgz08.jpg',211),
(null,3,5,now(),'只要去杭州，必须看“宋城千古情”！完全推荐。感觉非常震撼！网上买了千古情的票，到了之后，可以自助换票，换票后还能免费换古装，进景区后，各处都是身穿古装的游客，好像穿越回前年前，连卖东西的人都是一样的。再说千古情，不时的就会在你身边出来美人、飞人，还会下雨，像4d电影的感觉，但更震撼。有种梦回前年的感觉。话说不尽，就是赞！','images/pinlun/songc/songc01.jpg','images/pinlun/songc/songc02.jpg','images/pinlun/songc/songc03.jpg','images/pinlun/songc/songc04.jpg',212),
(null,4,4,now(),'看前面演出感觉还好，但是越后面越好看~特效，灯光，加上精湛的演出~真的直回票价! 只是有一点~因为座位蛮近的，就是前排后排几乎是没高太多，所以常常会被前面挡到，而且很多人看演出太兴奋，想录影就把手举得很高，根本就忘了后面还有很多人再观看，','images/pinlun/songc/songc05.jpg','images/pinlun/songc/songc06.jpg','images/pinlun/songc/songc07.jpg','images/pinlun/songc/songc08.jpg',212),
(null,5,5,now(),'南浔古镇，若是慢慢逛，仔细参观并做一些图文记录的话，一天时间是不够用的。除了那些地图上和路牌标识的景区景点，如百间楼、藏书楼、张静江故居张石铭旧宅等等，我还去考察了尚处于荒芜状态的东园和宜园。在宜园的那个园林小岛上还偶遇了一位当地的沈先生，交谈中，他向我介绍了他儿时所见的宜园残貌，一些细节比我此前查阅的有关庞元济的资料还要详细，这是我此次南浔之旅的最大收获。旅行目的，各有不同，常人来此，是寻诗意江南的，而我寻的不是诗意，而是史迹，重点在通过南浔的历史人物故居展陈文献，增加对这些历史人物的认知，同时也以南浔古镇及周边为观察范围，做一些简单的观察和访谈，兼顾社会学、人类学和历史研习的方法。不做浮光掠影走马观花的旅游，意在游学，日知其所无。','images/pinlun/nxgz/nxgz01.jpg','images/pinlun/nxgz/nxgz02.jpg','images/pinlun/nxgz/nxgz03.jpg','images/pinlun/nxgz/nxgz04.jpg',213),
(null,6,4,now(),'比景点门票优惠些，两张152，我们是在第一天下午一点后取票的，第二天也好用。但取票点只一处，好在就在我们订的酒店原舍附近。希望取票点多些，期限统一宽至两天，我们原本听说下午三点后取的票才可玩两天，可第一天紧赶慢赶都来不及，第二天忐忑地问了下检票口，只说走走可以，景点不行。但景点工作人员给我们试刷成功了，才算舒了口气。如果景区欢迎入住，就该放宽使用期限，就像庐山，一周有效，玩完了客人自会离开。','images/pinlun/nxgz/nxgz05.jpg','images/pinlun/nxgz/nxgz06.jpg','images/pinlun/nxgz/nxgz07.jpg','images/pinlun/nxgz/nxgz08.jpg',213),
(null,7,5,now(),'选择了三个景点，觉得广州街香港街没什么意思，比较小，不值得去。欢乐谷很好玩，秦王宫和明清宫苑很大，走路比较累的，遇上拍戏的不给进，没看见最想看的储秀宫和养心殿，比较失望！不过所有的演出都是很精彩的，演员非常敬业，很专业！','images/pinlun/hdyc/hdyc01.jpg','images/pinlun/hdyc/hdyc02.jpg','images/pinlun/hdyc/hdyc03.jpg','images/pinlun/hdyc/hdyc04.jpg',214),
(null,8,5,now(),'跟着一帮延禧迷去了一趟，仿北京故宫而建，真是为了拍戏造出来的宫殿，很多地方都能找出戏里的场景，殿里都是空的，要拍戏了才进道具，这次去就碰到很多剧组在拍戏，还会招揽临演，总体感觉还不错！','images/pinlun/hdyc/hdyc05.jpg','images/pinlun/hdyc/hdyc06.jpg','images/pinlun/hdyc/hdyc07.jpg','images/pinlun/hdyc/hdyc08.jpg',214),
(null,8,5,now(),'不错，挺好的，就是一天下来还是比较辛苦，毕竟是佛国之旅吧，导游人也挺好的，也很专业，也给大家讲了很多礼佛的基本礼节，午餐就比较艰苦一点，可以自己备点零食什么的，岛上的东西也都比外面要贵挺多的哦，矿泉水5元，巧乐兹10元这样的，还有香烛也是蛮贵的，不过可以当做功德啦，总的来说一日游还是不错的，还送了一个表演。','images/pinlun/puts/puts01.jpg','images/pinlun/puts/puts02.jpg','images/pinlun/puts/puts03.jpg','images/pinlun/puts/puts04.jpg',215),
(null,7,5,now(),'今天行程安排的不错！满满的收获，还有表演可以看，这个演出很满意，让我初步真正对观音菩萨有了认知！导游很细心，感谢导游的付出使我们顺利开心的结束旅途，也希望我的愿望能早日实现。下次还选他家，有缘再见哦','images/pinlun/puts/puts05.jpg','images/pinlun/puts/puts06.jpg','images/pinlun/puts/puts07.jpg','images/pinlun/puts/puts08.jpg',215),
(null,6,5,now(),'乌镇分西栅和东栅景区，通票190可以游览两个景区，不过需要在一天之内游完，两个景区之间有免费摆渡车，步行的话15分钟也到了。东栅相对于西栅来说小很多，景色比较单一，游乌镇的话主要还是游西栅。现在这个季节，烟雨江南确实有些冷，冬季虽然人少，但建议大家要多穿衣服，带上伞。门票略微有些贵，但总的来说还比较值。如果不差钱的话可以住在景区里面，就可以在乌镇里多玩些日子了，正常情况下住景区外面紧贴着景区的客栈就可以了，会便宜很多。 杭州上海都有直达景区的车，杭州的车就停在东栅和西栅的门口。西栅东门口也有直通南浔和西塘的大巴，很方便。乌村每天有一趟119路公交可到南浔，乌镇汽车站也有多个班次到西塘。','images/pinlun/wuz/wuz01.jpg','images/pinlun/wuz/wuz02.jpg','images/pinlun/wuz/wuz03.jpg','images/pinlun/wuz/wuz04.jpg',216),
(null,5,5,now(),'乌镇之似水年华篇 看过《似水年华》的都知道在乌镇有一个故事——文和英的似水年华。他们在乌镇相识相知相爱，这一切在乌镇的东栅都还很好的保留至今。 在那条石板路上，仿佛还能看到默默奔跑的影子，抬头还能看到在小木窗后偷喝酒的默默；在蓝印花布那，仿佛看到了文和英的影子；在真正的立志书院里，仿佛看到了齐叔又坐在门口等着一个人；还有那个邮箱，承载了多少封文和英的信件……','images/pinlun/wuz/wuz05.jpg','images/pinlun/wuz/wuz06.jpg','images/pinlun/wuz/wuz07.jpg','images/pinlun/wuz/wuz08.jpg',216),
(null,4,5,now(),'旅途对于自驾游的司机来说挺累的。从上海开过去要4个小时，当中需要休息起码2次，真心的长途跋涉。深山野林中有点冷，需要多带些衣物，吃的也不多，晚餐建议5点就可以准备了。听朋友推荐的古道人家还行。行程中的漂流非常难忘，小朋友都乐此不疲。石门峡可以兜一圈，中午时分会稍微暖一点','images/pinlun/lina/lina01.jpg','images/pinlun/lina/lina02.jpg','images/pinlun/lina/lina03.jpg','images/pinlun/lina/lina04.jpg',1),
(null,3,5,now(),'石门峡景区很荒凉，估计非节假日也很少人去，不过景色还可以！接下来要吐槽一下酒店的餐厅，真的太差，灯光昏暗，卫生也不好，早饭差到没朋友，而且8点半以后不供应，周边没有配套，吃饭只能在酒店餐厅，周围连一个小商店也没有，朋友们去之前请自备零食！我定的是2晚酒店，第一天住的阁楼，房间小且压抑，第二天换的房间大是够了，只是纱窗破了，卫生间马桶漏水，2个房间的电话都是坏的，就是年久失修的那种！唯一可以安慰的就是真的在深山里，空气超级好，天空超级蓝，好了，就到这里吧！另外我们去的大名山真的很棒','images/pinlun/lina/lina05.jpg','images/pinlun/lina/lina06.jpg','images/pinlun/lina/lina07.jpg','images/pinlun/lina/lina08.jpg',1),
(null,2,5,now(),'第一次跟男朋友来周庄，感觉挺好的。古色古香的，夜色也很幽静很美，陪伴我们的导游姓氏也好逗的，他老让我们称呼他老嫖，其实他是姓卜！一路上说说笑笑的，每一站给我们解释的很清楚，普通话也好，听的也明白，好的坏的他都会很负责的告诉我们！说话比较坦诚！全程无额外消费，不懂砍价的他还会教你去砍价，哈哈！玩了一天下来，感没玩够天就黑了，感觉时间太短了，还没玩够，里面有个奇异屋关门了，没看成。心里好惦记啊、下次还来！！好玩～这导游特逗','images/pinlun/zhouz/zhouz01.jpg','images/pinlun/zhouz/zhouz02.jpg','images/pinlun/zhouz/zhouz03.jpg','images/pinlun/zhouz/zhouz04.jpg',2),
(null,1,4,now(),'沈厅是周庄重要景点之一，为国家级重点文物保护单位。沈厅由沈万三后裔沈本仁于清乾隆七年（公元1742年）建成，原名敬业堂，清末改为松茂堂。虽然为沈万三后裔所建，但在游客心目中还是与沈万三有关的宅子。沈厅是周庄保存最好的清代民居，结构精妙，在这里可以参观见识一下江南大富豪的生活踪迹，据介绍另购票可以上到二层走马楼参观，我们去的时候是下午，看到厅内售票的工作人员已收拾售票机打算离开了，不过我们本来也没有上去的打算。','images/pinlun/zhouz/zhouz05.jpg','images/pinlun/zhouz/zhouz06.jpg','images/pinlun/zhouz/zhouz07.jpg','images/pinlun/zhouz/zhouz08.jpg',2),
(null,1,5,now(),'人家都说去西溪不下雨没有情调，可能我去的那天雨下的大了一点，因为当天行程有点赶，并没有在每个码头下穿，只在第二个码头最值得玩得地方游玩了，不愧为杭州之肺啊！我竟然在西溪里有醉氧的错觉，什么叫江南水乡，第一次感受到，而且有雨当天雨比较大，游客比较少，从始至终有一种独自穿行在西溪湿地公园的感觉，即安静又刺激，别有一番风情，等有机会找一个风和日丽的日子再重游此地吧！','images/pinlun/xixi/xixi01.jpg','images/pinlun/xixi/xixi02.jpg','images/pinlun/xixi/xixi03.jpg','images/pinlun/xixi/xixi04.jpg',217),
(null,2,5,now(),'我是3月底去游玩的，园区非常大，大约有7个门，在网上买票的亲一定注意网上购票所对应的景区大门，否则进不去哦。用寿堤福堤基本分为3个区。从周家村进入，步行梅林山庄-烟水渔庄，体验纵横交错的水道之美，乘电瓶船至深潭口，休息欣赏水路。步行河渚街购物吃喝，再去游绿堤两处景点，非常漂亮精华所在。返回深潭口坐船至茭芦码头，去高庄游览周边景区。返回坐船到周家村，或者步行游览西溪草堂，出景区。','images/pinlun/xixi/xixi05.jpg','images/pinlun/xixi/xixi06.jpg','images/pinlun/xixi/xixi07.jpg','images/pinlun/xixi/xixi08.jpg',217),
(null,3,4,now(),'酒店入住很划算，有早晚自助餐和下午茶，各种温泉和水上乐园，很不错，只是我定的D区景观房可能是二楼，相当于一楼，下过雨被子床垫潮潮的，而且整个晚上都有霉味，床特别软，整个人陷进去，窝着睡得特别累，因为玩得很累，懒得换房间了，除了房间有味道，床垫太软不好，还算不错','images/pinlun/linawq/linawq01.jpg','images/pinlun/linawq/linawq02.jpg','images/pinlun/linawq/linawq03.jpg','images/pinlun/linawq/linawq04.jpg',218),
(null,4,5,now(),'酒店入住很划算，有早晚自助下午茶，各种温泉和水上乐园，很不错。带小孩去玩，是个好地方，有吃有玩有住，游玩慢节奏，很棒，不过自助餐还得提高，美味在多一些就更ok啦！','images/pinlun/linawq/linawq05.jpg','images/pinlun/linawq/linawq06.jpg','images/pinlun/linawq/linawq07.jpg','images/pinlun/linawq/linawq08.jpg',218),
(null,5,4,now(),'进门的时候开始飘雪，然后爬到山顶雪已经很大了！雪景真是太美了！下山路有点滑，这个山整体来说爬起来一点也不累，很有野趣，一路走一路玩大概两个小时！下山坐了那个滑鼠二十一个人！','images/pinlun/tongl/tongl01.jpg','images/pinlun/tongl/tongl02.jpg','images/pinlun/tongl/tongl03.jpg','images/pinlun/tongl/tongl04.jpg',3),
(null,6,5,now(),'公园差不多三个小时可以逛完，包括小朋友戏水的时间。一路上走在树荫下，还是比较凉快的～里面卖西瓜的貌似涨价了，11.5一斤了，看之前的评价是10元一斤的～一个瓜差不多200，就没买，省下这钱回家后带宝去外面的饭馆可以吃顿不错的～林中飞鼠刺激，而且就算了两个大人的钱，体验一下还是不错的～还有就是卖西瓜那边的厕所停水了，这点有待改进～','images/pinlun/tongl/tongl05.jpg','images/pinlun/tongl/tongl06.jpg','images/pinlun/tongl/tongl07.jpg','images/pinlun/tongl/tongl08.jpg',3),
(null,7,4,now(),'今年国庆去了十门峡景区，就住在景区门口的十门峡酒店，景区风景很美，游客很少，可能是交通不是很方便的缘故，瀑布很多，有秀美的，也有壮观的，孩子们玩的很开心，不虚此行。','images/pinlun/linasm/linasm01.jpg','images/pinlun/linasm/linasm02.jpg','images/pinlun/linasm/linasm03.jpg','images/pinlun/linasm/linasm04.jpg',1),
(null,8,5,now(),'景区风景很不错～城市里呆久了来到这种大山里才能呼吸到真正的新鲜空气。不过可能是开发还不完全，只有一家酒店，其余是农家乐，路上随便找了一家农家乐，阿姨很热情，味道也很棒，对面的小溪里面还能抓鱼，挺好玩的，下次度假再来～看图说话，抓了很多鱼噢，哈哈。','images/pinlun/linasm/linasm05.jpg','images/pinlun/linasm/linasm06.jpg','images/pinlun/linasm/linasm07.jpg','images/pinlun/linasm/linasm08.jpg',1),
(null,8,5,now(),'取票时，售票员的服务态度非常好，直接主动地在机子上扫描二维码就好了。虽然只是3A景区，但是服务态度可以5A了！景区内上山的景色相当不错，但去景区的山路弯道太多，只能说这里的山路真的有十八弯！而且道路有点窄，强烈建议再加宽点。景区入口进去的山道是有山有水，且行且有壮观瀑布。亲近瀑布的设施也相当便利，台阶的设计很理性化和人性化，这是我在其他景点所没有见过的。下山的道路，除了虫儿们低低吟唱，还有偶尔的流水潺潺，路边偶有蝴蝶飞过，空气中散发着淡淡的芳草清香，真的很美！','images/pinlun/linalj/linalj01.jpg','images/pinlun/linalj/linalj02.jpg','images/pinlun/linalj/linalj03.jpg','images/pinlun/linalj/linalj04.jpg',4),
(null,7,4,now(),'风景相当优美，玩的很开心。很不错的景点，藏在深山无人问。龙井位于有中国长寿之乡，国家级生态示范区的柘荣县，空气好！景点非常好玩，是原生态的山谷，由九个井相连，有千奇百怪的天然冰臼群，瀑布群，适合一家人游山玩水，花费少，服务好！下次带朋友来。','images/pinlun/linalj/linalj05.jpg','images/pinlun/linalj/linalj06.jpg','images/pinlun/linalj/linalj07.jpg','images/pinlun/linalj/linalj08.jpg',4),
(null,6,4,now(),'秀丽的景色，小桥流水，一步一景。首推蠡园沿水边的长堤，一棵柳树一棵桃树红绿间隔，在春风的吹拂下别有一番景致。漫步堤上依稀还记得小时候看到过的样子……可惜那幢突兀的高层建筑大煞风景，使美丽的风景有了不小的缺憾。','images/pinlun/liyuan/liyuan01.jpg','images/pinlun/liyuan/liyuan02.jpg','images/pinlun/liyuan/liyuan03.jpg','images/pinlun/liyuan/liyuan04.jpg',5),
(null,5,5,now(),'樱花盛开的季节，到无锡赏樱无疑是个很好的选择。鼋头渚的樱花早已名扬天下，太湖佳绝处配以樱花，那种绚烂美景，真令人目不暇接。而在太湖大道，环湖路一侧也有许多樱花，白天走一走，感觉身入画境，夜晚也来赏一赏，在灯光中，有别样的美。近些年，无论是工作还是访友，路过无锡时，如果又恰在三月末四月初时，总不忘了来此赏赏花。','images/pinlun/liyuan/liyuan05.jpg','images/pinlun/liyuan/liyuan06.jpg','images/pinlun/liyuan/liyuan07.jpg','images/pinlun/liyuan/liyuan08.jpg',5),
(null,4,4,now(),'西栅的话，开发的比较好，虽然有点商业化，但是反倒是增加了游玩的趣味，可以买买东西，如果不太喜欢商业化了的，可以去东栅看看，那里商业化开发相对西栅要少很多，但是趣味性就要减少了。西栅比较大，如果慢慢游玩，可以呆上一天了，晚上还有夜景可以看的，饿了，累了还可以在里面买点当地小吃吃点，也可以休息一下。不过就是价格有点贵，景区吗，可以理解，可以自己带水进去，这样可以省一笔钱，而且西栅景区里有直饮水可以喝的。西栅景区里的工作人员还是比较热情的，我看到一个游客的帽子被风吹到水里了，把那位游客急得啊…不过刚好这个时候一艘那种拉货的游船过来，工作人员主动把帽子打捞起来了，虽然一点小事，但是看起来挺暖的。还有，就是西栅可以直接坐车到东栅的，是免费的哦。好了，其他的就留给游客们自己去体验了。','','','','',6),
(null,3,4,now(),'没逛够，只用身份证就可以进去，很方便，进去可以拿一份免费地图，到渡口等渡船，半小时之内应该能上去，十分钟到对面开始愉快之旅，很不错。如果下午来就直接住里面吧，这样划算点，可以看夜景也可以看白天，打听好再进入。一般附近旅馆都免费接送。','','','','',6),
(null,2,5,now(),'入园特别方便，都不用去排队取，直接刷身份证入园即可，梵宫很震撼，特别推荐，节假日人很多，建议提前出行，摸佛脚要排好长时间的队，梵宫表演节假日没有，有些遗憾，上香的地方很多，但是景区里面的香价格小贵，可以自己提前在外面买好！','images/pinlun/wuxi/wx01.jpg','images/pinlun/wuxi/wx02.jpg','images/pinlun/wuxi/wx03.jpg','images/pinlun/wuxi/wx04.jpg',7),
(null,1,4,now(),'灵山大佛位于江苏省无锡市灵山景区内，通高88米，是国家5A级旅游景区。大佛所在位置系唐玄奘命名的小灵山，故名“灵山大佛”。灵山大佛在原佛教协会会长赵朴初鼎力支持下建造，于1997年11月15日落成开光。大佛前方广场有一个同样造型的佛像，从视觉上看，如同一前一后的两 兄弟镇守灵山。广场上巨大的佛手塑雕仿佛召唤佛教的信徒们前来朝拜。','images/pinlun/wuxi/wx05.jpg','images/pinlun/wuxi/wx06.jpg','images/pinlun/wuxi/wx07.jpg','images/pinlun/wuxi/wx08.jpg',7),
(null,1,5,now(),'买的联票，游览非常方便，直接刷身份证入园·这次主要是带着6岁的儿子来玩，孩子玩得很嗨，虽然对历史还比较懵懂，一直问东问西。景点工作人员服务态度很好，问路都热情告知。我们是步行游览，先去的明孝陵，走的神道，这个季节樱花烂漫，梅花山景色不是一般的美,怎么拍都拍不出它的美!下午因为孩子累天气又热我们坐的景区观光车，单程每人10元，很划算,总之，这次旅行很愉快!','images/pinlun/njzs/njzs01.jpg','images/pinlun/njzs/njzs02.jpg','images/pinlun/njzs/njzs03.jpg','images/pinlun/njzs/njzs04.jpg',8),
(null,2,4,now(),'去中山陵拜祭国父孙中山，缅怀一番，很长的阶梯直通陵园，每一步，就象中国的近代史一样沉重。由此方知，今日之生活来之不易。离中山陵不远便是明孝陵，有“明清皇家第一陵”的美誉，果真“金陵帝王州”。南京经过抗日战争，被日寇占领后，明孝陵已是類残壁，但历史是需要铭记的。还可去灵谷寺、国民革命军抗战纪念的地方走走，牢记历史，值得一去。','images/pinlun/njzs/njzs05.jpg','images/pinlun/njzs/njzs06.jpg','images/pinlun/njzs/njzs07.jpg','images/pinlun/njzs/njzs08.jpg',8),
(null,3,5,now(),'是一个值得去的小众历史遗迹和自然景光类景区，景区内的基础设施都很完善，规模也挺大的，比较适合放松心情，可以get 到一些知识，园区里的室内博物馆也很有看头，佛教造像令人震撼。从景区大门到看得到东西的地方有一段距离，后面可以选择坐观光车，从寺庙出去有个老街 还蛮棒的，很有当地的风格，没有商业化严重，值得一看。综合来说是一个合适带老人小孩来的景区。','images/pinlun/dzsk/dzsk01.jpg','images/pinlun/dzsk/dzsk02.jpg','images/pinlun/dzsk/dzsk03.jpg','images/pinlun/dzsk/dzsk04.jpg',31),
(null,4,5,now(),'选择来重庆的第二天到大足石刻游玩，早上在菜园坝汽车站买的长途客车票，坐了大概两小时到大足，再坐公共汽车到景区，大门离景区较远，花了20元钱坐电瓶车到达。整个石刻面积不是很大，呈圆形，一圈逛下来一个多小时。石像以佛教人物为主，天宫和地狱为题材，尤其面部情态刻画的栩栩如生，保存完好，不愧是中华民族瑰丽的文化遗产。','images/pinlun/dzsk/dzsk05.jpg','images/pinlun/dzsk/dzsk06.jpg','images/pinlun/dzsk/dzsk07.jpg','images/pinlun/dzsk/dzsk08.jpg',31),
(null,5,5,now(),'导游风趣幽默，高大帅气，知识量丰富。讲故事讲的非常的委婉动人。嗯。就是设计的不大合理，比较紧凑，第一天走了四个景点，从中午1点，一直走到下午7点半，走了2万步。特别累，而第二天必须五点就起床。非常疲惫，不过景点很美，相较来说价钱也不贵。在五爷面前头有一个，请功德香的地方。功德香有一百三百和六百的。五爷庙正逢农历，人特别多，烟气冲天，人潮如海。景点中的黄庙还是不错的，一些藏传佛教寺院受到汉传佛教影响，交织出独特韵味。','images/pinlun/wts/wts01.jpg','images/pinlun/wts/wts02.jpg','images/pinlun/wts/wts03.jpg','images/pinlun/wts/wts04.jpg',32),
(null,6,4,now(),'到山西自然是必去五台山了，中国佛教四大名山之首，天蓝、水清、心静。汉唐以来历朝不衰，鼎盛时期寺院达300余座，目前剩下台内39座，台外8座。我是抱着旅行的心情来的，不是专程来朝拜，因此没计划进行大朝台，而只是参观核心区内的五爷庙、塔院寺、显通寺、菩萨顶。我从悬空寺自驾过来，从北山路进山，中午14:30抵达核心区，将车停放在殊院寺前的停车场后，开始步行依次游览，全程耗时3小时。','images/pinlun/wts/wts05.jpg','images/pinlun/wts/wts06.jpg','images/pinlun/wts/wts07.jpg','images/pinlun/wts/wts08.jpg',32),
(null,7,5,now(),'去哪直销非常快，我是散客坐九江到庐山的汽车上山的，在庐山北门下车去哪儿买票，进入立马就取到了，即买即用，然后又坐汽车上山到牯岭镇上。我来解释一下，庐山大门票180，山上景点间观光车票80有效期8天，是一张验了指纹的磁卡，上下山是另外的20，因为庐山景区大门离山上观光车换乘中心还有24公里盘山公路，所以如果没开车又没报团没坐汽车，就必须买280（大门票、观光车、上下山），九江到庐山的汽车（九江汽车总站坐）可以送到牯岭镇的街心公园附近，所以不需要买上下山，只需买大门票和观光车票260，如果时间充裕想多玩几天，甚至只需住山上牯岭镇酒店，只买180大门票。当然大口瀑布、索道、三叠泉门票是另外的。庐山真的很美，山顶小镇很干净，很喜欢，奈何我就大半天时间，只能下次再去好好玩。','images/pinlun/lus/lus01.jpg','images/pinlun/lus/lus02.jpg','images/pinlun/lus/lus03.jpg','images/pinlun/lus/lus04.jpg',33),
(null,8,4,now(),'暑假出游，最怕的是人多不利于行。趁着周末前，报名跟团游庐山。一个人270元的费用，包含大门票180元，导游服务和旅游大巴酒店接送服务。性价比合理。上山盘山公里弯多路窄车多，司机技术好，平平稳稳。车上两家人坐不了车一路呕吐，张导多次关心、提供袋子。其中一家人还吐到车座底下，司机毫无怨言，到了目的地就开始打扫起来，到回程时，车内又干干净净没有不良气味。给司机点赞，抱歉忘记打听师傅的名字。过程中一家人可能少出门，一家老小的总是跟不上大伙的节奏。张导素质高啊，一路引导，排难解纷。点赞张导对景点的介绍如数家珍，诗词脱口而来，厉害啊','images/pinlun/lus/lus05.jpg','images/pinlun/lus/lus06.jpg','images/pinlun/lus/lus07.jpg','images/pinlun/lus/lus08.jpg',33),
(null,8,5,now(),'泰山，一直向往的地方，八月份有时间终于一探究竟，住在岱宗坊附近，早上七点半开始从岱宗坊徒步，经过红门进入登山之旅，约两个多小时到达中天门，休息调整一会继续下半场的征程，穿过快活三里景色越来越好，云步桥之后开始十八盘的台阶，南天门若隐若现。最终大家都是靠着意念在往上爬，到达南天门，浑身已汗湿透，攀上南天门那一刻，真的是心情大好。没有休息继续穿过天街、西神门，登山玉皇顶，一气呵成。顶上俯瞰山下，景色迷人，在山顶转了一圈，觉得所有的汗水都是值得的，成就感满满。有机会还会再来挑战泰山','images/pinlun/tais/tais01.jpg','images/pinlun/tais/tais02.jpg','images/pinlun/tais/tais03.jpg','images/pinlun/tais/tais04.jpg',34),
(null,7,4,now(),'我们是从红门进入爬山，走了三个小时到中天门坐索道上去，然后走到南天门、天街、五岳独尊、玉皇顶等景点，回来是中天门坐景点巴士到天外村集散中心。如果带孩子老人的还是从天外村坐巴士到中天门坐索道上去，省时间也省力。泰山风景很漂亮，有自己独特的魅力。非常推荐没去过的去看看。','images/pinlun/tais/tais05.jpg','images/pinlun/tais/tais06.jpg','images/pinlun/tais/tais07.jpg','images/pinlun/tais/tais08.jpg',34),
(null,6,4,now(),'布达拉，古藏语孤独的山峰，如其名，孤独的矗立在茫茫雪原，映衬着水晶般的蓝天。整个神宫包括山下的庙宇和山顶的圣宫。不过太多的人被视觉欺骗了，这座宫殿远没有外观的巨大，它巧妙的利用了丘陵地势，白色哈达一般的宫墙其实是盘山道。宫内灯火暗淡，古旧的神殿，沧桑的神佛，摇曳的酥油灯，诡异的气氛。如同一幅千年古卷。他们用自我封闭来对抗着世界，可怜，可笑，可叹。','images/pinlun/bdlg/bdlg01.jpg','images/pinlun/bdlg/bdlg02.jpg','images/pinlun/bdlg/bdlg03.jpg','images/pinlun/bdlg/bdlg04.jpg',35),
(null,5,5,now(),'大昭寺，布达拉宫，去圣城必去的地方。提前一天约票，票价含导游讲解的。订票后，前一天晚上七点左右导游主动电联我们，并有短信告知当天集合的时间地点与注意事项。早上九点半开始，从大昭寺到布达拉宫，整个游程下来，中午两点左右结束。导游是个帅小伙，一路讲解，一路引导，很好的。','images/pinlun/bdlg/bdlg05.jpg','images/pinlun/bdlg/bdlg06.jpg','images/pinlun/bdlg/bdlg07.jpg','images/pinlun/bdlg/bdlg08.jpg',35),
(null,4,5,now(),'金顶地方很小，仔仔细细看，认认真真摸，围着金顶转了好几圈，金顶的游程也差不多了，又开始下雨了，真感叹老天爷这么眷顾我们，在我们登上金顶最好的地点最好的时间，拨开云雾让我们看够武当的美景，在我们离开的时候再次将武当的美用雨雾包裹藏于天际，我感觉一定是我们一路走来心诚则灵所致。','images/pinlun/wds/wds01.jpg','images/pinlun/wds/wds02.jpg','images/pinlun/wds/wds03.jpg','images/pinlun/wds/wds04.jpg',36),
(null,3,4,now(),'取票非常方便，直接刷二维码就可以。武当山10月底的景色依旧魅力不减，太子坡、南岩宫、紫霄宫、金顶这几个景点是必去的，如果还有时间和体力，就可以考虑其他的景点了。从南岩步行到金顶，我体重190斤，体力一般，用了4个小时吧。在武当山金顶看日出，真的是非常美。','images/pinlun/wds/wds05.jpg','images/pinlun/wds/wds06.jpg','images/pinlun/wds/wds07.jpg','images/pinlun/wds/wds08.jpg',36),
(null,2,4,now(),'本来就是为了方便才团的，体验过后发现还是挺值的，我们一队人不多，但是也包了一辆大巴前往各景点，交通工具给满分。我们队伍中有老有少，导游很热心也很专业，会叮嘱她们注意安全，也会顾及她们，将速度调整合适再前进，景点讲解也很详细，靠谱。总体下来今天的行程安排的还是挺充实，各方面安排的挺妥当的，好评。','images/pinlun/jyt/jyt01.jpg','images/pinlun/jyt/jyt02.jpg','images/pinlun/jyt/jyt03.jpg','images/pinlun/jyt/jyt04.jpg',37),
(null,1,5,now(),'一个面积超大的水库,环境可以,绿化不错,森林茂密。景点倒没有什么,塔楼上山道正在维修,就没有上去。北普陀寺也在修建。荷花垂柳园可以看看,水库大坝可以走走。交通便利,轻轨3号线能够到达,在净月公园下就是公园正门,可以取网络票,门票不贵,内容不多,面积超大,相当费时费力,基本就是在赶路,路标做的不是很好,还有不少走错的时候,好在生态不错。','images/pinlun/jyt/jyt05.jpg','images/pinlun/jyt/jyt06.jpg','images/pinlun/jyt/jyt07.jpg','images/pinlun/jyt/jyt08.jpg',37),
(null,5,4,now(),'我打从小读书起，就对历史科目比较感兴趣，北京也来过好几次了。这一次有空到北京市昌平区的明十三陵参观游览，想写一点随笔。这一次参观的是明长陵，定陵和神道。我从早上七点多从北京到昌平，路上花了一个多小时。到达十三陵定陵处换了电子票进去参观，定陵的主要看点就是地宫，随着阶梯走下去到地宫，地宫里有空调，所以空气还行，地宫很大，陈列都是石制品多。地宫中央安放着万历和两位皇后的木棺。长陵看的主要是宫殿，结构完整保存还蛮好的。神道两旁很多石头的动物跪立和石头的文武官员站立，对了解历史记忆，还是值得一看的。','images/pinlun/mssl/mssl01.jpg','images/pinlun/mssl/mssl02.jpg','images/pinlun/mssl/mssl03.jpg','images/pinlun/mssl/mssl04.jpg',38),
(null,3,5,now(),'买的联票很方便，直接刷二维码，再按下指纹就好了。开车过去的，停车也很方便，神道那车场不大，其他都可以。建议先了解历史这样看还是很有意思，定陵看地宫结构，长陵看地面建筑。周末过去人也不多，半天时间，总体来说不错的一次旅行。','images/pinlun/mssl/mssl05.jpg','images/pinlun/mssl/mssl06.jpg','images/pinlun/mssl/mssl07.jpg','images/pinlun/mssl/mssl08.jpg',38);


CREATE TABLE `commenta` (
  `cid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `times` datetime DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `tags` varchar(25) DEFAULT NULL,
  `bg` varchar(255) DEFAULT NULL,
  `uname` varchar(255) DEFAULT NULL,
  `point` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `commenta`
--

INSERT INTO `commenta` (`cid`, `uid`, `times`, `topic`, `photo`, `tags`, `bg`, `uname`, `point`) VALUES
(1, 1, '2019-01-15 20:01:03', '圆一场踩雪梦，丰宁坝上梦幻雪乡的声音送给你们', 'images/strategy/one/0.jpg', '#自然奇观 #滑雪', 'images/strategy/one/bg.jpg', '圆圆', 1856),
(2, 2, '2019-01-18 20:01:03', '【左左的旅程】手绘海南，记录十项我们在三亚的初夏瞬间', 'images/strategy/two/0.jpg', '#美食#情侣游#海岛', 'images/strategy/two/bg.jpg', '左左的旅程', 1826),
(3, 3, '2019-01-26 20:01:03', '【首发】用一个周末的时间消耗掉一整周的疲乏|重庆', 'images/strategy/three/0.jpg', '#特色表演#美食#人文游#主题乐园#摄影', 'images/strategy/three/bg.jpg', '拿相机的尤', 466),
(4, 4, '2019-01-26 20:01:03', '#9是这样牛#跟着《爸爸去哪儿》一路向北穿越雪乡', 'images/strategy/four/0.jpg', '#人文游#跟团游#雪景', 'images/strategy/four/bg.jpg', 'in老板', 8986),
(5, 5, '2019-01-26 20:01:03', '【首发】#玩美畅游#走向世界第一站，在泰国幸福的流浪', 'images/strategy/five/0.jpg', '#美食#人文游#摄影#精品酒店', 'images/strategy/five/bg.jpg', '被遗弃的时光...', 11211),
(6, 6, '2019-01-26 20:01:03', '第九次泰国之旅，终于去了大城和芭提雅', 'images/strategy/six/0.jpg', '#美食#人文游#摄影', 'images/strategy/six/bg.jpg', '迷途的小柒', 31627);

-- --------------------------------------------------------

--
-- 表的结构 `commentb`
--

CREATE TABLE `commentb` (
  `uid` int(11) DEFAULT NULL,
  `commentid` int(11) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `topic_small` varchar(132) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `city` varchar(36) DEFAULT NULL,
  `details` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `commentb`
--

INSERT INTO `commentb` (`uid`, `commentid`, `cid`, `topic_small`, `img`, `city`, `details`) VALUES
(1, 1, 1, '踩在脚下，雪嘎吱嘎吱的声音', 'images/strategy/one/1.jpg', NULL, '我在2019年的开始圆了一场雪季梦，2018年的冬天刚过去一半，这个冬天我还没有踩过雪见过满眼的白，本以为12月底在欧洲的冬天会遇到漫天的雪花，然而半个月的时间，只见过初到欧洲时零散雪花的飘落，还有后来半个月的阴天，唯独没有见到雪花。'),
(1, 2, 1, NULL, 'images/strategy/one/2.jpg', NULL, '回国之后，冬天的南方还没有雪花，作为一个土生土长的北方人，已经按嫩不住心中对雪的渴望，一场说走就走的巧遇旅行开始了。来到北京之后，本想着之前已经去过东北的雪乡，而听到朋友介绍北京的“七环”也有个雪乡，不用再去到那么远的地方了，北京就有一个“梦幻雪乡”。'),
(1, 3, 1, NULL, 'images/strategy/one/3.jpg', NULL, '一场对雪的渴望，说走就走的旅行开始了。距离丰宁坝上自驾不到4个小时的车程，在哪里，我感受过说话冻嘴巴的快感，雪地战车、雪滑梯的爽快，更不能忘记的是我把雪花踩在脚下嘎吱嘎吱的声音，作为一个北方人，从小就感觉到只有把雪花踩在脚下，我听到咯吱咯吱的声音，这才是冬天。'),
(1, 4, 1, NULL, 'images/strategy/one/4.jpg', NULL, NULL),
(1, 5, 1, '关于梦幻雪乡，我有一些tips分享给你', NULL, NULL, '关于景区：'),
(1, 6, 1, NULL, 'images/strategy/one/5.jpg', NULL, '神仙谷·七彩森林景区，位于河北省承德市丰宁县大滩镇，是坝上草原一个5A级风景区，占地2万亩。景区是以发展休闲旅游为主要方向，以自然资源为依托，以满族文化为内涵，建设具有观光游览、参与体验、娱乐、休闲等内容于一体的自然文化景区，景区主体分为满族文化园区和生态休闲区两部分。'),
(1, 7, 1, NULL, NULL, NULL, '在这里白天，你可以拿出一上午的时间来徒步这个原始森林，看雾凇看树挂，从天镜湖到五彩池到蘑菇街再到树屋地带、森林部落、白桦林…… 一直走下去，走过厚重的雪，一路听着雪花嘎吱嘎吱的声音，走到'),
(1, 8, 1, NULL, NULL, NULL, '景区门票：120元/人 （包含景区内22项娱乐项目）\r\n电瓶车车票（单程）：40元/人（准乘人数13人）\r\n观光小火车（单程）：50元/人（准乘人数50人）\r\n酒店+景区新年优惠体验价398/人（周末加50元，初一到初六加200元）\r\n关于交通：\r\n飞机/火车：\r\n我们是飞到北京（火车到北京），然后自驾4个小时左右到达景区。\r\n或者还可以飞到承德（火车到承德），到景区差不多自驾两个小时的时间。\r\n自驾：\r\n北京——八达岭高速——赤诚怀来出口——赤城——沽源——大滩——北梁村\r\n北京到丰宁坝上草原自驾游路线详细内容：从马甸出发，走八达岭高速，出四五六环，经居庸关，过八达岭出口(58.6公里)，继续顺高速往张家口延庆方向行进，过康庄市界收费站（67.1公里）继续前行。赤城/怀来出口(105.7公里)出高速，看路标左拐，赤城方向。途中经头炮等处。看路标，一直往赤城开。到赤城时，见左手一加油站，路标显示左拐是赤城，此处不左拐（城里不好走），继续直行750米到一丁字路口，路口左手一加油站（现废弃），直行是去丰宁，咱们应左拐，然后顺路一直往沽源开,6公里后是新修的路，非常好走，顺主路途经猫域大桥，独石村等处，小厂收费10元。到沽源时，右拐上双向四幅车道的路进城，第一个红绿灯右拐，然后一直顺路走约40公里就能到大滩，（来源网络，仅供参考）'),
(2, 9, 2, '', 'images/strategy/two/1.jpeg', NULL, '倆个人'),
(2, 10, 2, NULL, 'images/strategy/two/2.jpeg', NULL, '海棠湾\r\n掰着手指头数一数，好像也就去过 三亚 三次，却总是对这个地方异 常熟 悉。飞飞却好像对 三亚 更有一丝偏爱，他总说这里是梦开始的地方。去年十月我同他第一次一起去了 三亚 ，遇上了天气预报里的台风，行程几经更改。那时候的我们还有些客套的生疏，我也从不肯在公共场合承认是他的女朋友。今年五月底我又一次同他来到了 三亚 ，这里空气里都是夏日的味道。时隔半年，我同他，我终于愿意大 大方 方走在人前，而这一段旅程也算是我们故事里的一部分。三亚 ，许久不见，别来无恙。\r\n手牵手'),
(2, 11, 2, '一步两步三步四步望着天', 'images/strategy/two/3.jpeg', '海棠湾', '海棠湾 的海边，我和你的夏天。'),
(2, 12, 2, NULL, 'images/strategy/two/4.jpeg', '海棠湾', '直升机看 海棠湾 景色，水质也很棒。'),
(2, 13, 2, NULL, 'images/strategy/two/6.jpeg', '大东海', '在游艇上，被风吹乱的发梢。'),
(2, 14, 2, NULL, 'images/strategy/two/7.jpeg', '亚龙湾 ', '说起 三亚 的海水，最让我欢喜的还是 亚龙湾 。\r\n'),
(2, 15, 2, NULL, 'images/strategy/two/8.jpeg', '三亚亚龙湾万豪度假酒店', '我所喜欢的夏日记忆，这里都有。'),
(2, 16, 2, NULL, 'images/strategy/two/9.jpeg', '亚龙湾 ', '凤凰花开的季节，有你陪着我'),
(2, 17, 2, NULL, 'images/strategy/two/10.jpeg', '亚龙湾 ', '在海边教堂前带起头纱，或许哪天就嫁了。'),
(6, 18, 6, '被印度洋宠幸的地方', '', '', '印度 洋的风\r\n你使了劲儿的吹\r\n姑娘啊\r\n你不停歇的浪'),
(6, 19, 6, '', 'images/strategy/six/1.jpg', NULL, '我从没想过\r\n自己会9次踏上这片土地\r\n在这个从未见过谁对谁发脾气的地方'),
(6, 20, 6, NULL, 'images/strategy/six/2.jpg', NULL, '或许你为信仰而来\r\n或许你为海岛而来\r\n不管是什么吸引你\r\n你都会为 泰国 美食着迷'),
(6, 45, 6, '', 'images/strategy/six/3.jpg', '', ''),
(6, 46, 6, NULL, 'images/strategy/six/4.jpg', '', '芭提雅 酒店精心准备的日常餐食\r\n曼谷 网红餐厅高档口感的小火锅\r\n大城 装修清新的小馆\r\n都是你边吃边玩儿的极佳选择'),
(6, 47, 6, NULL, 'images/strategy/six/5.jpg', '', ''),
(6, 48, 6, NULL, 'images/strategy/six/6.jpg', '', '尽情沐浴沙滩阳光，感受热带风土人情。或者干脆宅到酒店游泳。\r\n若是厌倦阳光沙滩，又不想奔波转机，可以选择距 曼谷 一个多小时车程的 大城 ，在这里，你会领略数以百计的寺庙，触摸它们往日的辉煌。'),
(6, 49, 6, NULL, 'images/strategy/six/7.jpg', '', ''),
(6, 50, 6, '我的行程', '', '', '即使突然决定要来 泰国 ，也能将日程安排的满满当当，你可以像我一样\r\n\r\n西安 — 曼谷 — 芭提雅 不停留直接奔赴 芭提雅 ，感受热情的海滩\r\n芭提雅 — 曼谷 （大巴车）探索发现首都的魅力\r\n曼谷 — 大城 兜兜转转、溜达发呆 \r\n大城 — 曼谷 找吃的，泡酒店\r\n曼谷 — 西安 哈哈哈，补觉\r\n\r\n费用干货：\r\n关于交通：1、亚航机票： 西安 - 曼谷 往返900+RMB\r\n2、廊曼机场A1线-mochit站（BTS）：30?\r\n3、 曼谷 - 芭提雅 ：mochit站（BTS）—Ekkamai站（BTS），2号口出站，走到Eastern Bus terminal ，买到 芭提雅 的大巴车票：134?\r\n4、 芭提雅 - 曼谷 ，同上：好像127?\r\n5、 曼谷 - 大城 ，报了个2人成团的两日游，酒店接，酒店送，不用把行李搬来搬去，因为打听过，如果想2人自由自在的玩儿，从 曼谷 包车至少一天800，两天1600+sala酒店800=2400，所以干脆报团，省心+服务周到（含 大城 sala网红酒店）1199RMB \r\n\r\n关于吃饭：1、 芭提雅 全程宜必思酒店餐厅：平均130?一道菜\r\n2、 曼谷 探店当地人最爱小火锅：人均不到400?\r\n3、 大城 河虾很出名：700+?一只\r\n4、芒果饭：150?，为啥这么贵，因为是黄金芒，果肉里木有一根刺'),
(6, 51, 6, NULL, 'images/strategy/six/8.jpg', '', '不管如何设计线路\r\n都是合理的\r\n开心最重要'),
(6, 52, 6, '听我的，一定要去大城', '', '', '它可能并不出名\r\n而你可能更向往苏梅、 清迈 \r\n所以\r\n你才会跟它一次次擦肩而过\r\n即使这样\r\n也并不遗憾\r\n总有一天\r\n你会抵达'),
(6, 53, 6, NULL, 'images/strategy/six/9.jpg', '', '善良的人们\r\n用鲜花和虔诚祭拜\r\n希望世界 和平 \r\n家人健康\r\n自己幸福'),
(6, 54, 6, NULL, 'images/strategy/six/10.jpg', '', '如果没有左下角这两个人\r\n或许根本看不出TA究竟有多大'),
(6, 55, 6, NULL, 'images/strategy/six/11.jpg', '', '其实老早知道 大城 \r\n就是因为这个“树抱佛”\r\n凝视它\r\n或许你也会想很多很多\r\n自古以来\r\n残缺的、特别的才能被人记住\r\n比如 被树拥抱的佛头\r\n失去了身体\r\n但却拥有了全世界\r\n人们虔诚的或跪、或蹲向TA祈福\r\n跟它合影'),
(6, 56, 6, NULL, 'images/strategy/six/12.jpg', '', '小宝贝儿穿着当地服饰\r\n越发将小脸儿映衬的特别好看\r\n我伸手牵她\r\n她高兴的过来牵我\r\n面对镜头\r\n却漏出了尴尬而不是礼貌的微笑\r\n哈哈哈\r\n好可爱'),
(6, 57, 6, NULL, 'images/strategy/six/13.jpg', '', '看看看\r\n我没有乱讲\r\n她一定打心里是喜欢我的！\r\n要不怎么笑的如此好看'),
(4, 58, 4, NULL, 'images/strategy/four/1.jpg', '', '最近随着《爸爸去哪儿》的热度，他们去过的拍摄地也成为了旅游胜地，这次出行其实跟这个节目并没什么太大关系，决定去的时候这个节目还没有播放，算是很巧合吧。国人假期时间都短，各种拼假方式网上也一箩筐，既然短出境游就没戏了，那就国内晃悠吧。冬天可去的地方实在少之又少，西北地区因为天气冷已经没什么景色可看，南方气温也一直下降，江南地区春季去正当时，想来想去只有一路向北才是正经事儿。《爸爸去哪儿》第一季终极拍摄地确认是雪乡后，就担心会不会借着这个节目的人气而物价飞涨。。不过也体验一把雪乡'),
(4, 59, 4, NULL, '', '', '【行程】\r\nDAY1 1月1日 哈尔滨-东升雪谷\r\n早上7点出发，因交通事故晚上近5点到达东升，宿东升雪谷天涯客栈\r\nDAY2 1月2日 东升雪谷-雪乡穿越\r\n早上7点半出发穿越，下午3点半到达雪乡，宿雪乡张志强家庭客栈\r\n【交通】\r\n哈尔滨-东升雪谷拼车（大巴车）150元/人，一般早上走（本来也是面包车，后来给拼到一个去雪乡的旅游团里了，还是大巴舒服啊）\r\nPS：从哈尔滨到东升雪谷/雪乡/亚布力基本都是采用拼车的方式，均价150-180元/人左右，一般都是150元/人，但是雪谷和雪乡还有一段距离，所以要是哈尔滨直接到雪乡或者直接到亚布力可能贵点，雪谷到雪乡基本都是徒步穿越，车价没问过，雪乡到亚布力很多也报150元/人，平日我想80-120元/人的价格还是能订到的，旺季就不好说了。车的问题我觉得不用太担心，因为客栈基本都会有这种车和娱乐的服务的，即使没有也能帮忙找，TB也可以找到。\r\n【交通：哈尔滨-东升】\r\n东升林场在哈尔滨地区南部的五常市沙河子镇，有以下两条路线可达东升林场：\r\n一、哈尔滨-五常市-山河口镇（山河屯）-东升林场 \r\n1、哈尔滨---五常市（用时3小时）\r\n在火车站对面的哈尔滨汽车客运站坐车：春运期间提前买票，只要能在上午9:00点以前坐上去五常的大巴，就完全赶的上。\r\n票价：27元（含保险）\r\n首车及班次间隔时间： 首车6:00 ，20分钟/班 \r\n2、五常市—山河口镇（山河屯）（用时70分钟）\r\n从五常无山河屯的车很多，大巴中巴都有，车程1小时左右，在五常市的汽车站直接买去山河口镇的汽车票，终点就在五常客运站，有时候车停到门口不进去，问问当地人就知道了，在大厅买票。到达山河屯后，不要在山河屯长途站下车，因为发往东升林场的车不是在这里发的，离这里还远着呢，要在“山河屯林业局”下车，也就是龙山宾馆旁边的广场\r\n票价：6.7元(不含保险)\r\n首车及班次间隔时间：首车6:30 ，20分钟/班 \r\n3、山河口镇（山河屯）——东升林场（用时4小时10分钟）\r\n到达山河口镇（山河屯）后，问问司机去东升车在哪坐，检察院门口可以坐到，这个问问当地人确认一下。票价：20元（上车买票）。此班车14:40发车，每天仅此一班。\r\n二、哈尔滨——五常——沙河子——东升。\r\n1、哈尔滨-五常市（用时3小时）\r\n在火车站对面的哈尔滨南岗汽车客运站坐车：春运期间提前买票。最好是买7:20之前前往五常的车，这样就能用一天时间赶到东升。如果到达的当天不想在哈尔滨住宿的话，可以直接在火车站转去五常的车，这样第二天可以很轻松的到达东升，\r\n票价：27元（含保险）\r\n首车及班次间隔时间： 首车6:00，20分钟/班 \r\n2、五常市-沙河子镇（用时2小时30分钟）\r\n在五常市的汽车站直接买去沙河子镇的汽车票，票价：14元，在车站门口的马路上车。9:55发车，12:30到沙河子。\r\n3. 沙河子镇-东升林场（用时2小时40分钟）\r\n到东升的车一天只有一趟，12:00发车，不要错过，约15:00到达。汽车时间上会有前后有5-10分钟的误差，所以最好提前。7:20有班去五常的车，30块。车最后不停在五常汽车站，走大概2分钟。赶9:50开往沙河子的客车，14块。到达沙河子12'),
(4, 60, 4, NULL, '', '', '【交通：哈尔滨-雪乡】\r\n雪乡位于黑龙江省牡丹江市辖下海林县长汀镇双峰林场。目前来说从牡丹江方向前往雪乡双峰林场最为方便,哈尔滨没有直达雪乡的车。\r\n火车\r\n从哈尔滨出发每天停海林市的火车很多,硬座票价为28-50元不等。\r\n参考：\r\n哈尔滨火车站问询电话:0451-86420115\r\n1、k479次空调特快(哈尔滨东—牡丹江)8:00出发,当日12:37停海林市。\r\n2、K631次特快(哈尔滨东—牡丹江)9:40出发,当日14:44停海林市。\r\n3、K622/623次特快(齐齐哈尔—绥芬河)23:55出发,次日5:23停海林市。\r\n客车\r\n1、从牡丹江出发:\r\n牡丹江客运站每天下午14:00有发往雪乡的专线车,约19:10到雪乡。车费28元，如果错过这班车，可先到长汀镇（牡丹江到长汀班车很多），再转车到雪乡\r\n2、从长汀镇出发:\r\n哈尔滨、牡丹江、海林市都有到长汀镇的长途车，长汀林业客运站到雪乡的车每天6:30、13:30发车,约3个小时到达，单程车费14元。包车约180元/人。另外从牡丹江发往雪乡的专线车会在下午4:30左右经过长汀镇。雪乡返回至长汀镇班车每天5:30、6:30、12:10发车。\r\n租车\r\n1、在海林市有很多夏利出租车到长汀镇,4人包车价一般为80元,一个人的话可以更便宜一点。车程约为一个半小时。\r\n2、从哈尔滨出发包车最好几人合乘,往返车价1500元左右。哈尔滨—五常—山河—沙河子—东方红—雪乡用时6小时左右。凑齐多人包中巴比较划算。\r\n大巴\r\n牡丹江客运站有车开往宁安,车程50分钟,每天5:30-19:00,15分钟一班。到达宁安后乘坐到景区专线游客车,或坐出租车也可以到。\r\n'),
(4, 61, 4, NULL, 'images/strategy/four/2.jpg', '', '雪乡张安强家庭客栈（网上叫雪乡红灯笼驿站）\r\n价格：340元/间（不含餐，三人间土炕，独立卫浴，WIFI）\r\n网上联系的，当时网上标价是180元/间，打电话过去说是去年的价格了，一直没更新，今年元旦是240元，后来就通过支付宝转的帐。过了半个月有个人给我打电话就是张安强，跟我说之前联系我的那个人主要是以包车为主，但是这个房子是他的，之前都出租给别人了，今年收回打算自己做，还重新装修了，都是独立卫生间和恒温水炕，价格要加100元，如果不同意他可以再帮忙给找其他家，后来觉得没多少钱就还跟这住了，毕竟假日期间雪乡房间不好订。\r\nPS:千万别住104号房，挨着厨房和锅炉房，还没有窗通风，晚上有27、28度，特别热。这家有热水，要洗澡尽量避开晚上，否则水流会很小'),
(4, 62, 4, NULL, 'images/strategy/four/8.jpg', '', ''),
(4, 63, 4, NULL, 'images/strategy/four/4.jpg', '', ''),
(4, 64, 4, NULL, 'images/strategy/four/10.jpg', '', ''),
(5, 65, 5, '关于这次旅行', '', '', '曾经想着把国内的每个省份都走遍，再去开启境外之旅，但至今国内还剩下6个省份还没有留下足迹，这次旅行的一切都要归功于亚航往返曼谷400元的特价机票，没有丝毫的犹豫和迟疑，下单付款一切行云流水般的进行。从未想过自己的境外自由行会来的如此快，也不曾考虑过在炎热的夏季去更炎热的东南亚，可是这件事就这么发生了，只用了几分钟的时间，当下定决心出发时，最困难的时刻就已经过去了，那么出发吧，迎接不一样的异国风情风景，迎接旅途中不一样的体验。\r\n\r\n关于泰国我认为这是一个非常随和的国家，人们非常的热情友好，尽管泰国人看来很腼腆，实际上他们很容易与陌生人融洽相处，而且总是脸带笑容，无论是街边的市民还是所谓游客区居多的商家，所有的人都很好相处，这也许和他们信奉的佛教有关。另外有关芭提雅的详细不在游记中进行描述，有兴趣的可以关注微博或者添加微信，我会把芭提雅的套路一一告知。'),
(5, 66, 5, '实用信息', '', '', '【护照】\r\n出国旅行最重要的就是护照，它相当于国内的身份证，购买国际航班需要护照号码，无论是预订酒店，还是在境外兑换货币，在免税店购物都需要出示护照，护照一本为10年有效期，可以当地出入境管理中心办理（公安局），异地也可以办理护照。\r\n\r\n【签证】\r\n签证可以简单理解为各国使馆印在护照空白页的通行证，签证分落地签、免签和需要提前办理的签证。泰国落地签材料：\r\n1.有效期在半年以上的护照\r\n2.4*6cm白底照片1张(没有的话也可以在机场直接拍)\r\n3.入境登机牌及15天内返程机票（可直接打印电子行程单，A4大小即可）\r\n4.酒店预订单\r\n5.现场填写申请表、出入境卡（一般情况飞机上会给），可以在飞机上填写。\r\n6.签证费2000泰铢/人，合人民币400左右，只收泰铢，所以如果你只带了人民币，需要提前到旁边的外币兑换点兑换泰铢。不过现场换的汇率很低，大约4.5左右，所以不用换太多。过了关之后汇率会好一点，入境后可以到机场的ATM取现或者到super rich换汇，super rich的汇率是最高的，大约4.955.\r\n8.最好自己带一支笔，以免现场等待用笔耽误时间。\r\n提前签证流程：\r\n打开各大旅行网站或app，搜索泰国签证，选择你所在地或最近的送签地，选择商家拍下付款，把护照、4*6cm白底照片发快递给商家，商家到各地大使馆办理签证，办理完成后快递寄回。费用大约250-300元人民币左右，出签时间大约7个工作日，可办理加急大约为4个工作日。\r\n9.落地签单次最多逗留15天，提前签最多逗留60天。\r\n\r\n※※现金抽查：无论是落地签还是提前办理好了签证，每个人身上必须带10000泰铢或等值外币（2000人民币），一家人出行的话需要每个家庭携带20000泰铢（4000人民币）。很多朋友说去过很多次泰国了，都没有被查，但是为了以防万一，还是带着保险。一旦被抽查面临的是被遣返，你的所有行程作废，很有可能在护照上还会留下不良记录。\r\n\r\n【值机入关流程】\r\n国内机场国际出发航站楼，找到对应航空公司值机柜台（提前两小时办理），办理值机后过海关安检后到达候机厅，海关一般不会问问题的。入境后根据是落地签还是提前办理的签证，进入对应的过关通道，事实证明落地签的人非常少，而我提前办理好了签证足足排了一个小时的长队，将护照出入境卡交给泰国海关，一般问你酒店订在哪里，在泰国停留几天，来泰国的原因，非常简单，全程中文对话就好。\r\n\r\n【费用】\r\n100泰铢等于20元人民币，汇率稳定在5左右，最好在国内的工商银行换一定的泰铢，因为汇率比泰国高，支付宝微信支付仅仅可以用于商场、便利店等地的支付，很多地方还是会用到现金，所以最好把现金带充足。泰国是一个小费国家，记得要给服务人员小费，比如餐馆服务员、酒店服务员等等，不过不要给硬币。\r\n【通讯】\r\n个人建议在国内提前网购泰国happy卡，8天内无限2G流量，4G流量3个G，内含话费，万能的网上有卖实在来不及可以到了机场在便利店买299泰铢。在泰国导航类APP要使用谷歌地图，要比其他的准确很多。'),
(5, 67, 5, '旅行预告片', 'images/strategy/five/1.jpg', '', '相比于唐人街，泰国的大皇宫才是真正的是中国人的天下，这里中国的游客非常的多，无数次听到乡音，都会有一种错觉，这里不是泰国，这是一处规模宏大的古建筑群，具有鲜明的暹罗建筑艺术特点，里面汇集了泰国建筑、绘画、雕刻和装潢艺术的精粹，简直精美卓伦。宏伟的建筑，直冲云霄，在蓝天白云的衬托下，如同置身在画中一样，一切对美的词汇都不足以描绘它的魅力。从大皇宫出来经过这里在姿态各异的古树下纳凉，看着碧绿如茵的大草坪，视觉一片开阔，心情似乎也比在里面略显拥挤的建筑和人群红要好了许多，远处三座宫殿的尖顶依次排开，即使身处宫外，也掩盖不了它的气势恢宏。'),
(5, 68, 5, '', 'images/strategy/five/2.jpg', '', '曼谷的天气真的是很任性，前一秒还是晴空万里蓝天白云，跟随着人潮走了没有多久，黑压压的乌云已经压了上来，漫天的乌云和金灿灿的皇宫，脑海里不由得想起“黑云压城城欲摧，甲光向日金鳞开”。继续向内走去，每一步都是惊叹。眼前的建筑，形制越发的繁复精美，色泽也越发的华丽耀眼，处处彰显着皇室气派。'),
(5, 69, 5, '', 'images/strategy/five/3.jpg', '', '走进皇宫庭院，映入眼帘的是大皇宫建筑群，一座挨着一座略显的紧凑，带有浓厚的泰国特色，直插云霄的佛塔式尖顶，金碧辉煌与蔚蓝的天空形成鲜明对比，佛塔式的尖顶直插云宵，屋顶的琉璃瓦在阳光照射下颜色分外的耀眼，去去到过这里的游客，无一不被这些格外耀眼的建筑和精湛奢华的装饰所深深震撼。'),
(5, 70, 5, '', 'images/strategy/five/4.jpg', '', '精致是大皇宫内最大的特点，每一个建筑外的装饰壁画，都像是人工一点点打磨上去的，看不去没有一丝机械的痕迹，甚至有一些手工的歪歪扭扭，大皇宫的建筑集绘画、雕刻和装潢艺术的精粹为一体，让人不由得感叹匠人们的耐心和他们的严谨。'),
(5, 71, 5, '', 'images/strategy/five/5.jpg', '', '考上路夜市应该是中国人在泰国出现最少的地方了，这里的夜晚热闹非凡，和国内不同的时，就算是你不买东西，各个摊位、酒吧的老板都会很热情的打招呼，小孩子和会和你打打闹闹的玩，而不是一心只为了挣钱\r\n这一点感觉特别明显，整个泰国给我的感觉都是这样，他们都很热情，无论你是中国人还是欧美人，你想去买一些东西，摊主不懂中文也不懂英文，总会有路过的路人来帮你翻译。'),
(5, 72, 5, '', 'images/strategy/five/6.jpg', '', '芭提雅这座城市的早晨是从10点开始的，而一旦芭提雅进入到夜晚，你能想到的词只有一个那就放纵，几乎每一条街道都会有酒吧，三五成群的人在这里喝酒娱乐，也许你是个和酒吧格格不入的人，觉得这里耳边震耳欲聋，五颜六色的灯光格外刺眼，舞池里的人格外疯狂，但在酒精的作用下，你没有任何理由和这座城市的文化格格不入。'),
(3, 73, 3, NULL, '', '', '以前的我，认为每年去一个陌生的地方便足矣，可旅行是一种会上瘾的事，在今年，尤其感受到了我与旅行是离不开的共同体，旅行中的我，喜欢翻山越岭漂洋过海，喜欢聆听星辰的暗语，喜欢拥抱自己的岛屿，喜欢自己莫名其妙变化的心情，在我看来世界是一个大的游乐场，而它也教会了我快乐的办法。据说古老印第安人有习惯，身体移动太快，灵魂会跟不上，于是他们会停留下来驻扎，要驻扎在旅行的空隙中，和灵魂汇合，有时候，我也觉得飞累了，走累了，可是当看到与生活不一样的新奇有趣的事物，又有了一种探索local的动力，能够与这个世界相遇是我的幸运。\r\n新年之际探访了周边的澳门 、香港；烟春三月去重庆 、成都 ；四月在菲律宾提前感受夏日香气；六月 中国 两极穿越顺便北上俄罗斯 、七月的尾巴在马尔代夫看Tiffany蓝的海；八月北上 黑龙江探寻中东铁路、探访西藏净土；九月新加坡 打卡阳朔 网红地、遁入 临沂 为客；十月二刷 菲律宾 巴拉望 ；十一月 大连 、在 婺源 寻最后一抹秋色；十二月在清迈 、曼谷过了一个假冬天，这就是我的2018 ❤\r\n这一年里，我毕业了\r\n这一年里，我去了五个国家和八个 中国 省份\r\n这一年里，我把灵魂和身体都落在了路上'),
(3, 76, 3, '『一月』沿海一隅的风，轻缀着葡国风韵', 'images/strategy/three/1.jpg', '', '2018年的钟声响起，完成了大学最后一次的期末考试后，529宿舍的小妖精们决定去 澳门 来一次新年旅行。女孩子们的旅行，似乎都会带上最美的衣裳，在街头拍上很久的照片，脸上挂着最灿烂的笑容，这就是闺蜜旅行。'),
(3, 77, 3, '', 'images/strategy/three/2.jpg', '', ''),
(3, 78, 3, '', 'images/strategy/three/3.jpg', '', ''),
(3, 79, 3, '路环小渔村', 'images/strategy/three/4.jpg', '', '在澳门如果没有什么目的，不如留一个午后给路环，那里没有赌场，没有城市的喧嚣，搭上开往 [路环市区] 的公交车，公交车叔叔不会因为掏零钱慢而谩骂你，而是稳着车子，细心地帮你算好告诉你才缓缓开动车子，阳光装满了整个车厢，干净整洁还显得格外通透，我坐在车子的后排，举起相机拍下了我那爱笑的闺蜜们。'),
(3, 80, 3, '路环小渔村', 'images/strategy/three/5.jpg', '', '到了路环市区的公交站，不远处就是[安 德鲁 花园咖啡]的总店，说到葡式蛋挞，这是一个在 澳门 都说不腻的八卦。爱此刻温柔的阳光和闲适的午后，复古调的小店里，好像是和旧时光的一场约会。'),
(3, 81, 3, '路环小渔村', 'images/strategy/three/6.jpg', '', '一面朴素，一面色彩斑驳\r\n路环的房子没有小洋房般的洋气\r\n小平楼矗立在小街中有属于它自己的味道');

-- --------------------------------------------------------

--
-- 表的结构 `gonglue_daren`
--

CREATE TABLE `gonglue_daren` (
  `id` int(11) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gonglue_daren`
--

INSERT INTO `gonglue_daren` (`id`, `img_url`, `title`) VALUES
(1, 'http://127.0.0.1:3000/img/darenwanfa/1.jpg', '密云与承德之间的旅行'),
(2, 'http://127.0.0.1:3000/img/darenwanfa/2.jpg', '从东到西游甘肃'),
(3, 'http://127.0.0.1:3000/img/darenwanfa/3.jpg', '蓬莱海市带你两日游遍');

-- --------------------------------------------------------

--
-- 表的结构 `gonglue_tuijian_left`
--

CREATE TABLE `gonglue_tuijian_left` (
  `id` int(11) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gonglue_tuijian_left`
--

INSERT INTO `gonglue_tuijian_left` (`id`, `img_url`) VALUES
(1, 'http://127.0.0.1:3000/img/tuijiangonglue/1.jpeg'),
(2, 'http://127.0.0.1:3000/img/tuijiangonglue/30.jpg'),
(3, 'http://127.0.0.1:3000/img/tuijiangonglue/3.jpeg');

-- --------------------------------------------------------

--
-- 表的结构 `gonglue_tuijian_right`
--

CREATE TABLE `gonglue_tuijian_right` (
  `id` int(11) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `stitle` varchar(255) DEFAULT NULL,
  `stype` varchar(25) DEFAULT NULL,
  `simg_url` varchar(255) DEFAULT NULL,
  `sname` varchar(25) DEFAULT NULL,
  `sclick` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gonglue_tuijian_right`
--

INSERT INTO `gonglue_tuijian_right` (`id`, `img_url`, `stitle`, `stype`, `simg_url`, `sname`, `sclick`) VALUES
(1, 'http://127.0.0.1:3000/img/tuijiangonglue/1.jpg', '马尔代夫——上帝抛洒人间的项链', '游记', 'http://127.0.0.1:3000/img/tuijiangonglue/19.jpg', '位于亚洲', 12345),
(2, 'http://127.0.0.1:3000/img/tuijiangonglue/2.jpg', '九州美食攻略——探访福冈美食乐趣', '游记', 'http://127.0.0.1:3000/img/tuijiangonglue/26.jpg', '风行Map', 12345),
(3, 'http://127.0.0.1:3000/img/tuijiangonglue/3.jpg', '第九次泰国之旅，终于去了大城和芭提雅', '游记', 'http://127.0.0.1:3000/img/tuijiangonglue/27.jpg', '迷途小染', 12345),
(4, 'http://127.0.0.1:3000/img/tuijiangonglue/4.jpg', '走向世界第一站，在泰国幸福的流浪', '目的地', 'http://127.0.0.1:3000/img/tuijiangonglue/20.jpg', '游记少年', 12345),
(5, 'http://127.0.0.1:3000/img/tuijiangonglue/5.jpg', '云南——风花雪月，彩云之南', '游记', 'http://127.0.0.1:3000/img/tuijiangonglue/21.JPG', '少年之旅', 52345),
(6, 'http://127.0.0.1:3000/img/tuijiangonglue/6.jpg', '首发——神奇的西双版纳', '目的地', 'http://127.0.0.1:3000/img/tuijiangonglue/22.jpg', '位于亚洲', 12345),
(7, 'http://127.0.0.1:3000/img/tuijiangonglue/7.jpg', '哈尔滨——俄式风情的冰雪之都', '目的地', 'http://127.0.0.1:3000/img/tuijiangonglue/23.jpg', '位于东北', 12345),
(8, 'http://127.0.0.1:3000/img/tuijiangonglue/8.jpg', '跟着《爸爸去哪儿》一路向北穿越雪乡', '游记', 'http://127.0.0.1:3000/img/tuijiangonglue/24.jpg', 'inli老板', 12345),
(9, 'http://127.0.0.1:3000/img/tuijiangonglue/9.JPG', '海南三亚亚特兰蒂斯度假酒店双飞3-8日自由行', '特价线路', 'http://127.0.0.1:3000/img/tuijiangonglue/26.jpg', '￥12312', 12345),
(10, 'http://127.0.0.1:3000/img/tuijiangonglue/10.JPG', '#猎艳行动#【途牛首发】香格里拉，到底在哪里？', '目的地', 'http://127.0.0.1:3000/img/tuijiangonglue/27.jpg', '风卷残云', 12345),
(11, 'http://127.0.0.1:3000/img/tuijiangonglue/11.jpg', '手绘海南，记录十项我们在三亚的初夏瞬间', '游记', 'http://127.0.0.1:3000/img/tuijiangonglue/21.JPG', '左左xian', 12345),
(12, 'http://127.0.0.1:3000/img/tuijiangonglue/12.jpg', '从福冈市场到有田烧五膳之探索在地美食的乐趣', '游记', 'http://127.0.0.1:3000/img/tuijiangonglue/20.jpg', '乐游ing', 12345),
(13, 'http://127.0.0.1:3000/img/tuijiangonglue/13.jpg', '每一个天堂都能穷游', '目的地', 'http://127.0.0.1:3000/img/tuijiangonglue/19.jpg', '位于海南', 12345),
(14, 'http://127.0.0.1:3000/img/tuijiangonglue/14.jpg', '春观樱，夏看海', '目的地', 'http://127.0.0.1:3000/img/tuijiangonglue/26.jpg', '位于亚洲', 12345),
(15, 'http://127.0.0.1:3000/img/tuijiangonglue/15.jpg', '花最少的钱看南国的海', '目的地', 'http://127.0.0.1:3000/img/tuijiangonglue/22.jpg', '位于海南', 12345),
(16, 'http://127.0.0.1:3000/img/tuijiangonglue/16.jpg', '不负好时光——马尔代夫DJ岛', '游记', 'http://127.0.0.1:3000/img/tuijiangonglue/24.jpg', 'livero晓', 12345),
(17, 'http://127.0.0.1:3000/img/tuijiangonglue/17.jpg', '热情洋溢的“萨瓦迪卡”', '目的地', 'http://127.0.0.1:3000/img/tuijiangonglue/19.jpg', '位于亚洲', 12345),
(18, 'http://127.0.0.1:3000/img/tuijiangonglue/1.jpg', '富士山—东京6日游', '特价线路', 'http://127.0.0.1:3000/img/tuijiangonglue/27.jpg', '位于亚洲', 12345);

-- --------------------------------------------------------

--
-- 表的结构 `gonglue_youji`
--

CREATE TABLE `gonglue_youji` (
  `id` int(11) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `brief` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gonglue_youji`
--
INSERT INTO `gonglue_youji` (`id`, `img_url`, `title`, `brief`) VALUES
(1, 'http://127.0.0.1:3000/img/youjibangdan/1.jpeg', '北京周边游', '她有着三千年的历史，荟萃了自元明清以来的中华文化……八方来客，宗教、文化、语言在这里融合'),
(2, 'http://127.0.0.1:3000/img/youjibangdan/2.jpg', '北国雪景 愿你是雪地精灵', '北国飞雪，降下了纯洁，净化了大地。愿你是雪地精灵，肆意奔跑在北国大地'),
(3, 'http://127.0.0.1:3000/img/youjibangdan/3.jpg', '重庆火锅的魅力', '酸爽、香辣，重庆火锅为你旅途增味添色。这里有美丽的风景，更有正宗重庆火锅给你的无尽回味'),
(4, 'http://127.0.0.1:3000/img/youjibangdan/4.jpeg', '春节过年好逍遥 ', '随着新春佳节的来临，伴随着年味的旅行美好时光。这份指南告诉你春节请假2天休9天不是梦。'),
(5, 'http://127.0.0.1:3000/img/youjibangdan/5.jpg', '关岛自驾 解锁浪漫冬日假期', 'Where Americans day begins'),
(6, 'http://127.0.0.1:3000/img/youjibangdan/6.jpeg', '激流飘荡 勇者游戏', '秀丽山川，自有勇者踏足。山野冒险，更待勇者征服。'),
(7, 'http://127.0.0.1:3000/img/youjibangdan/7.jpg', '北京周边游', '她有着三千年的历史，荟萃了自元明清以来的中华文化……八方来客，宗教、文化、语言在这里融合！'),
(8, 'http://127.0.0.1:3000/img/youjibangdan/8.jpeg', '北京周边游', '她有着三千年的历史，荟萃了自元明清以来的中华文化……八方来客，宗教、文化、语言在这里融合！'),
(9, 'http://127.0.0.1:3000/img/youjibangdan/9.jpeg', '北京周边游', '她有着三千年的历史，荟萃了自元明清以来的中华文化……八方来客，宗教、文化、语言在这里融合！'),
(10, 'http://127.0.0.1:3000/img/youjibangdan/10.jpg', '北京周边游', '她有着三千年的历史，荟萃了自元明清以来的中华文化……八方来客，宗教、文化、语言在这里融合！'),
(11, 'http://127.0.0.1:3000/img/youjibangdan/11.jpg', '北京周边游', '她有着三千年的历史，荟萃了自元明清以来的中华文化……八方来客，宗教、文化、语言在这里融合！'),
(12, 'http://127.0.0.1:3000/img/youjibangdan/12.jpeg', '北京周边游', '她有着三千年的历史，荟萃了自元明清以来的中华文化……八方来客，宗教、文化、语言在这里融合！'),
(13, 'http://127.0.0.1:3000/img/youjibangdan/13.jpg', '北京周边游', '她有着三千年的历史，荟萃了自元明清以来的中华文化……八方来客，宗教、文化、语言在这里融合！'),
(14, 'http://127.0.0.1:3000/img/youjibangdan/14.jpg', '北京周边游', '她有着三千年的历史，荟萃了自元明清以来的中华文化……八方来客，宗教、文化、语言在这里融合！'),
(15, 'http://127.0.0.1:3000/img/youjibangdan/15.jpg', '北京周边游', '她有着三千年的历史，荟萃了自元明清以来的中华文化……八方来客，宗教、文化、语言在这里融合！'),
(16, 'http://127.0.0.1:3000/img/youjibangdan/16.jpeg', '北京周边游', '她有着三千年的历史，荟萃了自元明清以来的中华文化……八方来客，宗教、文化、语言在这里融合！'),
(17, 'http://127.0.0.1:3000/img/youjibangdan/17.jpg', '北京周边游', '她有着三千年的历史，荟萃了自元明清以来的中华文化……八方来客，宗教、文化、语言在这里融合！'),
(18, 'http://127.0.0.1:3000/img/youjibangdan/18.jpeg', '北京周边游', '她有着三千年的历史，荟萃了自元明清以来的中华文化……八方来客，宗教、文化、语言在这里融合！');

