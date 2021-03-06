-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-08-18 14:40:46
-- 伺服器版本： 10.4.20-MariaDB
-- PHP 版本： 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `project`
--

-- --------------------------------------------------------

--
-- 資料表結構 `products`
--

CREATE TABLE `products` (
  `sid` int(11) NOT NULL COMMENT '商品編號',
  `Name` varchar(255) NOT NULL COMMENT '商品名稱',
  `categories_sid` int(11) NOT NULL DEFAULT 1 COMMENT '商品類別編號',
  `image` varchar(255) DEFAULT NULL COMMENT '商品圖片',
  `Location` varchar(255) NOT NULL COMMENT '對應身體的部位',
  `nutrient` varchar(255) NOT NULL COMMENT '商品成分 / 商品材質',
  `brand_company` varchar(255) NOT NULL COMMENT '品牌 / 製造公司',
  `quantity` varchar(255) NOT NULL COMMENT '內容量 / 規格',
  `price` int(11) NOT NULL COMMENT '商品價格',
  `special offer` varchar(255) DEFAULT '暫無' COMMENT '特惠價',
  `Edible_Method` varchar(255) NOT NULL COMMENT '使用方法',
  `place_origin` varchar(255) NOT NULL COMMENT '產地',
  `EXP` varchar(255) NOT NULL COMMENT '保存期限',
  `MFD` varchar(255) NOT NULL COMMENT '製造日期',
  `create_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT '資料創建時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `products`
--

INSERT INTO `products` (`sid`, `Name`, `categories_sid`, `image`, `Location`, `nutrient`, `brand_company`, `quantity`, `price`, `special offer`, `Edible_Method`, `place_origin`, `EXP`, `MFD`, `create_at`) VALUES
(1, '保佳兆UCII複合錠60PC', 1, './img/products(1).jpeg', '骨骼', '維生素C、維生素D、葡萄糖胺、鈣、鋅、鎂、銅、錳、膠原蛋白', '保佳兆', '60 PC', 1428, '暫無', '1日/1錠', '美國', '2年', '詳見包裝', '2021-08-05 09:10:10'),
(2, '愛維他檸檬酸鈣固本加強錠120PC', 1, './img/products(2).jpeg', '骨骼', '維生素D、鈣、鋅、鎂、銅、錳', '森宏', '120 PC', 2280, '暫無', '1日/1~2錠', '美國', '2年', '詳見包裝', '2021-08-05 09:10:10'),
(3, '三多 高纖乳酸菌PP粉末食品-2gx20', 1, './img/products(3).jpeg', '腸胃', '益生菌、乳酸菌、酵素、木寡糖', '三多', '2g * 20', 375, '暫無', '1日/2包', '台灣', '2年', '詳見包裝', '2021-08-05 09:10:10'),
(4, '德國頂級魚油', 1, './img/products(4).jpeg', '眼睛', '魚油、Omega3', '大研生醫', '60PC', 1129, '暫無', '1日/1粒', '台灣', '3年', '詳見包裝', '2021-08-05 09:10:10'),
(5, '視易適葉黃素', 1, './img/products(5).jpeg', '眼睛', '蝦紅素、花青素、葉黃素、山桑子、亞麻仁油、維生素E、Omega3', '大研生醫', '30PC', 1899, '1599', '1日/1粒', '台灣', '2年', '詳見包裝', '2021-08-05 09:10:10'),
(6, '順暢酵素益生菌粉包', 1, './img/products(6).jpeg', '腸胃', '菊糖、海水濃縮物、乳糖、乳糖醇(甜味劑)、蔗糖、綜合酵素蛋白質分解酵素4.5、轉化酵素、蛋白質分解酵素3.0、中性蛋白質分解酵素、鳳梨酵素', '大研生醫', '2g * 22', 980, '暫無', '1日/1包', '台灣', '2年', '詳見包裝', '2021-08-05 09:10:10'),
(7, '維他命C緩釋膜衣錠', 1, './img/products(7).jpeg', '身體', '維生素C 97%(維生素C、玉米澱粉)、羥丙基甲基纖維素、微結晶狀α-纖維素、硬脂酸鎂、聚乙二醇99.99%複方食品添加物', '大研生醫', '60 PC', 580, '459', '1日/1錠', '台灣', '3年', '詳見包裝', '2021-08-05 09:10:10'),
(8, 'Raw Microbiome Ultimate Shelf 頂級純天然加強免疫力益生菌 - 30粒膠囊', 1, './img/products(8).jpeg', '腸胃', 'ISS Bif?乳酸雙歧桿菌、嗜酸乳酸桿菌、副乾酪乳酸桿菌、長雙歧桿菌、嗜酸乳酸桿菌、短乳酸桿菌', 'Garden of Life', '30 PC', 1299, '暫無', '1日/1粒', '美國', '2年', '詳見包裝', '2021-08-05 09:10:10'),
(9, 'Vitamin Code Family 全家綜合維他命 - 120粒膠囊', 1, './img/products(9).jpeg', '身體', '脂肪?、 蛋白?, 酸性蛋白?、β-葡萄糖?、 纖維素?、鳳梨?、植酸?、乳糖、木瓜蛋白、果膠、半纖維素、木聚糖', 'Garden of Life', '120  PC', 1405, '1199', '1日/2粒', '美國', '2年', '詳見包裝', '2021-08-05 09:10:10'),
(10, '物性蛋白質能量棒-花生奶油巧克力軟-12枚入', 1, './img/products(10).jpeg', '身體', ' 有機花生、有機豌豆蛋白質、有機蔬菜甘油、有機豌豆脆片、有機雪蓮果糖漿（根）、有機發芽糙米蛋白質', 'Garden of Life', '12 PC', 1205, '暫無', '1日/1~2粒', '美國', '2年', '詳見包裝', '2021-08-05 09:10:10'),
(11, 'Keto Fit Vanilla生酮塑身香草粉365g', 1, './img/products(11).jpeg', '身體', '有機草食奶油、有機草食脫脂牛奶、有機香草香料、海鹽、有機甜菊萃取物（葉）', 'Garden of Life', '365g', 1560, '暫無', '將2匙加入295毫升的水中（附量匙）', '美國', '2年', '詳見包裝', '2021-08-05 09:10:10'),
(12, '【正甘能】健字號正甘能膠囊-60粒/盒(冬蟲夏草 護肝認證 健字號 肝)', 1, './img/products(12).jpeg', '身體', '冬蟲夏草', '杰濂', ' 60 PC', 3240, '暫無', '1日/6粒', '台灣', '90日', '詳見包裝', '2021-08-05 09:10:10'),
(13, 'California Gold Nutrition, 維生素 D3，125 微克（5,000 國際單位），360 粒魚明膠軟凝膠', 1, './img/products(13).jpeg', '骨骼', '維生素 D、Non-GMO 紅花油、軟凝膠膠囊', 'California Gold Nutrition', '360 PC', 272, '暫無', '1日/1粒', '美國', '2年', '詳見包裝', '2021-08-05 09:10:10'),
(14, 'California Gold Nutrition, 歐米伽-3，優質魚油，100 粒魚明膠軟凝膠', 1, './img/products(14).jpeg', '血液', '魚明膠軟凝膠、生育酚乙酸酯', 'California Gold Nutrition', ' 100 PC', 203, '暫無', '1日/2粒', '美國', '2年', '詳見包裝', '2021-08-05 09:10:10'),
(15, 'Now Foods, 優效維生素 D3 軟凝膠，125 微克（5000 國際單位），120 粒裝', 1, './img/products(15).jpeg', '身體', '維生素 D3、軟凝膠、高級初榨橄欖油', 'Now Foods', '120 PC', 169, '暫無', '2日/1粒', '美國', '2年', '詳見包裝', '2021-08-05 09:10:10'),
(16, 'California Gold Nutrition, CollagenUp，海洋水解膠原蛋白 + 透明質酸 + 維生素 C，原味，7.26 盎司（206 克', 1, './img/products(16).jpeg', '身體', '水解海洋膠原蛋白、維生素 C、透明質酸', 'California Gold Nutrition', '206g', 494, '暫無', '1日/5.16g', '美國', '2年', '詳見包裝', '2021-08-05 09:10:10'),
(17, 'Life Extension, 每日兩粒多維生素，120 粒膠囊', 1, './img/products(17).jpeg', '身體', '維生素 D、維生素 C、維生素 E、磷脂複合物、α-硫辛酸、芹菜素', 'Life Extension', '120 PC', 523, '暫無', '1日/2粒', '美國', '2年', '詳見包裝', '2021-08-05 09:10:10'),
(18, '【保健食品】桂格完膳營養素均衡營養', 1, './img/products(18).jpeg', '身體', '乾酪素鈣、乾酪素鈉、檸檬酸鉀、維生素預混粉、維生素D3、維生素K1、維生素B2', '桂格', '250ml * 24', 1250, '暫無', '1日/1罐', '台灣', '299日', '詳見包裝', '2021-08-05 09:10:10'),
(19, '三多金盞花葉黃素複方-100PC粒', 1, './img/products(19).jpeg', '眼睛', '葉黃素酯30mg、玉米黃素酯1.2mg、魚油、鋅、硒、維生素A、維生素C、維生素E', '三多', '100 PC', 350, '290', '1日/1粒', '台灣', '2年', '詳見包裝', '2021-08-05 09:10:10'),
(20, '亞培安素-香草少甜-237mlx24', 1, './img/products(20).jpeg', '身體', '水、麥芽糊精、濃縮牛奶蛋白、糖、果寡醣、大豆油、分離黃豆蛋白、礦物質', '亞培', '237ml * 24', 1349, '暫無', '1日/1粒', '美國', '269日', '詳見包裝', '2021-08-05 09:10:10'),
(21, '綜合鈣+D3', 1, './img/products(21).jpeg', '骨骼', '檸檬酸鈣、麥芽糊精、紅藻粉、蔗糖、檸檬果汁粉、氧化鎂、赤藻糖醇', '大研生醫', '2g * 24', 520, '暫無', '1日/1包', '台灣', '3年', '詳見包裝', '2021-08-05 09:10:10'),
(22, '愛爾蘭天然萃取高比例海藻鈣+海洋鎂+維生素D+K2', 1, './img/products(22).jpeg', '骨骼', '天然萃取海藻鈣、玉米可溶性纖維、海水濃縮物(含鎂)、啤酒酵母粉', 'Vitabox', '30 PC', 350, '暫無', '1日/2~4粒', '台灣', '2年', '詳見包裝', '2021-08-05 09:10:10'),
(23, 'BHKs 胺基酸螯合鈣錠', 1, './img/products(23).jpeg', '骨骼', ' 胺基酸螯合鈣、維生素C、硬脂酸鎂、海洋深層水萃取物、維生素D', '帝力', '60 PC', 490, '暫無', '1日/1粒', '台灣', '3年', '詳見包裝', '2021-08-05 09:10:10'),
(24, '鎂鈣錠', 1, './img/products(24).jpeg', '骨骼', '碳酸鈣、氧化鎂、維他命D3', ' 你滋美得', '90 PC', 580, '暫無', '1日/1~3錠', '美國', '3年', '詳見包裝', '2021-08-05 09:10:10'),
(26, '【挺立】鈣迷你錠', 1, './img/products(25).jpeg', '骨骼', '碳酸鈣95%(碳酸鈣、麥芽糊精)、微結晶狀纖維素、氧化鎂、聚乙烯醇、氧化鋅、交聯羧甲基纖維素鈉、二氧化鈦、聚乙二醇', '輝瑞', '36 PC', 249, '暫無', '1日/1粒', '台灣', '2年', '詳見包裝', '2021-08-05 09:10:10'),
(27, 'AA鈣杏懋 藤田鈣液劑', 1, './img/products(26).jpeg', '骨骼', '天然鈣（AA Ca）、葡萄糖酸鈣、乳酸鈣、葡萄糖乳酸鈣、酪蛋白磷酸胜 、維生素C', '杏懋', '750ml', 1400, '1290', '1日/1~2杯', '台灣', '2年', '詳見包裝', '2021-08-05 09:10:10'),
(28, '【LAC利維喜】Full-Cal優鎂鈣', 1, './img/products(27).jpeg', '骨骼', '鈣、鎂、維生素D、維生素C、維生素E、膠原蛋白、果寡糖', '傲旎', '60 包', 1353, '暫無', '1日/1包', '台灣', '2年', '詳見包裝', '2021-08-05 09:10:10'),
(29, '【Move Free 益節】葡萄糖胺+軟骨素+MSM+維生素D+鈣錠', 1, './img/products(28).jpeg', '骨骼', '磷酸氫鈣、葡萄糖胺鹽酸鹽、甲基硫醯基甲烷(MSM)、硫酸軟骨素鈉鹽(豬來源)、聚乙烯聚吡咯烷酮、微晶纖維素、硬脂酸鎂、羥丙基甲基纖維素', '利潔時', '240 PC', 1429, '暫無', '1日/4錠', '美國', '2年', '詳見包裝', '2021-08-05 09:10:10'),
(30, '視易適葉黃素', 1, './img/products(29).jpeg', '眼睛', '亞麻仁油、葉黃素[含紅花籽油、金盞花萃取物(含葉黃素)、生育醇(抗氧化劑)]、山桑子萃取物(含山桑子萃取物、麥芽糊精)', '大研生醫', '30  PC', 800, '暫無', '1日/1粒', '台灣', '3年', '詳見包裝', '2021-08-05 09:10:10'),
(31, 'BHK\'s 藍莓山桑子 素食膠囊', 1, './img/products(30).jpeg', '眼睛', '歐洲藍莓萃取物(山桑子)、專利葡萄籽萃取物', '帝力', '60 PC', 1290, '1099', '1日/1粒', '台灣', '3年', '詳見包裝', '2021-08-05 09:10:10'),
(32, 'iVENOR 愛睛明Plus高濃度雙效葉黃素膠囊', 1, './img/products(31).jpeg', '眼睛', '麥芽糊精、木鱉果、金盞花萃取物(含葉黃素)、紅葡萄葉萃取、黑大豆種皮萃取、紫米萃取、流行鏈球菌', '宏睿', '30 PC', 704, '暫無', '1日/1粒', '台灣', '2年', '詳見包裝', '2021-08-05 09:10:10'),
(33, 'Now Foods, 葉黃素，雙重強度', 1, './img/products(32).jpeg', '眼睛', '葉黃素、纖維素（膠囊）、硬脂酸（植物源）、甜菜粉、抗壞血酸棕櫚酸酯', 'Now Foods', '90 PC', 489, '暫無', '1日/1粒', '美國', '2年', '詳見包裝', '2021-08-05 09:10:10'),
(34, '五彩葉黃素', 1, './img/products(33).jpeg', '眼睛', '酵母鋅、金盞花萃取物、紅藻萃取物、維生素E、山桑子萃取、微藻DHA、黑大豆種皮萃取物、流行鍊球菌發酵物', 'Aicom', '60 PC', 750, '680', '1日/2粒', '台灣', '3年', '詳見包裝', '2021-08-05 09:10:10'),
(35, '日本味王高濃度芝麻DHA好眠組', 1, './img/products(34).jpeg', '睡眠', '魚油、色胺酸、小麥胚芽油、芝麻萃取物(含小分子芝麻精華；芝麻萃取物、糊精)、紅藻粉(含海藻鈣)、雷公根萃取物(雷公根萃取物、麥芽糊精)', '東阪', '30 PC', 699, '暫無', '1日/1粒', '台灣', '3年', '詳見包裝', '2021-08-05 09:10:10'),
(36, 'WEDAR 夜眠芝麻E 舒壓好眠', 1, './img/products(35).jpeg', '睡眠', '綜合消化酵素n.zimesR (麥芽糊精、澱粉酵素、植酸酵素、糖化酵素、複合酵素（含脂解酵素、蛋白酵素、澱粉酵素、麥芽糊精）、中性蛋白酵素', '崴達', '30 PC', 300, '暫無', '1日/1粒', '台灣', '2年', '詳見包裝', '2021-08-05 09:10:10'),
(37, '船井 burner倍熱 夜孅胺基酸EX PLUS', 1, './img/products(36).jpeg', '睡眠', '乳糖、天堂教椒籽取物、苦瓜、微結晶纖維、天麻、綜合胺基酸', '船井burner', '40 PC', 899, '暫無', '1日/2粒', '台灣', '3年', '詳見包裝', '2021-08-05 09:10:10'),
(38, '益植酵【睡著酵代謝夜酵素】', 1, './img/products(37).jpeg', '睡眠', '枳椇子萃取物、氧化鎂、濃縮乳清蛋白(含18種胺基酸)、維生素C、綜合消化酵素(木瓜酵素、蛋白酵素、脂肪分解酵素', '易珈', '30 PC', 430, '暫無', '1日/1粒', '台灣', '2年', '詳見包裝', '2021-08-05 09:10:10'),
(39, 'Angel LaLa 天使娜拉_毎日の眠', 1, './img/products(38).jpeg', '睡眠', 'L-色胺酸、專利麩胺酸發酵物粉【氧化澱粉、麩胺酸發酵物(含GABA)】 、英國專利紅海藻粉(含紅藻鈣鎂)、γ-穀維素、芝麻萃取物(含芝麻素90%)', ' Angel LaLa', '30 PC', 450, '390', '1日/3粒', '台灣', '3年', '詳見包裝', '2021-08-05 09:10:10'),
(40, 'BHK’s 夜萃EX 素食膠囊', 1, './img/products(39).jpeg', '睡眠', '色胺酸、酸棗仁萃取物、日本專利米胚芽萃取物(含γ-胺基丁酸)、日本γ-穀維素、芝麻萃取物', '帝力', '60 PC', 1190, '999', '1日/1粒', '台灣', '3年', '詳見包裝', '2021-08-05 09:10:10'),
(41, '【得意人生】日本原料進口GABA膠囊', 1, './img/products(40).jpeg', '睡眠', '酸棗仁、發芽米胚芽抽出物、色胺酸、維他命B群', '力而美', '40 PC', 699, '暫無', '1日/1粒', '台灣', '4年', '詳見包裝', '2021-08-05 09:10:10'),
(42, 'CHiC 玻尿酸芝麻E ', 1, './img/products(41).jpeg', '睡眠', '麥芽糊精、微結晶狀α-纖維素、芝麻素抽出物[D-山梨醇(甜味劑)、芝麻抽出物(含芝麻素)]、維生素E[乙酸dl-α生育醇酯(維生素E)、麥芽糊精', '崴峰', '30 PC', 400, '暫無', '1日/1粒', '台灣', '3年', '詳見包裝', '2021-08-05 09:10:10'),
(43, '善存科技 N95醫用口罩 (5入/單包)', 2, './img/products(42).jpeg', '臉部', 'PP不織布、特殊不織布支撐材、防護濾網、高防護奈米科技濾網、複合超柔軟親膚層', '善存', '5 PC', 400, '暫無', '詳見包裝', '台灣', '5年', '詳見包裝', '2021-08-05 09:10:10'),
(44, '中衛 醫療口罩-青蘋綠 (50片/盒)', 2, './img/products(43).jpeg', '臉部', '聚丙烯不織布PP, 溶噴不織布(Melt-blown)', '中國衛生材料生產中心', '50 PC', 300, '暫無', '詳見包裝', '台灣', '5年', '詳見包裝', '2021-08-05 09:10:10'),
(45, '中衛 醫療口罩-薰衣紫 (5入/包，共3包)', 2, './img/products(44).jpeg', '臉部', '聚丙烯不織布PP, 溶噴不織布(Melt-blown)', '中國衛生材料生產中心', '5 PC / 1盒', 210, '暫無', '詳見包裝', '台灣', '5年', '詳見包裝', '2021-08-05 09:10:10'),
(46, '蘇菲 極淨肌 天然原生棉 夜用 29cm (12片/包)', 2, './img/products(45).jpeg', '其他', '棉柔', '蘇菲', '12 PC', 69, '暫無', '詳見包裝', '台灣', '3年', '詳見包裝', '2021-08-05 09:10:10'),
(47, '蘇菲 超熟睡 草本抑菌衛生棉 28cm (10片/單包)', 2, './img/products(46).jpeg', '其他', '棉柔', '蘇菲', '10 PC', 69, '暫無', '詳見包裝', '台灣', '5年', '詳見包裝', '2021-08-05 09:10:10'),
(48, '上純 抽取式衛生紙 (100抽/10包/8串/箱，共80包)', 2, './img/products(47).jpeg', '皮膚', '100%原生紙漿製造、不添加瑩光劑', '上純', '100~110 PC * 10 * 8', 1280, '999', '詳見包裝', '台灣', '5年', '詳見包裝', '2021-08-05 09:10:10'),
(49, 'Kleenex 舒潔 頂級三層舒適竹萃抽取衛生紙 (90抽/6包/8串/箱)', 2, './img/products(48).jpeg', '皮膚', '不織布、棉狀紙漿、高分子吸收體', '舒潔', '90 PC * 6 * 8', 1272, '暫無', '詳見包裝', '台灣', '5年', '詳見包裝', '2021-08-05 09:10:10'),
(50, 'AQUA 水 - 濕式衛生紙 - 抑菌型 - 48抽(36包/乙箱)', 2, './img/products(49).jpeg', '皮膚', '植物纖維', 'AQUA', '48 PC * 36', 1450, '1290', '詳見包裝', '中國', '5年', '詳見包裝', '2021-08-05 09:10:10'),
(51, 'OK繃彈性伸縮一般型 20入/單盒', 2, './img/products(50).jpeg', '皮膚', '彈性布料，不織布墊片', '威尼斯藥廠', '20 PC', 69, '暫無', '詳見包裝', '台灣', '5年', '詳見包裝', '2021-08-05 09:10:10'),
(52, 'TOCARE 防水透氣OK繃 (15入/單盒)', 2, './img/products(51).jpeg', '皮膚', 'Latex-Free、Hypoallergenic adhesive、Polyurethane Film 防水膜、不織布墊片', '和豐', '15 PC', 69, '暫無', '詳見包裝', '台灣', '5年', '詳見包裝', '2021-08-05 09:10:10'),
(53, '克司博 75%酒精液 (500ml/瓶)乙類成藥', 2, './img/products(52).jpeg', '皮膚', 'ALCOHOL 95% ( EQ TO ETHANOL 95%)', '醫強科技', '500ml', 80, '暫無', '詳見包裝', '台灣', '5年', '詳見包裝', '2021-08-05 09:10:10'),
(54, '奈森克林 粗軸棉棒 (200支，單包) 棉花棒', 2, './img/products(53).jpeg', '皮膚', '棉、竹籤', '奈森克林', '200 PC', 22, '暫無', '詳見包裝', '台灣', '5年', '詳見包裝', '2021-08-05 09:55:26'),
(55, '黑人 清新綠茶漱口水 無酒精配方 (500ml/瓶)', 2, './img/products(54).jpeg', '口腔', '石炭酸、百里酚，桉樹腦，苯扎氯銨，西吡氯銨，尼泊金甲酯，過氧化氫，度美芬', '黑人', '500ml', 225, '暫無', '詳見包裝', '台灣', '2.5年', '詳見包裝', '2021-08-05 09:55:54'),
(56, '舒酸定 深層潔淨抗敏纖柔毛牙刷 (3入組)', 2, './img/products(55).jpeg', '口腔', '塑膠', '舒酸定', '3 PC', 115, '暫無', '詳見包裝', '中國', '5年', '詳見包裝', '2021-08-05 09:56:23'),
(57, '舒酸定 牙齦護理抗敏軟毛牙刷 (3入/組)', 2, './img/products(56).jpeg', '口腔', '塑膠', '舒酸定', '3 PC', 115, '85', '詳見包裝', '台灣', '5年', '詳見包裝', '2021-08-05 09:56:50'),
(58, '黑人 全亮白極緻酵素清新薄荷牙膏 (120g/條)', 2, './img/products(57).jpeg', '口腔', '山梨醣醇、水、 水合矽石、硫酸月桂酸鈉、烷基硫酸鹽、月桂醯醚硫酸鈉', '黑人', '120g', 132, '暫無', '詳見包裝', '中國', '2.5年', '詳見包裝', '2021-08-05 09:57:18'),
(59, '快潔適 抗菌洗手乳-山茶花香 (300ml/瓶)', 2, './img/products(58).jpeg', '手', 'WATER、SODIUM、LAURETH、SULFATE、COCAMIDOPROPYL、BETAINE、SODIUM、CHLORIDE', '銀泰佶', '300ml', 59, '暫無', '詳見包裝', '台灣', '3年', '詳見包裝', '2021-08-05 09:57:44'),
(60, 'Dove 多芬 乳霜香皂-清爽水嫩 (135g/個，共3個)', 2, './img/products(59).jpeg', '身體', '橄欖油、氫氧化鈉、水、天然植物精油、亞麻油酸、次亞麻油酸', '多芬', ' 135g * 3', 180, '暫無', '詳見包裝', '德國', '3年', '詳見包裝', '2021-08-05 09:58:09'),
(61, '日本 SARAYA 神隊友除菌噴霧 (400ml/瓶)', 2, './img/products(60).jpeg', '皮膚', '乙醇、脂肪酸甘油酯、檸檬酸、檸檬酸鈉、甘油', 'SARAYA', '400g', 255, '219', '詳見包裝', '日本', '3年', '詳見包裝', '2021-08-05 09:58:34'),
(62, 'MISS PINK 薰衣草淨手噴霧 (100ml/單罐)', 2, './img/products(61).jpeg', '手', '繖花醇、CHG、葡聚糖、維生素B5、精油、酒精、精製水', '杏一', '100ml', 510, '暫無', '詳見包裝', '台灣', '3年', '詳見包裝', '2021-08-05 09:59:01'),
(63, '台塑洗寶環保洗潔精-拉拔頭(1000ml/瓶)', 2, './img/products(62).jpeg', '其他', '十二烷基苯磺酸、月桂醇醚硫酸鈉、聚氧乙烯月桂醇醚、氯化鈉、氫氧化鈉、甲基纖維素、對羥基苯甲酸丙酯、檸檬香精', '台塑', '1000ml', 75, '暫無', '詳見包裝', '台灣', '3年', '詳見包裝', '2021-08-05 09:59:28'),
(64, '五月花 厚棒廚房紙巾(60組x4捲x4袋/箱)', 2, './img/products(63).jpeg', '皮膚', '100%原生紙漿', '永豐餘', '60 PC * 4 * 4', 559, '489', '詳見包裝', '台灣', '5年', '詳見包裝', '2021-08-05 09:59:54'),
(65, '得意 廚房紙巾(70組x6捲x3串)', 2, './img/products(64).jpeg', '皮膚', '100%原生紙漿', '得意', '70 PC * 6 * 3', 265, '暫無', '詳見包裝', '台灣', '5年', '詳見包裝', '2021-08-05 10:00:37'),
(66, '春風 一秒抽抽取式廚房紙巾(120抽x3包x8串/箱)', 2, './img/products(65).jpeg', '皮膚', '100%原生紙漿', '春風', '120 PC * 3 * 8', 620, '570', '詳見包裝', '台灣', '5年', '詳見包裝', '2021-08-05 10:01:22'),
(67, '沙威隆 清爽潔膚抗 菌濕巾-10抽4包入', 2, './img/products(66).jpeg', '皮膚', '水針布、RO純水、Alcohol(食用級酒 精) 、Chlorhexidine Digluconate(氯己定) 、Silver(銀離子)', '沙威隆', '10 PC * 4', 79, '暫無', '詳見包裝', '中國', '3年', '詳見包裝', '2021-08-05 10:01:48'),
(68, '拭拭樂 天然保濕嬰兒濕紙巾-90抽', 2, './img/products(67).jpeg', '皮膚', '水針布、RO純水、Alcohol(食用級酒 精) 、Chlorhexidine Digluconate(氯己定) 、Silver(銀離子)', '拭拭樂', '90 PC', 49, '暫無', '詳見包裝', '台灣', '3年', '詳見包裝', '2021-08-05 10:02:56'),
(69, '【澎澎MAN】速爽2in1 洗髮沐浴露-海洋保濕型-650g', 2, './img/products(68).jpeg', '頭部', '表面活性劑、聚二甲基矽氧烷、調節劑、維生素、植物提取物、保濕劑、香精', '澎澎MAN', '650g ', 159, '119', '詳見包裝', '台灣', '5年', '詳見包裝', '2021-08-05 10:04:06'),
(70, '曼秀雷敦 男士冰振活炭潔面乳150ml', 2, './img/products(69).jpeg', '臉部', 'Palmitic Acid 棕櫚酸,、6酸、十六酸、Butylene Glycol 丁二醇、丙三醇、氯化鉀、Glycerin 甘油', '曼秀雷敦', '150ml', 129, '99', '詳見包裝', '台灣', '5年', '詳見包裝', '2021-08-05 10:04:31'),
(71, '綠的藥皂80g', 2, './img/products(70).jpeg', '身體', 'DIPHENHYDRAMINE HCL、TRICLOSAN (EQ TO IRGASAN DP-300) (EQ TO TRICHLOROHYDROXYDIPHENYL ETHER)', '中化製藥', '80g', 25, '暫無', '詳見包裝', '台灣', '5年', '詳見包裝', '2021-08-05 10:04:57'),
(72, '《白博士》抗菌洗手乳-500ml', 2, './img/products(71).jpeg', '手', '聚季銨鹽-7、聚山梨醇酯80、Antiseptic、Chlorhexidine gluconate、烷基聚葡萄糖苷', '白博士', '500ml', 75, '暫無', '詳見包裝', '台灣', '5年', '詳見包裝', '2021-08-05 10:05:24'),
(73, '滴露Dettol 經典香皂', 2, './img/products(72).jpeg', '身體', '水楊酸/ 蘆薈萃取/ 維他命E、苯扎氯銨、苄索氯銨和氯二甲苯酚', 'Dettol', '100g', 35, '暫無', '詳見包裝', '台灣', '5年', '詳見包裝', '2021-08-05 10:05:52'),
(74, '淨覺茶 天然茶籽植萃純淨洗手露350ml', 2, './img/products(73).jpeg', '手', '純水、天然茶籽酵素、佛手柑菁華、香橙菁華、萊姆菁華、山茶花油、橄欖油', '淨覺茶', '350ml', 230, '189', '詳見包裝', '台灣', '3年', '詳見包裝', '2021-08-05 10:06:14'),
(75, '菲那絲健髮洗髮精-控油抗屑配方', 2, './img/products(74).jpeg', '頭部', '弗來歇氏柳葉菜萃取、溝鹿角菜萃取、掌狀海帶萃取、糖海帶萃取、乙醯基四肽-3、紅苜蓿、紅車軸草花萃取', '中化製藥', '350ml', 150, '129', '詳見包裝', '台灣', '3年', '詳見包裝', '2021-08-05 10:06:38'),
(76, '香水能量洗髮露 白麝香-510g', 2, './img/products(75).jpeg', '頭部', '水、月桂醇聚醚硫酸酯鈉鹽、椰油基、椰油醯胺、聚乙二醇-7、苯氧乙醇、水解植物蛋白', '耐斯', '510ml', 130, '暫無', '詳見包裝', '台灣', '5年', '詳見包裝', '2021-08-05 10:07:02'),
(77, '日本SHISEIDO 乾洗洗髮劑150ml', 2, './img/products(76).jpeg', '頭部', '石油氣推進劑、米澱粉、酒精、植萃、沈香淳', '資生堂', '150ml', 299, '暫無', '詳見包裝', '日本', '5年', '詳見包裝', '2021-08-05 10:07:25'),
(78, '李施德霖 薄荷漱口水750ml', 2, './img/products(77).jpeg', '口腔', '水、山梨醣醇、安息香酸、糖精鈉、桉樹腦、乙醇', 'Lambert Pharmaceutical Co.', '750ml', 189, '暫無', '詳見包裝', '美國', '3年', '詳見包裝', '2021-08-05 10:07:55'),
(79, '李施德霖  天然綠茶防蛀護齦漱口水750ml', 2, './img/products(78).jpeg', '口腔', '水、山梨醣醇、安息香酸、糖精鈉、桉樹腦、乙醇', 'Lambert Pharmaceutical Co.', '750ml', 190, '149', '詳見包裝', '美國', '4年', '詳見包裝', '2021-08-05 10:09:34'),
(80, '歐樂B-牙齦專護牙膏120g', 2, './img/products(79).jpeg', '口腔', '氟化納', '歐樂B', '120g', 135, '暫無', '詳見包裝', '中國', '3年', '詳見包裝', '2021-08-05 10:09:58'),
(81, '【舒酸定 長效抗敏-牙齦護理 粉紅】給牙齦健康防護-抗敏牙膏 160g', 2, './img/products(80).jpeg', '口腔', '氯化鉀、檸檬酸鋅、氟化鈉、純水、山梨醣醇、甘油', '舒酸定', '160g', 179, '暫無', '詳見包裝', '泰國', '3年', '詳見包裝', '2021-08-05 10:10:21'),
(82, '無蠟牙線50公尺-2入', 2, './img/products(81).jpeg', '口腔', '尼龍、保麗棉', '歐樂B', '4g * 2', 99, '暫無', '詳見包裝', '愛爾蘭', '5年', '詳見包裝', '2021-08-05 10:10:51'),
(83, '單束毛牙間刷', 2, './img/products(82).jpeg', '口腔', '尼龍、塑膠', '歐樂B', '15g', 69, '暫無', '詳見包裝', '墨西哥', '10年', '詳見包裝', '2021-08-05 10:11:14'),
(84, '錐形調整手杖', 3, './img/products(83).jpeg', '足', '塑膠、鋁合金', '光星', '主體管徑 : 2.02cm 高度:76 ~ 99cm', 450, '暫無', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 10:11:44'),
(85, '經典摺疊手杖', 3, './img/products(84).jpeg', '足', '塑膠、鋁合金', '光星', '主體管徑 : 2.22cm 高度:79 ~ 99cm', 450, '暫無', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 10:13:47'),
(86, '高底座四點手杖', 3, './img/products(85).jpeg', '足', 'TPR、鋁合金', '光星', '主體管徑 : 2.22cm 底座長寬 : 20cm * 31cm 高度:79 ~ 90cm', 800, '暫無', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 10:14:11'),
(87, '腋下拐杖 ', 3, './img/products(86).jpeg', '足', 'TPR、鋁合金', '光星', '主體管徑 : 19mm 高度:135 ~ 155cm 產品重量 : 0.95 kg 最大荷重 : 120 kg', 400, '暫無', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 10:14:34'),
(88, '兩階式助行器', 3, './img/products(87).jpeg', '足', '合成橡膠、鋁合金', '光星', '主體管徑 : 2.54cm 高度:79 ~ 97cm', 1400, '暫無', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 10:15:53'),
(89, '搖擺型助行器', 3, './img/products(88).jpeg', '足', '合成橡膠、鋁合金', '光星', '主體管徑 : 2.22cm 高度:74 ~ 84cm', 1400, '暫無', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 10:16:15'),
(90, '輕便介護型輪椅', 3, './img/products(89).jpeg', '足', '合成橡膠、鋁合金', '光星', '車體全寬 : 58cm 車體全長 : 103cm 車體全高 : 96cm 全車重 : 13.4kg 最大荷重 : 100kg', 7000, '暫無', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 10:16:41'),
(91, 'AS-RF調整型手動輪椅', 3, './img/products(90).jpeg', '足', '合成橡膠、鋁合金', '光星', '車體 : AS-RF 77 度 / AS-RF 77 度 內凹 / AS-RF 82 度 內凹 座寬: 28~48cm / 30~50cm / 32~52cm / 34~44cm 座高: 42.5cm ~ 51.25cm 最大荷重 : 125kg', 23300, '21999', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 10:17:31'),
(92, '收合式助步車', 3, './img/products(91).jpeg', '足', '高張力座墊、鋁合金', '光星', '全車寬 : 63cm 全車長 : 67cm 車重 : 6.5kg 最大荷重 : 150kg', 4250, '暫無', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 10:17:54'),
(93, '背靠式洗澡椅', 3, './img/products(92).jpeg', '足', 'PE 真空成型、鋁合金', '光星', '座寬 / 座深 : 50 / 28.5cm 座高調整 : 33 ~ 43cm 最大荷重 : 100kg', 1400, '暫無', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 11:03:18'),
(94, '舒適收合型馬桶椅', 3, './img/products(93).jpeg', '足', '泡棉、塑鋼板', '光星', '座寬 / 座深 : 40 / 40cm 座高調整 : 44.5 ~ 53cm 最大荷重 : 80kg', 2800, '暫無', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 11:04:06'),
(95, '兒童早療推車', 3, './img/products(94).jpeg', '足', '結構用鋼材、鋁合金', '光星', '車體全寬：68cm 車體全長：92cm 最大荷重：50kg', 78750, '暫無', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 11:04:31'),
(96, '溝槽洗臀椅', 3, './img/products(95).jpeg', '足', ' EVA 座背軟墊、鋁合金', '光星', '長度 : 54.5 cm 寬度: : 49 cm 高度 : 67~82 cm 最大荷重 : 100 kg 產品重量 : 5.2 kg', 11500, '暫無', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 11:04:50'),
(97, '附輪洗澡馬桶椅', 3, './img/products(96).jpeg', '足', 'PE 塑膠座墊、鋁合金', '光星', '車體全寬 : 58cm 車體全長 : 92.5cm 車體全高 : 96cm 全車重 : 12.5kg 最大荷重 : 120kg', 7500, '暫無', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 11:05:12'),
(98, '歐式馬桶增高座', 3, './img/products(97).jpeg', '足', '塑膠、鐵', '光星', '座寬 / 座深 : 36cm / 40cm 座高調整 : 8cm / 12cm / 16cm 最大荷重 : 120kg', 2500, '暫無', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 11:05:33'),
(99, '標準型馬桶增高座', 3, './img/products(98).jpeg', '足', '塑膠、鋁合金', '光星', '座寬 / 座深 : 40cm / 42cm 座高調整 : 15~22.5cm 最大荷重 : 100kg', 850, '暫無', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 11:05:54'),
(100, '收合型電動輪椅', 3, './img/products(99).jpeg', '足', 'PE 塑膠座墊、鋁合金', '光星', '車體全寬 : 座寬 + 22cm 車體全長 : 107cm 車體全高 : 89 / 92 / 95cm 全車重 : 42.4kg 最大荷重 : 125kg', 62500, '暫無', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 11:06:20'),
(101, '亞適AirSep氧氣濃縮機', 3, './img/products(100).jpeg', '肺', '塑膠管、精密儀器', 'AirSep Corporation', '長度 : 36.8 cm 寬度 : 40.0 cm 高度 : 72.4 cm 重量:24.5 kg', 42000, '暫無', '詳見包裝與說明書', '美國', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 11:06:40'),
(102, '歐姆龍隧道式血壓計', 3, './img/products(101).jpeg', '血液', '軟織布、彈簧、精密儀器', 'OMRON', '寬度 : 19.1 cm 高度 : 8.5 cm 縱深度 : 12 cm 重量: 約460g', 4280, '暫無', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 11:07:01'),
(103, '羅氏優勝血糖機試紙', 3, './img/products(102).jpeg', '血液', '碳', '羅氏優勝', '50 PC', 900, '暫無', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 11:07:29'),
(104, '德國博依beurer電熱毯-單人床墊組', 3, './img/products(103).jpeg', '身體', 'Fleece 人造纖維', '博依beurer', '長度 : 150 cm 寬度 : 800 cm', 2680, '2299', '詳見包裝與說明書', '德國', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 11:07:51'),
(105, '坐臥電動護理病床', 3, './img/products(104).jpeg', '身體', '鋼製靜電粉體塗裝、溫馨高雅木製、低電壓直流靜音馬達', '耀宏', '長度 : 200 cm～220 cm 寬度 : 100 cm 高度 : 42～67 cm', 52000, '暫無', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 11:09:19'),
(106, '多功能移位護理椅', 3, './img/products(105).jpeg', '足', '鋁合金、防水坐墊', '耀宏', '長度 : 70cm 寬度 : 47cm 高度 : 94cm 總重：18kg 最大載重：120kg', 36000, '31999', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 11:09:51'),
(107, '不鏽鋼油壓升降沐浴床', 3, './img/products(106).jpeg', '身體', '不銹鋼、塑膠、靜電粉體塗裝', '耀宏', '長度 : 195cm 寬度 : 67cm 高度 : 53cm 最大載重：200kg', 16800, '暫無', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 11:10:14'),
(108, '簡易型運動腳踏車', 3, './img/products(107).jpeg', '足', '鋼製電鍍', '耀宏', '長度 : 49cm 寬度 : 40cm 高度 : 26cm', 1050, '暫無', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 11:10:47'),
(109, '折疊型運動腳踏車', 3, './img/products(108).jpeg', '足', '鋼製電鍍', '耀宏', '長度 : 64cm 寬度 : 28cm 高度 : 193cm', 1500, '暫無', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 11:11:10'),
(110, '頸部牽引架台', 3, './img/products(109).jpeg', '骨骼', '不鏽鋼', '耀宏', '長度 : 46cm 寬度 : 39cm 高度 : 29cm', 4500, '暫無', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 11:11:34'),
(111, '拉伸架', 3, './img/products(110).jpeg', '骨骼', '鐵製烤漆、不鏽鋼', '耀宏', '長度 : 88cm 寬度 : 80cm 高度 : 148~199cm', 8000, '6899', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 11:11:56'),
(112, '懸吊架', 3, './img/products(111).jpeg', '骨骼', '不鏽鋼', '耀宏', '長度 : 60cm 高度 : 90~150cm', 5000, '4399', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 11:12:17'),
(113, '手拉架', 3, './img/products(112).jpeg', '骨骼', '不鏽鋼、塑膠', '耀宏', '長度 : 40cm 寬度 : 30cm 高度 : 60~110cm', 900, '暫無', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 11:12:47'),
(114, '吊頸器', 3, './img/products(113).jpeg', '骨骼', '不鏽鋼、塑膠', '耀宏', '長度 : 40cm 寬度 : 25cm 高度 : 60~110cm', 1100, '暫無', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 11:13:11'),
(115, '輪椅二截式點滴架', 3, './img/products(114).jpeg', '其他', '鋼製電鍍', '耀宏', '長度 : 40cm 寬度 : 20cm 高度 : 80~110cm', 1200, '1099', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 11:13:30'),
(116, '熱敷墊(袋)', 3, './img/products(115).jpeg', '其他', '棉麻', '耀宏', '長度 : 29cm 寬度 : 12cm', 800, '暫無', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 11:13:50'),
(117, '沙袋', 3, './img/products(116).jpeg', '其他', '棉麻、沙石', '耀宏', '長度 : 30.4cm 寬度 : 25cm 重量 : 1kg', 560, '暫無', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 11:14:11'),
(118, '德國美締強化護腰帶', 3, './img/products(117).jpeg', '骨骼', '尼龍、聚酯纖維、彈性纖維、壓克力纖維、聚氨酯發泡材', '美締', '68~90cm', 6580, '5800', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 11:14:36'),
(119, 'ProSkin加強型護膝束套', 3, './img/products(118).jpeg', '骨骼', '尼龍、聚酯纖維、彈性纖維、壓克力纖維、聚氨酯發泡材', 'proskin', '38.1~50.8cm', 750, '暫無', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 11:14:57'),
(120, 'ProSkin彈性網狀束腹帶', 3, './img/products(119).jpeg', '骨骼', '尼龍、聚酯纖維、彈性纖維、壓克力纖維、聚氨酯發泡材', 'proskin', '68~90cm', 1380, '1200', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 11:15:21'),
(121, 'ProSkin肩關節護套', 3, './img/products(120).jpeg', '骨骼', '尼龍、聚酯纖維、彈性纖維、壓克力纖維、聚氨酯發泡材', 'proskin', '手臂 : 20~33cm 下胸圍 : 75~110cm', 1200, '暫無', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 11:15:42'),
(122, '德國美締脊椎強化背架', 3, './img/products(121).jpeg', '骨骼', '尼龍、聚酯纖維、彈性纖維、壓克力纖維、聚氨酯發泡材', '美締', '66~86cm', 9800, '8500', '詳見包裝與說明書', '台灣', '詳見包裝與說明書', '詳見包裝與說明書', '2021-08-05 11:16:07');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `products`
--
ALTER TABLE `products`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品編號', AUTO_INCREMENT=125;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
