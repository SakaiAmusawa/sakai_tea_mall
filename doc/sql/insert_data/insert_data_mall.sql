-- 执行脚本提示：请在IntelliJ IDEA中打开此文件，确保已经创建数据库并配置Database面板，对此文件点击鼠标右键，选择“Run 文件名”，即可执行此脚本

-- 执行脚本提示：如果你将此脚本用于你的项目中，请将此脚本中所有本地图片的URL（例如此脚本中的http://localhost:19082开头的URL）换成你的附件管理服务器上的图片的URL

-- 商城相关数据表的测试数据

TRUNCATE mall_category;
INSERT INTO mall_category
VALUES (1, '茶叶', 0, 1, '茶叶,茶', 99, 'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg', 1, 1,
        1, '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (2, '绿茶', 1, 2, '茶叶,茶,绿茶', 89, 'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg',
        1, 0, 1, '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (3, '红茶', 1, 2, '茶叶,茶,红茶', 88, 'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg',
        1, 0, 1, '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (4, '花茶', 1, 2, '茶叶,茶,花茶', 87, 'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg',
        1, 0, 1, '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (5, '黑茶', 1, 2, '茶叶,茶,黑茶', 86, 'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg',
        1, 0, 1, '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (6, '白茶', 1, 2, '茶叶,茶,白茶', 85, 'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg',
        1, 0, 1, '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (7, '乌龙茶', 1, 2, '茶叶,茶,乌龙茶', 84,
        'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg', 1, 0, 1, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00'),
       (8, '普洱茶', 1, 2, '茶叶,茶,普洱茶', 83,
        'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg', 1, 0, 1, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00'),
       (9, '青砖茶', 1, 2, '茶叶,茶,青砖茶', 82,
        'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg', 1, 0, 1, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00'),
       (10, '茶具', 0, 1, '茶具,茶', 98, 'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg', 1,
        1, 1, '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (11, '茶壶', 10, 2, '茶具,茶,茶壶', 89,
        'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg', 1, 0, 1, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00'),
       (12, '茶杯', 10, 2, '茶具,茶,茶杯', 88,
        'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg', 1, 0, 1, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00'),
       (13, '茶筒', 10, 2, '茶具,茶,茶筒', 87,
        'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg', 1, 0, 1, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00'),
       (14, '茶针', 10, 2, '茶具,茶,茶针', 86,
        'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg', 1, 0, 1, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00'),
       (15, '茶夹', 10, 2, '茶具,茶,茶夹', 85,
        'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg', 1, 0, 1, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00'),
       (16, '茶拨', 10, 2, '茶具,茶,茶拨', 84,
        'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg', 1, 0, 1, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00'),
       (17, '茶则', 10, 2, '茶具,茶,茶则', 83,
        'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg', 1, 0, 1, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00'),
       (18, '茶漏', 10, 2, '茶具,茶,茶漏', 82,
        'https://fuss10.elemecdn.com/e/5d/4a731a90594a4af544c0c25941171jpeg.jpeg', 1, 0, 1, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00')
;

TRUNCATE mall_goods;
INSERT INTO tea_mall.mall_goods
VALUES (1, 2, '绿茶', '11010101110001', '2023年明前特级信阳毛尖绿茶 250克（125g*2罐）', '细、圆、紧、直 鲜爽持久',
        'http://localhost:19082/resources/goods-image/2023/06/01/733b8e72-1e53-4fe5-b285-6f1ab7327317.jpg', 216.00,
        '绿茶,毛尖,信阳毛尖', 0, 0, 0, 1, 0, 0, 0, 0, '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (2, 2, '绿茶', '11010101100101', '2023年西湖龙井新茶 传统纸包 明前一级绿茶 200克', '甄选清香、带豆花香',
        'http://localhost:19082/resources/goods-image/2023/06/01/9b173363-9844-4b53-9953-2b699692dcdf.jpg', 398.00,
        '龙井,杭州龙井,西湖龙井', 0, 0, 1, 0, 0, 0, 0, 0, '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (3, 3, '红茶', '11010011101010', '2023年经典58红茶 浓香型大叶种滇红茶 380克', '香甜醇爽 温润滑顺',
        'http://localhost:19082/resources/goods-image/2023/06/01/8c0c6587-cfde-448e-a36a-ac438fda51cf.jpg', 176.00,
        '滇红茶,浓香', 0, 0, 2, 0, 0, 0, 0, 0, '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (4, 3, '红茶', '11011101001010', '2023年金骏眉武夷红茶 桐木村高山特级红茶 80克', '甘醇甜滑 滋味绵软 蜜薯香馥',
        'http://localhost:19082/resources/goods-image/2023/06/01/1ee0641e-20ee-436d-87e4-ee39da972793.jpg', 65.00,
        '金骏眉,武夷红茶', 0, 0, 1, 0, 0, 0, 0, 0, '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (5, 11, '茶壶', '11010100111010', '陶瓷旅行茶具 便携式快客杯功夫茶具 一壶二杯（泡茶容量约170ml左右）',
        '一壶二杯 简约礼盒装',
        'http://localhost:19082/resources/goods-image/2023/06/01/3bcd52f4-1a7c-4f6f-8246-6208c5e03616.jpg', 106.00,
        '陶瓷,旅行茶具,便携,功夫茶具', 0, 0, 0, 0, 0, 0, 0, 0, '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (6, 8, '普洱茶', '11001001111010', '双宝小青柑 新会天马中青柑普洱茶 100克（四颗装）', '2010年熟茶 + 2015年天马柑',
        'http://localhost:19082/resources/goods-image/2023/06/01/9b173363-9844-4b53-9953-2b699692dcdf.jpg', 68.00,
        '普洱,小青柑', 0, 1, 1, 1, 65535, 43223, 41342, 53, '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (7, 7, '乌龙茶', '11010100011110', '白鸡冠武夷岩茶 四大名枞之一 特级 96克', '8g*12泡/盒 中火醇香',
        'http://localhost:19082/resources/goods-image/2023/06/01/9b173363-9844-4b53-9953-2b699692dcdf.jpg', 120.00,
        '岩茶,武夷,乌龙,白鸡冠', 0, 1, 1, 1, 27547, 21213, 19654, 54, '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (8, 3, '红茶', '11000111011010', '2023年滇红琥珀金针 特级红茶 100克', '中华老字号 品质如初',
        'http://localhost:19082/resources/goods-image/2023/06/01/8c0c6587-cfde-448e-a36a-ac438fda51cf.jpg', 336.00,
        '红茶,滇红,特级,金针', 0, 1, 1, 1, 45323, 27242, 23353, 67, '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (9, 8, '普洱茶', '11010101011010', '中茶易武正山古树 2015年铁饼 生茶 400克/饼', '2010年熟茶 + 2015年天马柑',
        'http://localhost:19082/resources/goods-image/2023/06/01/9b173363-9844-4b53-9953-2b699692dcdf.jpg', 298.00,
        '普洱,茶饼,生茶,陈年', 0, 1, 1, 1, 65423, 51443, 48562, 81, '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (10, 2, '绿茶', '11010101011010', '2023年信阳毛尖新茶 明前特级绿茶 250克（125克*2罐）', '鲜爽回甘 口口生香',
        'http://localhost:19082/resources/goods-image/2023/06/01/9b173363-9844-4b53-9953-2b699692dcdf.jpg', 389.00,
        '绿茶,毛尖,信阳', 0, 1, 1, 1, 43562, 41763, 38667, 74, '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (11, 2, '绿茶', '11010101010110', '2023年新茶 珍稀安吉白茶 雨前一级 125克', '鲜爽 甘甜 栗香豆香高',
        'http://localhost:19082/resources/goods-image/2023/06/01/9b173363-9844-4b53-9953-2b699692dcdf.jpg', 129.00,
        '绿茶,新茶,安吉,白茶', 0, 1, 1, 1, 54542, 44324, 42907, 26, '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (12, 2, '绿茶', '11010010111010', '2023早春滇绿 头采银雪毫绿茶 150克罐装', '一芽一叶 口口鲜爽 春天之味',
        'http://localhost:19082/resources/goods-image/2023/06/01/9b173363-9844-4b53-9953-2b699692dcdf.jpg', 138.00,
        '绿茶,滇绿', 0, 1, 1, 1, 65635, 54242, 51974, 93, '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (13, 2, '绿茶', '11010111001010', '2023年西湖龙井新茶 明前特级老茶树 50克罐装', '香高味醇 鲜、爽、嫩',
        'http://localhost:19082/resources/goods-image/2023/06/01/9b173363-9844-4b53-9953-2b699692dcdf.jpg', 196.00,
        '龙井,杭州龙井,西湖龙井', 0, 1, 1, 1, 65839, 56523, 52886, 13, '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (14, 2, '绿茶', '11100101001110', '2023年新茶 龙芽大师早春嫩芽 特级绿茶 60克', '雪后初生 早春嫩芽',
        'http://localhost:19082/resources/goods-image/2023/06/01/9b173363-9844-4b53-9953-2b699692dcdf.jpg', 258.00,
        '绿茶,新茶,特级', 0, 1, 1, 1, 43546, 33124, 31873, 56, '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (15, 2, '绿茶', '11000111101010', '2023年明前春芽绿茶 特级高山有机茶 匠心系列 125克', '高山有机 香高味浓',
        'http://localhost:19082/resources/goods-image/2023/06/01/9b173363-9844-4b53-9953-2b699692dcdf.jpg', 89.00,
        '绿茶,特级,新茶,有机', 0, 1, 1, 1, 76434, 54542, 53972, 61, '2023-06-01 08:00:00', '2023-06-01 08:00:00');

TRUNCATE mall_goods_detail;
INSERT INTO mall_goods_detail (goods_id, detail, gmt_create, gmt_modified)
VALUES (1,
        '<p><img src="http://localhost:19082/resources/goods-image/2023/06/01/733b8e72-1e53-4fe5-b285-6f1ab7327317.jpg" style="max-width:100%;" contenteditable="false"/><br/><img src="http://localhost:19082/resources/goods-image/2023/06/01/f3792b5d-c6d7-48ff-801b-dc9842f8b8d0.jpg" style="max-width:100%;" contenteditable="false"/><br/><img src="http://localhost:19082/resources/goods-image/2023/06/01/9caf4b08-e780-4da4-9b3c-10fb8ac489f8.jpg" style="max-width:100%;" contenteditable="false"/></p>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (2,
        '<p><img src="http://localhost:19082/resources/goods-image/2023/06/01/9b173363-9844-4b53-9953-2b699692dcdf.jpg" style="max-width:100%;" contenteditable="false"/><br/><img src="http://localhost:19082/resources/goods-image/2023/06/01/01678415-9cad-4ed8-9371-9597721d20a8.jpg" style="max-width:100%;" contenteditable="false"/><br/><img src="http://localhost:19082/resources/goods-image/2023/06/01/5b1d78f8-a7b1-4514-b41e-3fdb375a5c4d.png" style="max-width:100%;" contenteditable="false"/></p>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (3,
        '<p><img src="http://localhost:19082/resources/goods-image/2023/06/01/8c0c6587-cfde-448e-a36a-ac438fda51cf.jpg" style="max-width:100%;" contenteditable="false"/><br/><img src="http://localhost:19082/resources/goods-image/2023/06/01/36249625-7740-4b7f-bb3a-0f4340d1b198.jpg" style="max-width:100%;" contenteditable="false"/></p><p><img src="http://localhost:19082/resources/goods-image/2023/06/01/2009101b-9ac6-4e06-a66a-b9ded27527cc.jpg" style="max-width:100%;" contenteditable="false"/></p>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (4,
        '<p><img src="http://localhost:19082/resources/goods-image/2023/06/01/1ee0641e-20ee-436d-87e4-ee39da972793.jpg" style="max-width:100%;" contenteditable="false"/></p><p><img src="http://localhost:19082/resources/goods-image/2023/06/01/be0df6b3-e933-4c92-a0eb-dfb6a6424b5c.jpg" style="max-width:100%;" contenteditable="false"/></p><p><img src="http://localhost:19082/resources/goods-image/2023/06/01/86dc93f4-2cac-4e0d-8870-0a8844dd224a.jpg" style="max-width:100%;" contenteditable="false"/></p>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (5,
        '<p><img src="http://localhost:19082/resources/goods-image/2023/06/01/3bcd52f4-1a7c-4f6f-8246-6208c5e03616.jpg" style="max-width:100%;" contenteditable="false"/><br/><img src="http://localhost:19082/resources/goods-image/2023/06/01/9ae4d01c-38ee-4791-bdc7-94daeec65de2.jpg" style="max-width:100%;" contenteditable="false"/><br/><img src="http://localhost:19082/resources/goods-image/2023/06/01/269d618b-6faa-4191-95fd-ffaa71717529.jpg" style="max-width:100%;" contenteditable="false"/></p>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (6,
        '<p><img src="http://localhost:19082/resources/goods-image/2023/06/01/3bcd52f4-1a7c-4f6f-8246-6208c5e03616.jpg" style="max-width:100%;" contenteditable="false"/><br/><img src="http://localhost:19082/resources/goods-image/2023/06/01/9ae4d01c-38ee-4791-bdc7-94daeec65de2.jpg" style="max-width:100%;" contenteditable="false"/><br/><img src="http://localhost:19082/resources/goods-image/2023/06/01/269d618b-6faa-4191-95fd-ffaa71717529.jpg" style="max-width:100%;" contenteditable="false"/></p>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (7,
        '<p><img src="http://localhost:19082/resources/goods-image/2023/06/01/3bcd52f4-1a7c-4f6f-8246-6208c5e03616.jpg" style="max-width:100%;" contenteditable="false"/><br/><img src="http://localhost:19082/resources/goods-image/2023/06/01/9ae4d01c-38ee-4791-bdc7-94daeec65de2.jpg" style="max-width:100%;" contenteditable="false"/><br/><img src="http://localhost:19082/resources/goods-image/2023/06/01/269d618b-6faa-4191-95fd-ffaa71717529.jpg" style="max-width:100%;" contenteditable="false"/></p>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (8,
        '<p><img src="http://localhost:19082/resources/goods-image/2023/06/01/3bcd52f4-1a7c-4f6f-8246-6208c5e03616.jpg" style="max-width:100%;" contenteditable="false"/><br/><img src="http://localhost:19082/resources/goods-image/2023/06/01/9ae4d01c-38ee-4791-bdc7-94daeec65de2.jpg" style="max-width:100%;" contenteditable="false"/><br/><img src="http://localhost:19082/resources/goods-image/2023/06/01/269d618b-6faa-4191-95fd-ffaa71717529.jpg" style="max-width:100%;" contenteditable="false"/></p>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (9,
        '<p><img src="http://localhost:19082/resources/goods-image/2023/06/01/3bcd52f4-1a7c-4f6f-8246-6208c5e03616.jpg" style="max-width:100%;" contenteditable="false"/><br/><img src="http://localhost:19082/resources/goods-image/2023/06/01/9ae4d01c-38ee-4791-bdc7-94daeec65de2.jpg" style="max-width:100%;" contenteditable="false"/><br/><img src="http://localhost:19082/resources/goods-image/2023/06/01/269d618b-6faa-4191-95fd-ffaa71717529.jpg" style="max-width:100%;" contenteditable="false"/></p>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (10,
        '<p><img src="http://localhost:19082/resources/goods-image/2023/06/01/3bcd52f4-1a7c-4f6f-8246-6208c5e03616.jpg" style="max-width:100%;" contenteditable="false"/><br/><img src="http://localhost:19082/resources/goods-image/2023/06/01/9ae4d01c-38ee-4791-bdc7-94daeec65de2.jpg" style="max-width:100%;" contenteditable="false"/><br/><img src="http://localhost:19082/resources/goods-image/2023/06/01/269d618b-6faa-4191-95fd-ffaa71717529.jpg" style="max-width:100%;" contenteditable="false"/></p>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (11,
        '<p><img src="http://localhost:19082/resources/goods-image/2023/06/01/3bcd52f4-1a7c-4f6f-8246-6208c5e03616.jpg" style="max-width:100%;" contenteditable="false"/><br/><img src="http://localhost:19082/resources/goods-image/2023/06/01/9ae4d01c-38ee-4791-bdc7-94daeec65de2.jpg" style="max-width:100%;" contenteditable="false"/><br/><img src="http://localhost:19082/resources/goods-image/2023/06/01/269d618b-6faa-4191-95fd-ffaa71717529.jpg" style="max-width:100%;" contenteditable="false"/></p>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (12,
        '<p><img src="http://localhost:19082/resources/goods-image/2023/06/01/3bcd52f4-1a7c-4f6f-8246-6208c5e03616.jpg" style="max-width:100%;" contenteditable="false"/><br/><img src="http://localhost:19082/resources/goods-image/2023/06/01/9ae4d01c-38ee-4791-bdc7-94daeec65de2.jpg" style="max-width:100%;" contenteditable="false"/><br/><img src="http://localhost:19082/resources/goods-image/2023/06/01/269d618b-6faa-4191-95fd-ffaa71717529.jpg" style="max-width:100%;" contenteditable="false"/></p>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (13,
        '<p><img src="http://localhost:19082/resources/goods-image/2023/06/01/3bcd52f4-1a7c-4f6f-8246-6208c5e03616.jpg" style="max-width:100%;" contenteditable="false"/><br/><img src="http://localhost:19082/resources/goods-image/2023/06/01/9ae4d01c-38ee-4791-bdc7-94daeec65de2.jpg" style="max-width:100%;" contenteditable="false"/><br/><img src="http://localhost:19082/resources/goods-image/2023/06/01/269d618b-6faa-4191-95fd-ffaa71717529.jpg" style="max-width:100%;" contenteditable="false"/></p>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (14,
        '<p><img src="http://localhost:19082/resources/goods-image/2023/06/01/3bcd52f4-1a7c-4f6f-8246-6208c5e03616.jpg" style="max-width:100%;" contenteditable="false"/><br/><img src="http://localhost:19082/resources/goods-image/2023/06/01/9ae4d01c-38ee-4791-bdc7-94daeec65de2.jpg" style="max-width:100%;" contenteditable="false"/><br/><img src="http://localhost:19082/resources/goods-image/2023/06/01/269d618b-6faa-4191-95fd-ffaa71717529.jpg" style="max-width:100%;" contenteditable="false"/></p>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (15,
        '<p><img src="http://localhost:19082/resources/goods-image/2023/06/01/3bcd52f4-1a7c-4f6f-8246-6208c5e03616.jpg" style="max-width:100%;" contenteditable="false"/><br/><img src="http://localhost:19082/resources/goods-image/2023/06/01/9ae4d01c-38ee-4791-bdc7-94daeec65de2.jpg" style="max-width:100%;" contenteditable="false"/><br/><img src="http://localhost:19082/resources/goods-image/2023/06/01/269d618b-6faa-4191-95fd-ffaa71717529.jpg" style="max-width:100%;" contenteditable="false"/></p>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00');

TRUNCATE mall_receiver_address;
INSERT INTO mall_receiver_address
VALUES (1, 1, '张先生', '13800138001', '北京市', '110000', '海淀区', '110108', '', '', '财富大厦A座8层601室', 0,
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (2, 1, '李先生', '13900139001', '北京市', '110000', '朝阳区', '110105', '', '', '科技大厦C座6层901室', 1,
        '2023-06-01 08:00:00', '2023-06-01 08:00:00');