create
    database dubbo default charset = utf8;

use
    dubbo;

DROP TABLE IF EXISTS `t_travelgroup`;
CREATE TABLE `t_travelgroup`
(
    `id`        int(11) NOT NULL AUTO_INCREMENT,
    `code`      varchar(32)   DEFAULT NULL,
    `name`      varchar(1000) DEFAULT NULL,
    `helpCode`  varchar(32)   DEFAULT NULL,
    `sex`       char(1)       DEFAULT NULL,
    `remark`    varchar(1000) DEFAULT NULL,
    `attention` varchar(1000) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

DROP TABLE IF EXISTS `t_travelitem`;
CREATE TABLE `t_travelitem`
(
    `id`        int(11) NOT NULL AUTO_INCREMENT,
    `code`      varchar(16)  DEFAULT NULL,
    `name`      varchar(32)  DEFAULT NULL,
    `sex`       char(1)      DEFAULT NULL,
    `age`       varchar(32)  DEFAULT NULL,
    `price`     float        DEFAULT NULL,
    `type`      char(1)      DEFAULT NULL COMMENT '自由行类型,分为自由和跟团两种',
    `attention` varchar(128) DEFAULT NULL,
    `remark`    varchar(128) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;



DROP TABLE IF EXISTS `t_travelgroup_travelitem`;
CREATE TABLE `t_travelgroup_travelitem`
(
    `travelgroup_id` int(11) NOT NULL DEFAULT '0',
    `travelitem_id`  int(11) NOT NULL DEFAULT '0',
    PRIMARY KEY (`travelgroup_id`, `travelitem_id`),
    KEY `item_id` (`travelitem_id`),
    CONSTRAINT `group_id` FOREIGN KEY (`travelgroup_id`) REFERENCES `t_travelgroup` (`id`),
    CONSTRAINT `item_id` FOREIGN KEY (`travelitem_id`) REFERENCES `t_travelitem` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

DROP TABLE IF EXISTS `t_setmeal`;
CREATE TABLE `t_setmeal`
(
    `id`        int(11) NOT NULL AUTO_INCREMENT,
    `name`      varchar(1000) DEFAULT NULL,
    `code`      varchar(8)    DEFAULT NULL,
    `helpCode`  varchar(16)   DEFAULT NULL,
    `sex`       char(1)       DEFAULT NULL,
    `age`       varchar(32)   DEFAULT NULL,
    `price`     float         DEFAULT NULL,
    `remark`    varchar(3000) DEFAULT NULL,
    `attention` varchar(128)  DEFAULT NULL,
    `img`       varchar(128)  DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;



DROP TABLE IF EXISTS `t_setmeal_travelgroup`;
CREATE TABLE `t_setmeal_travelgroup`
(
    `setmeal_id`     int(11) NOT NULL DEFAULT '0',
    `travelgroup_id` int(11) NOT NULL DEFAULT '0',
    PRIMARY KEY (`setmeal_id`, `travelgroup_id`),
    KEY `travelgroup_key` (`travelgroup_id`),
    CONSTRAINT `travelgroup_key` FOREIGN KEY (`travelgroup_id`) REFERENCES `t_travelgroup` (`id`),
    CONSTRAINT `setmeal_key` FOREIGN KEY (`setmeal_id`) REFERENCES `t_setmeal` (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;


use dubbo;


# 跟团游

INSERT INTO `t_travelgroup` VALUES ('5', '0001', '昆明、大理、丽江双飞单动6日经典游', 'YBJC', '0', '春节昆明-大理-丽江双飞6日游牛新品/18人小团0购物+5A石林+玉龙雪山大索登顶+洱海Jeep旅拍+南诏风情岛+非遗白族扎染体验+彝族特色长街宴 ', '无');
INSERT INTO `t_travelgroup` VALUES ('6', '0002', '三亚-蜈支洲岛-亚龙湾双飞5日4晚跟团游', 'SLSJ', '0', '华东五市-乌镇-南浔-杭州双飞6日游>全新升级4晚维也纳系列酒店，全程0自费，观水乡婚礼，登雷峰塔，品金陵十六味，含宋城/上海夜景', null);
INSERT INTO `t_travelgroup` VALUES ('7', '0003', '重庆、武隆仙女山、天坑三硚、龙水峡地缝、洪崖洞、磁器口古镇双飞5日经典游', 'XCG', '0', '春节南宁-越南-下龙湾-北海双飞7日游>0购0自费/境外国际4星/1晚希尔顿/168元海鲜自助/奥巴马米粉/赠越式按摩/可升涠洲岛/全程领队/双口岸进出', null);
INSERT INTO `t_travelgroup` VALUES ('8', '0004', '印度尼西亚巴厘岛7日5晚半自助跟团游', 'NCG', '0', '春节海南三亚双飞5日游17万人游玩0购物，180度海景房(华美达/明申/维景/唐拉雅秀)，赠全海景玻璃栈道+蟹鲍海鲜餐，20年出游去南山看108米海上观音', null);
INSERT INTO `t_travelgroup` VALUES ('9', '0005', '厦门-鼓浪屿-云水谣土楼双飞5日4晚跟团游', 'GGSX', '0', '厦门-鼓浪屿双飞5日游臻品9人团0购0自，全程五星华邑/万豪海景房，高标佳丽自助/地标全海景餐厅，人气日光岩植物园鹭江夜游，接送0等待', null);
INSERT INTO `t_travelgroup` VALUES ('10', '0006', '越南芽庄6日5晚自由行', 'NGSX', '0', '土耳其10日游超6000人选择牛人专线/五星航空直飞内陆双飞/费特希耶/网红景点齐打卡/五星酒店升1晚真洞穴酒店/升级4特色餐/2顿中餐', null);
INSERT INTO `t_travelgroup` VALUES ('11', '0007', '印度尼西亚巴厘岛7日5晚半自助跟团游', 'XZSX', '0', '春节埃及-迪拜-阿布扎比10日游A380或波音787/埃及全程五星/红海两晚/宿卢克索/吉萨金字塔群/埃及博物馆/马车巡游/风帆船', null);
INSERT INTO `t_travelgroup` VALUES ('12', '0008', '泰国普吉岛7日5晚跟团游', 'XJMSX', '0', '春节埃及+土耳其11-14日游埃及卢克索/亚历山大/红海,土耳其伊斯坦布尔/圣索菲亚大教堂,内陆4段飞,含卡帕和棉花堡,TK', null);
INSERT INTO `t_travelgroup` VALUES ('13', '0009', '悉尼-黄金海岸 汉密尔顿8日6晚品质游', 'JGSX', '0', '南美印象5国+巴西+阿根廷+秘鲁+智利+乌拉圭16-20日游>纯玩无购物/雨林/伊瓜苏瀑布/纳斯卡地画/四到五星酒店/部分增游马丘比丘', null);
INSERT INTO `t_travelgroup` VALUES ('14', '0010', '柬埔寨吴哥6日4晚跟团游', 'ZGFJCC', '2', '春节美国东西海岸11-13日游游多款产品可选/迪士尼一日双园过大年/环球影城/峡谷/羚羊彩穴/马蹄湾/部分团期升级纯玩团/保证拼住', null);
INSERT INTO `t_travelgroup` VALUES ('15', '0011', '张家界、玻璃桥、天门山、芙蓉镇、凤凰古城双飞5日跟团游', 'DHSSX', '0', '美国西雅图-波特兰6晚8日自由行西雅图进波特兰出，精选全程6晚酒店，行程天数可随意增减', null);




INSERT INTO `t_setmeal` VALUES ('12', '公司年度旅游套餐（男女通用）', '0001', 'RZTJ', '0', '18-60', '300', '公司年度旅游套餐', null, 'a5e8e729-74ce-4939-bf36-9cdc02fb2ae51.jpg');
INSERT INTO `t_setmeal` VALUES ('13', '广州长隆酒店+珠海长隆企鹅酒店双飞5日自由行套餐', '0002', 'FHZA', '2', '18-60', '1200', '长隆酒店(广州长隆野生动物世界店)位于广州长隆旅游度假区中心地段，毗邻长隆欢乐世界、长隆水上乐园、长隆野生动物世界、长隆飞鸟乐园和长隆国际大马戏等主题乐园。交通便捷，多条园区穿梭巴往返长隆酒店和各大园区之间。珠海园区、机场快线、香港直通巴汇集其中，广州地铁3号线/7号线让您的度假娱乐更快捷方便。 长隆酒店作为大型的生态主题酒店，主要以热带区域的人文文化风情为主基调。客房的摆设装修以客为主，温馨舒适，并有多种客房和套房类型选择。酒店绿植围绕，种类繁多，动物岛置身于酒店之中，珍稀动物随处可见。 酒店内配套多间风味各异的餐厅，让你足不出户品尝环球美食。酒店配套室外泳池、室内四季恒温泳池、健身房、童趣乐园、康体中心等，都是您商旅或者度假的上佳消遣地方。 国际会展中心更有可容纳3,000人的6,000平方米宴会厅，拥有12米无柱高楼顶，配备LED屏幕，及大型内置8米升降舞台、先进的多媒体视听、通讯系统等商务会议设施。39个不同规格的豪华多功能会议厅。专业的销售、服务团队和完善的会议设施设备随时准备为您提供一流的会议、展览和宴会服务，打造一流的商务会议品牌。', null, 'd7114f3d-35bd-4e52-b0b5-9dfc83d54af72.jpg');
INSERT INTO `t_setmeal` VALUES ('14', '厦门+鼓浪屿双飞5日自由行套餐', '0003', 'YGBM', '0', '55-100', '1400', '鼓浪屿的生活，是慵懒而优雅的，像极了欧洲某个古老的城市，不张扬，却有着致命的吸引力——温柔的阳光，蔚蓝的大海，美妙的琴声，静静矗立的老建筑，悠然自得的猫咪，所有的一切，总让人忍不住想好好的，再谈一场恋爱。 　　所以做了这样的主题，就是想把所谓浪漫，狠狠地，彻底地，进行下去。要华丽，因为青春理应肆意和张扬；要低调，因为在心底，总有一个最柔软最隐秘的角落，是只属于你的。最重要的，是要浪漫。在流淌着音乐的房间里，看点点烛光摇曳，撒在床上的玫瑰花瓣香味隐约扑来，举起手中的红酒杯，两个人，相视无语。cheers. 感谢你们，与我们分享这美好。也但愿我能，一直见证你们的幸福。', null, '1291b1fb-40c2-4558-b102-02e05c4cff6c3.jpg');
INSERT INTO `t_setmeal` VALUES ('15', '云南-昆明-大理-丽江-香格里拉双飞8日游套餐', '0004', 'ZAGD', '0', '14-20', '2400', '今日行程无导游陪同，如您当日抵昆时间较早，可自行将行李寄存在入住酒店（贵重物品请自行保管好）；随后，自由活动（如抵达昆明时间尚早，可自行前往云南师范大学（西南联合大学旧址）、昆明金马碧鸡坊、南屏街、、陆军讲武堂等景点游览、（外出酒店时贵重物品请自行保管好，请到酒店前台带上酒店名片，方便打车回酒店）', null, '68c7c13f-8fc2-46c3-b5d6-f7ec7992dc6e1.jpg');
INSERT INTO `t_setmeal` VALUES ('3', '澳门威尼斯人商圈酒店双飞3-5日自由行套餐', '0001', 'RZTJ', '0', '18-60', '300', '澳门巴黎人是全澳门乃至亚洲的一颗闪耀新星，您可以在此感受“光之城”巴黎的独特艺术气息与迷人魅力。这里有约2千余间法式客房及套房供您选择，还有依照巴黎埃菲尔铁塔1/2比例建造的巴黎铁塔，让您体验独特的浪漫风情。您还可以于170家精品名店享受购物乐趣，或是品尝经典法式美食，欣赏精彩的娱乐表演，畅游水世界、儿童王国等各种娱乐项目，像巴黎人一样体验无处不在的浪漫与惊喜！', null, 'a5e8e729-74ce-4939-bf36-9cdc02fb2ae51.jpg');
INSERT INTO `t_setmeal` VALUES ('4', '香港九龙尖沙咀商圈双飞3-8日自由行套餐', '0001', 'RZTJ', '0', '18-60', '300', '香港九龙珀丽酒店(Rosedale Hotel Kowloon)位于市中心繁华闹市，地处九龙中心地带，毗邻多个购物、娱乐中心；酒店提供班车来往旺角、尖沙嘴和“圆方”购物区，方便宾客出行。 香港九龙珀丽酒店(Rosedale Hotel Kowloon) 设计精巧、新颖独特，拥有精致、高雅的各式客房。酒店客房均配有LED智能电视、iPod/ iPhone 底座，让您尽享便捷、舒适生活。', null, 'a5e8e729-74ce-4939-bf36-9cdc02fb2ae51.jpg');
INSERT INTO `t_setmeal` VALUES ('5', '海南-亚龙湾-三亚双飞7日游', '0001', 'RZTJ', '0', '18-60', '300', '全程由旅游局指定餐厅用餐，严格把控餐饮质量，让您安心享用每一顿饮食，尽情尝特色美食，让味蕾绽放在路上，品味舌尖上的海南 。', null, 'a5e8e729-74ce-4939-bf36-9cdc02fb2ae51.jpg');
INSERT INTO `t_setmeal` VALUES ('6', '丽江-大理-香格里拉双飞6日游', '0001', 'RZTJ', '0', '18-60', '300', '云南地处高原，老年人体温调节功能较差，易受凉感冒，所以衣服要带得够，以便随时增减，行走出汗时，不要马上脱衣敞怀。高原地区昼夜温差大，睡前要盖好被毯，夜间风起雨来时要关好门窗。', null, 'a5e8e729-74ce-4939-bf36-9cdc02fb2ae51.jpg');
INSERT INTO `t_setmeal` VALUES ('7', '海南-亚龙湾-三亚双飞8日游', '0001', 'RZTJ', '0', '18-60', '300', '旅游中要有充足的休息和睡眠，若感到体力不支，可略着休息或减缓旅行。在长时间步行游览时应随时坐下小憩。', null, 'a5e8e729-74ce-4939-bf36-9cdc02fb2ae51.jpg');








INSERT INTO `t_setmeal_travelgroup` VALUES ('12', '5');
INSERT INTO `t_setmeal_travelgroup` VALUES ('12', '6');
INSERT INTO `t_setmeal_travelgroup` VALUES ('12', '7');
INSERT INTO `t_setmeal_travelgroup` VALUES ('12', '8');
INSERT INTO `t_setmeal_travelgroup` VALUES ('12', '9');
INSERT INTO `t_setmeal_travelgroup` VALUES ('12', '10');
INSERT INTO `t_setmeal_travelgroup` VALUES ('14', '10');
INSERT INTO `t_setmeal_travelgroup` VALUES ('15', '10');
INSERT INTO `t_setmeal_travelgroup` VALUES ('12', '11');
INSERT INTO `t_setmeal_travelgroup` VALUES ('14', '11');
INSERT INTO `t_setmeal_travelgroup` VALUES ('15', '11');
INSERT INTO `t_setmeal_travelgroup` VALUES ('14', '12');
INSERT INTO `t_setmeal_travelgroup` VALUES ('14', '13');
INSERT INTO `t_setmeal_travelgroup` VALUES ('15', '13');
INSERT INTO `t_setmeal_travelgroup` VALUES ('13', '14');
INSERT INTO `t_setmeal_travelgroup` VALUES ('15', '14');
INSERT INTO `t_setmeal_travelgroup` VALUES ('13', '15');
INSERT INTO `t_setmeal_travelgroup` VALUES ('3', '5');
INSERT INTO `t_setmeal_travelgroup` VALUES ('3', '6');
INSERT INTO `t_setmeal_travelgroup` VALUES ('3', '7');
INSERT INTO `t_setmeal_travelgroup` VALUES ('3', '8');
INSERT INTO `t_setmeal_travelgroup` VALUES ('3', '9');
INSERT INTO `t_setmeal_travelgroup` VALUES ('3', '10');
INSERT INTO `t_setmeal_travelgroup` VALUES ('4', '10');
INSERT INTO `t_setmeal_travelgroup` VALUES ('15', '10');
INSERT INTO `t_setmeal_travelgroup` VALUES ('3', '11');
INSERT INTO `t_setmeal_travelgroup` VALUES ('4', '11');
INSERT INTO `t_setmeal_travelgroup` VALUES ('5', '11');
INSERT INTO `t_setmeal_travelgroup` VALUES ('4', '12');
INSERT INTO `t_setmeal_travelgroup` VALUES ('4', '13');
INSERT INTO `t_setmeal_travelgroup` VALUES ('5', '13');
INSERT INTO `t_setmeal_travelgroup` VALUES ('6', '14');
INSERT INTO `t_setmeal_travelgroup` VALUES ('5', '14');
INSERT INTO `t_setmeal_travelgroup` VALUES ('6', '15');



