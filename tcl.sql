SET NAMES UTF8;
DROP DATABASE IF EXISTS tcl;
CREATE DATABASE tcl CHARSET=UTF8;
USE tcl;
-- <!-- 用户的信息 -->
CREATE TABLE tcl_user(
id INT PRIMARY KEY AUTO_INCREMENT,    #编号
usrname VARCHAR(32),
pw VARCHAR(32),
emaile VARCHAR(64),
phone VARCHAR(16)
);
-- <!-- 插入用户的信息 -->
INSERT INTO tcl_user VALUES
(1,'luodan','123456789','283451268@qq.com',13708204695),
(2,'zhangshang','12345678','283451267@qq.com',17380044858),
(3,'lisi','123456','283451266@qq.com',15082365536),
(4,'xiaoming','12345','283451265@qq.com',15390067305),
(5,'xiaohong','1234','283451264@qq.com',13708204694);

-- 轮播图
CREATE TABLE tcl_carousel(
  id INT,
  img VARCHAR(128)
);

-- 轮播图的列表
INSERT INTO tcl_carousel VALUES
(1,'http://127.0.0.1:3003/public/first/carousel/1.jpg'),
(2,'http://127.0.0.1:3003/public/first/carousel/2.jpg');

-- 轮播图的列表

-- <!-- 商品 -->
CREATE TABLE TCL(
lid INT PRIMARY KEY AUTO_INCREMENT,                             #编号
Iname VARCHAR(32),                  #商品的名称
subtitle VARCHAR(32),               #副标题
price DECIMAL(10,2),                 #价格
img VARCHAR(128),                     #图片
details VARCHAR(128),              #产品的详情信息
serve VARCHAR(32),                  #规格
dalei VARCHAR(32),                 #产品的分类
indexs INT,
count INT
);
-- 商品的列表
INSERT INTO TCL VALUES
(null,null,null,null,'http://127.0.0.1:3003/public/first/homepage/0.jpg',null,null,null,null,null),
(null,null,null,null,'http://127.0.0.1:3003/public/first/homepage/1.jpg',null,null,null,null,null),
(null,null,null,null,'http://127.0.0.1:3003/public/first/homepage/2.jpg',null,null,null,null,null),
(null,null,null,null,'http://127.0.0.1:3003/public/first/homepage/3.jpg',null,null,null,null,null),
(null,null,null,null,'http://127.0.0.1:3003/public/first/homepage/4.jpg',null,null,null,null,null),
(null,null,null,null,'http://127.0.0.1:3003/public/first/homepage/5.jpg',null,null,null,null,null),
(null,null,null,null,'http://127.0.0.1:3003/public/first/homepage/6.jpg',null,null,null,null,null),
(null,null,null,null,'http://127.0.0.1:3003/public/first/homepage/7.jpg',null,null,null,null,null),
(null,null,null,null,'http://127.0.0.1:3003/public/first/homepage/8.jpg',null,null,null,null,null),
(null,null,null,null,'http://127.0.0.1:3003/public/first/homepage/9.jpg',null,null,null,null,null),
(null,null,null,null,'http://127.0.0.1:3003/public/first/homepage/10.jpg',null,null,null,null,null),
(null,null,null,null,'http://127.0.0.1:3003/public/first/homepage/11.jpg',null,null,null,null,null),
(null,null,null,null,'http://127.0.0.1:3003/public/class/watch/1.jpg',null,null,'电视',0,50),
(null,null,null,null,'http://127.0.0.1:3003/public/class/XESS/0.jpg',null,null,'XESS',1,50),
(null,null,null,null,'http://127.0.0.1:3003/public/class/ice/0.jpg',null,null,'冰箱',2,50),
(null,null,null,null,'http://127.0.0.1:3003/public/class/washer/1.jpg',null,null,'洗衣机',3,50),
(null,null,null,null,'http://127.0.0.1:3003/public/class/vrv/1.jpg',null,null,'空调',4,50),
(null,null,null,null,'http://127.0.0.1:3003/public/class/kb/1.jpg',null,null,'厨卫电器',5,50),
(null,null,null,null,'http://127.0.0.1:3003/public/class/hardware/1.jpg',null,null,'智能硬件',6,50),
(null,'艺术电视',null,null,'http://127.0.0.1:3003/public/class/watch/2.jpg',null,null,'电视',0,50),
(null,'卧室专区',null,null,'http://127.0.0.1:3003/public/class/watch/3.jpg',null,null,'电视',0,50),
(null,'高端大屏',null,null,'http://127.0.0.1:3003/public/class/watch/4.jpg',null,null,'电视',0,50),
(null,'全场景AI',null,null,'http://127.0.0.1:3003/public/class/watch/5.jpg',null,null,'电视',0,50),
(null,'客厅首选',null,null,'http://127.0.0.1:3003/public/class/watch/6.jpg',null,null,'电视',0,50),
(null,'配件周边',null,null,'http://127.0.0.1:3003/public/class/watch/7.jpg',null,null,'电视',0,50),
(null,'XESS 65A100H 65英寸 艺术电视 新中产家居美学推荐',null,19999.00,'http://127.0.0.1:3003/public/class/watch/8.jpg','75V2此产品主体颜色为黑色，下前框颜色为枪色/黑色随机，具体以产品实物为准',null,'电视',0,50),
(null,'TCL 75V2 75英寸AI超智慧巨幕4K电视',null,4399.00,'http://127.0.0.1:3003/public/class/watch/9.jpg','Q·旗舰画质；独立前置音响；全场景AI；新一代Art5全面屏',null,'电视',0,50),
(null,'65Q8 65英寸全场景AI电视',null,5399.00,'http://127.0.0.1:3003/public/class/watch/10.jpg','Q·旗舰画质；独立前置音响；全场景AI；新一代Art5全面屏',null,'电视',0,50),
(null,'55Q6 55英寸超薄全场景AI电视',null,4599.00,'http://127.0.0.1:3003/public/class/watch/11.jpg','Handfree免唤醒AI、全场景AI、智能家居AI物联、全面屏设计、4K HDR、杜比+DTS双解码',null,'电视',0,50),
(null,'65V6 65英寸智慧全面屏电视',null,3199.00,'http://127.0.0.1:3003/public/class/watch/12.jpg','Handfree免唤醒AI、全场景AI、智能家居AI物联、全面屏设计、4K HDR、杜比+DTS双解码',null,'电视',0,50),
(null,'艺术智屏',null,null,'http://127.0.0.1:3003/public/class/XESS/1.jpg','Handfree
免唤醒AI、全场景AI、智能家居AI物联、全面屏设计、4K HDR、杜比+DTS双解码',null,'XESS',1,50),
(null,'旋转智屏幕',null,null,'http://127.0.0.1:3003/public/class/XESS/2.jpg','新品发售，标配挂架，底座需另外购买升降式摄像头/AI语音人工智能',null,'XESS',1,50),
(null,'艺术智屏',null,null,'http://127.0.0.1:3003/public/class/XESS/1.jpg','进入XESS智屏频道',null,'XESS',1,50),
(null,null,null,null,null,null,null,'XESS',1,50),
(null,null,null,null,null,null,null,'XESS',1,50),
(null,null,null,null,null,null,null,'XESS',1,50),
(null,'TCL·XESS 旋转智屏A200Pro-T',null,19999,'http://127.0.0.1:3003/public/class/XESS/3.jpg','TCL BCD-318WEZ50 318升大容量冷藏冷冻家用电冰箱，三温三循环，精准恒温/三口之家用',null,'XESS',1,30),
(null,'TCL·XESS 艺术智屏A100U',null,6999,'http://127.0.0.1:3003/public/class/XESS/1.jpg','TCL BCD-515WEFA1 风冷无霜均匀制冷/隐形电脑显控/纤薄箱体轻松入户/515升大容量/热销榜单',null,'XESS',1,30),
(null,'TCL·XESS 艺术智屏A100T',null,6999,'http://127.0.0.1:3003/public/class/XESS/1.jpg','TCL BCD-318WEZ50 318升大容量冷藏冷冻家用电冰箱，三温三循环，精准恒温/三口之家用',null,'XESS',1,30),
(null,'TCL·XESS 旋转智屏A200S',null,116999,'http://127.0.0.1:3003/public/class/XESS/5.jpg',null,null,'XESS',1,30),
(null,'单身贵族',null,null,'http://127.0.0.1:3003/public/class/ice/1.jpg','TCL BCD-318WEZ50 318升大容量冷藏冷冻家用电冰箱，三温三循环，精准恒温/三口之家用',null,'冰箱',2,30),
(null,'二人世界',null,null,'http://127.0.0.1:3003/public/class/ice/2.jpg','TCL BCD-318WEZ50 318升大容量冷藏冷冻家用电冰箱，三温三循环，精准恒温/三口之家用',null,'冰箱',2,30),
(null,'三口之家',null,null,'http://127.0.0.1:3003/public/class/ice/3.jpg','TCL BCD-318WEZ50 318升大容量冷藏冷冻家用电冰箱，三温三循环，精准恒温/三口之家用',null,'冰箱',2,30),
(null,'四世同堂',null,null,'http://127.0.0.1:3003/public/class/ice/4.jpg','TCL BCD-515WEFA1 风冷无霜均匀制冷/隐形电脑显控/纤薄箱体轻松入户/515升大容量/热销榜单',null,'冰箱',2,30),
(null,'变频冰箱',null,null,'http://127.0.0.1:3003/public/class/ice/5.jpg',null,null,'冰箱',2,30),
(null,null,null,null,null,null,null,'冰箱',2,20),
(null,'TCL318L法式多门风冷无霜电脑冰箱',null,19999,'http://127.0.0.1:3003/public/class/ice/6.jpg','TCL BCD-318WEZ50 318升大容量冷藏冷冻家用电冰箱，三温三循环，精准恒温/三口之家用',null,'冰箱',2,50),
(null,'TCL 515L对开门风冷无霜冰箱',null,1999,'http://127.0.0.1:3003/public/class/ice/7.jpg','TCL BCD-318WEZ50 318升大容量冷藏冷冻家用电冰箱，三温三循环，精准恒温/三口之家用',null,'冰箱',2,50),
(null,'TCL118L小双门节能家用冰箱',null,729,'http://127.0.0.1:3003/public/class/ice/8.jpg','TCL BCD-318WEZ50 318升大容量冷藏冷冻家用电冰箱，三温三循环，精准恒温/三口之家用',null,'冰箱',2,50),
(null,'TCL410升T形对开门风冷养鲜',null,2499,'http://127.0.0.1:3003/public/class/ice/9.jpg','TCL BCD-318WEZ50 318升大容量冷藏冷冻家用电冰箱，三温三循环，精准恒温/三口之家用',null,'冰箱',2,50),
(null,'TCL 520L风冷一体双变频冰箱',null,2399,'http://127.0.0.1:3003/public/class/ice/10.jpg','TCL BCD-318WEZ50 318升大容量冷藏冷冻家用电冰箱，三温三循环，精准恒温/三口之家用',null,'冰箱',2,50),
(null,'风冷冰箱',null,2599,'http://127.0.0.1:3003/public/class/ice/11.jpg',null,'TCL BCD-515WEFA1 风冷无霜均匀制冷/隐形电脑显控/纤薄箱体轻松入户/515升大容量/热销榜单','冰箱',2,50),
(null,'变频滚筒',null,null,'http://127.0.0.1:3003/public/class/washer/2.jpg',null,null,'洗衣机',3,50),
(null,'变频波轮',null,null,'http://127.0.0.1:3003/public/class/washer/3.jpg',null,null,'洗衣机',3,50),
(null,'洗烘一体',null,null,'http://127.0.0.1:3003/public/class/washer/4.jpg',null,null,'洗衣机',3,50),
(null,'免污洗衣机',null,null,'http://127.0.0.1:3003/public/class/washer/5.jpg',null,null,'洗衣机',3,50),
(null,'定频滚筒',null,null,'http://127.0.0.1:3003/public/class/washer/2.jpg',null,null,'洗衣机',3,50),
(null,'全自动波轮',null,null,'http://127.0.0.1:3003/public/class/washer/3.jpg',null,null,'洗衣机',3,50),
(null,'TCL10公斤洗烘一体全自动滚筒洗衣机',null,3299,'http://127.0.0.1:3003/public/class/washer/3.jpg','TCL10公斤洗烘一体全自动滚筒洗衣机',null,'洗衣机',3,50),
(null,'挂机',null,null ,'http://127.0.0.1:3003/public/class/vrv/2.jpg',null,null ,'空调',4,50),
(null,'柜机',null,null,'http://127.0.0.1:3003/public/class/vrv/3.jpg',null,null ,'空调',4,50),
(null,'变频',null,null,'http://127.0.0.1:3003/public/class/vrv/4.jpg',null,null ,'空调',4,50),
(null,'冷暖',null,null,'http://127.0.0.1:3003/public/class/vrv/5.jpg',null,null ,'空调',4,50),
(null,'一级效能',null,null,'http://127.0.0.1:3003/public/class/vrv/6.jpg',null,null ,'空调',4,50),
(null,null,null,null,null,null,null ,'空调',4,50),
(null,'TCL大1.5匹变频节能冷暖空调',null,1649,'http://127.0.0.1:3003/public/class/vrv/2.jpg',null,'TCL10公斤洗烘一体全自动滚筒洗衣机' ,'空调',4,50),
(null,'厨卫电器',null,null,'http://127.0.0.1:3003/public/class/kb/2.jpg',null,null ,'厨卫电器',5,50),
(null,'生活电器',null,null,'http://127.0.0.1:3003/public/class/kb/3.jpg',null,null ,'厨卫电器',5,50),
(null,'热水器',null,null,'http://127.0.0.1:3003/public/class/kb/4.jpg',null,null ,'厨卫电器',5,50),
(null,null,null,null,null,null,null ,'厨卫电器',5,10),
(null,null,null,null,null,null,null ,'厨卫电器',5,10),
(null,null,null,null,null,null,null ,'厨卫电器',5,10),
(null,'TCL 3626J+5602B液化气烟灶套装组合',null,2299,'http://127.0.0.1:3003/public/class/kb/5.jpg',null,null ,'厨卫电器',5,50),
(null,'TCL 3626J+5602B液化气烟灶套装组合',null,2299,'http://127.0.0.1:3003/public/class/kb/5.jpg',null,null ,'厨卫电器',5,50),
(null,'TCL 3626J+5602B液化气烟灶套装组合',null,899,'http://127.0.0.1:3003/public/class/kb/5.jpg',null,null ,'厨卫电器',5,50),
(null,'美妆护肤',null,null,'http://127.0.0.1:3003/public/class/hardware/2.jpg',null,null ,'智能硬件',6,50),
(null,'电动牙刷',null,null,'http://127.0.0.1:3003/public/class/hardware/3.jpg',null,null ,'智能硬件',6,50),
(null,'智能安防',null,null,'http://127.0.0.1:3003/public/class/hardware/4.jpg',null,null ,'智能硬件',6,50),
(null,'耳机',null,null,'http://127.0.0.1:3003/public/class/hardware/5.jpg',null,null ,'智能硬件',6,50),
(null,'黑莓手机',null,null,'http://127.0.0.1:3003/public/class/hardware/6.jpg',null,null ,'智能硬件',6,50),
(null,null,null,null,null,null,null ,'智能硬件',6,50),
(null,'TCL XESS R1魔颜感光美妆镜',null,69,'http://127.0.0.1:3003/public/class/hardware/2.jpg',null,null ,'智能硬件',6,50),
(null,'TCL XESS 光波双净智能牙刷D3(套装) 宫廷红',null,699,'http://127.0.0.1:3003/public/class/hardware/7.jpg',null,null ,'智能硬件',6,50),
(null,'TCL XESS R1魔颜感光美妆镜',null,999,'http://127.0.0.1:3003/public/class/hardware/8.jpg',null,null ,'智能硬件',6,50),
(null,'TCL XESS R1魔颜感光美妆镜',null,1699,'http://127.0.0.1:3003/public/class/hardware/9.jpg',null,null ,'智能硬件',6,50),
(null,'TCL XESS R1魔颜感光美妆镜',null,4699,'http://127.0.0.1:3003/public/class/hardware/10.jpg',null,null ,'智能硬件',6,50),
(null,'内购平台',null,null,'http://127.0.0.1:3003/public/class/other/1.jpg',null,null ,'其他',7,null);
CREATE TABLE  dalei(
  wid int,
  dalei VARCHAR(32),
  imgs VARCHAR(128)
);
INSERT INTO dalei VALUES
(0,'电视','http://127.0.0.1:3003/public/first/list/4.jpg'),
(1,'XESS智屏','http://127.0.0.1:3003/public/first/list/1.jpg'),
(2,'冰箱','http://127.0.0.1:3003/public/first/list/5.jpg'),
(3,'洗衣机','http://127.0.0.1:3003/public/first/list/6.jpg'),
(4,'空调','http://127.0.0.1:3003/public/first/list/3.jpg'),
(5,'厨卫电器','http://127.0.0.1:3003/public/first/list/7.jpg'),
(6,'智能硬件','http://127.0.0.1:3003/public/first/list/8.jpg'),
(7,'其他','http://127.0.0.1:3003/public/first/list/2.jpg');
-- <!-- 购物车详情 -->
-- CREATE TABLE jm_shoppingcart_item(
--    iid INT PRIMARY KEY AUTO_INCREMENT,#编号
--    user_id INT,                       #用户的编号
--    product_id INT,                    #商品的编号
--    count INT,                         #购买的数量
--    is_checked BOOLEAN,                #是否已勾选，确定购买
--    freight VARCHAR(4,2)			#运费
--   );
-- <!-- 收货地址信息 -->
-- CREATE TABLE jm_receiver_address(
--   aid INT PRIMARY KEY AUTO_INCREMENT,
--   user_id INT,                #用户编号
--   receiver VARCHAR(16),       #接收人姓名
--   company VARCHAR(32),	      #公司名称
--   province VARCHAR(16),       #省
--   city VARCHAR(16),           #市
--   county VARCHAR(16),         #县
--   address VARCHAR(128),       #详细地址
--   cellphone VARCHAR(16),      #手机
--   fixedphone VARCHAR(16),     #固定电话
--   postcode CHAR(6),           #邮编
--   tag VARCHAR(16),            #标签名
--   couponCode VARCHAR(32),     #优惠券编码
--   is_default BOOLEAN          #是否为当前用户的默认收货地址
-- );
-- <!--用户的订单详情  -->
-- CREATE TABLE jm_order_detail(
--   did INT PRIMARY KEY AUTO_INCREMENT,
--   order_id INT,           #订单编号
--   product_id INT,         #产品编号
--   count INT,               #购买数量
--   pay INT                #支付方式 1.银行汇款2.支付宝
-- );

