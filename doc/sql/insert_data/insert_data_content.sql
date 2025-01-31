-- 执行脚本提示：请在IntelliJ IDEA中打开此文件，确保已经创建数据库并配置Database面板，对此文件点击鼠标右键，选择“Run 文件名”，即可执行此脚本

-- 执行脚本提示：如果你将此脚本用于你的项目中，请将此脚本中所有本地图片的URL（例如此脚本中的http://localhost:19082开头的URL）换成你的附件管理服务器上的图片的URL

-- 文章相关数据表的测试数据

TRUNCATE content_category;
INSERT INTO content_category
VALUES (1, '经验', '', 99, 1, 1, '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (2, '功效', '', 99, 1, 1, '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (3, '存放', '', 99, 1, 1, '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (4, '冲泡', '', 99, 1, 1, '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (5, '禁忌', '', 99, 1, 1, '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (6, '茶器', '', 99, 1, 1, '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (7, '文化', '', 99, 1, 1, '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (8, '花茶', '', 99, 1, 1, '2023-06-01 08:00:00', '2023-06-01 08:00:00');

TRUNCATE content_article;
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (1, 1, 'root', 1, '经验', '这份武夷岩茶的简介，建议收藏！',
        '武夷岩茶是产于闽北武夷山岩上乌龙茶类的总称，主要品种有大红袍、水仙、奇种、肉桂、名丛等。其中，最为名贵、品质最优的就是大红袍。',
        'http://localhost:19082/resources/article-image/2023/06/01/547736f5-e1e0-4259-9cbd-44b2e40926eb.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 1, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (2, 1, 'root', 1, '经验', '云南红茶有哪些品种',
        '云南红茶品种丰富，有滇红工夫茶、滇红金丝、滇红金针、滇红金螺、滇红金芽、野生红茶、普洱晒红、紫鹃红茶、红碎茶等，其外形各有特定规格，身骨重实，色泽调匀，冲泡后汤色红鲜明亮，金圈突出，香气鲜爽，滋味浓强，富有刺激性，叶底红匀鲜亮，浓、强、鲜为其特色。',
        'http://localhost:19082/resources/article-image/2023/06/01/fe24baf0-c029-412a-94d0-bdf6055d7a72.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 1, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (3, 1, 'root', 1, '经验', '乌龙茶和普洱茶的区别', '乌龙茶和普洱茶在产地、外形、工艺、滋味等几个方面均有区别。
产地：乌龙茶主产于福建、广东、台湾三省，而普洱茶产于云南西双版纳、临沧等地。
外形：乌龙茶干茶卷曲，肥壮匀整，茶毫不显，而普洱茶条索肥壮狭长，白毫显露。
工艺：乌龙茶采用独特的做青工艺，普洱茶为杀青、晒青工艺或渥堆发酵。
滋味：乌龙茶醇爽甘鲜，七泡余香，而普洱茶醇厚饱满，滋味浓强。',
        'http://localhost:19082/resources/article-image/2023/06/01/25e8ee26-28d7-4f16-843e-b43ebc68ae62.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 1, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (4, 1, 'root', 1, '经验', '中国奶茶发源地',
        '内蒙古是游牧民族的故乡，也是奶茶（蒙古奶茶）的最初发源地。蒙古高原和中亚地区的奶茶千百年来从未改变，至今仍然是日常饮用及待客的必备饮料。其他地区则有不同口味的奶茶，如印度奶茶以加入玛萨拉的特殊香料闻名；发源于香港的丝袜奶茶和发源于台湾的珍珠奶茶也独具特色。',
        'http://localhost:19082/resources/article-image/2023/06/01/ff947d6d-d652-49cd-b000-469c6646cd31.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 1, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (5, 1, 'root', 1, '经验', '中国四大毛尖是哪四种', '中国四大毛尖分别为信阳毛尖、都匀毛尖、古丈毛尖、沩山毛尖。
信阳毛尖：外形细、圆、光、直、多白毫，香高持久，滋味浓醇。
都匀毛尖：紧结纤细卷曲、披毫，色绿翠。香清高，味鲜浓。
古丈毛尖：被誉为"绿茶中的珍品"，特点为紧直多毫、色泽翠绿、滋味醇爽回甘。
沩山毛尖：外形微卷，色泽黄亮油润，白毫显露，汤色橙黄透亮，滋味醇甜爽口。',
        'http://localhost:19082/resources/article-image/2023/06/01/08965a95-3874-4025-9969-82f61065948c.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 1, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (6, 1, 'root', 1, '经验', '357克普洱茶饼尺寸',
        '以357克普洱茶饼为例，其直径一般为18~19厘米，周长58.4厘米，重量为357克（净重），中心厚度2.5厘米，边缘厚度为1厘米左右，以上参数仅供参考，并非绝对值，因为根据不同的厂家，不同的制作工艺，以及形制需求不同，茶饼的规格都存在一定变化和差异，所以并非定数。',
        'http://localhost:19082/resources/article-image/2023/06/01/584a8f58-d6b4-4e7a-885c-7d8f929d2657.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 1, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (7, 1, 'root', 1, '经验', '长期收藏白茶，是选择散茶，还是饼茶',
        '白茶，有“一年为茶，三年为宝，七年为药”的说法，因此很多人都喜欢收藏白茶。那收藏散茶好，还是饼茶好呢？',
        'http://localhost:19082/resources/article-image/2023/06/01/4c9b6739-948a-4c84-9328-b8ddf21d49eb.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 1, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (8, 1, 'root', 1, '经验', '靖安白茶是什么茶',
        '靖安白茶是绿茶中的珍稀品种，又称不发酵茶、白化茶，主产于江西省宜春市靖安县，其成品茶多为二叶一芯嫩芽，在春季发芽时，新梢嫩叶的叶色呈可逆性白化现象，满披白毫，外形条素天然，色为玉霜，光亮油润，肉质自然展开颇具高雅特色。其氨基酸含量是高档绿茶的6-8倍，倍受人们喜爱。',
        'http://localhost:19082/resources/article-image/2023/06/01/0ce4bbb8-f6a2-42d0-b5f8-625118fe4e83.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 1, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (9, 1, 'root', 1, '经验', '日月潭红茶介绍',
        '日月潭红茶属全发酵茶，产自台湾省南投县鱼池乡，由大叶种茶树鲜叶制作而成，具有形美、香高、味醇等特点。台湾日月潭红茶，干茶外形条索粗壮，色泽乌黑油润，汤色通透明艳，杯壁显金圈，香气醇和，带有兰花香，滋味甘甜，口感醇厚。',
        'http://localhost:19082/resources/article-image/2023/06/01/c0caf9db-4302-4ff6-ae63-ba94c3d21f10.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 1, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (10, 1, 'root', 1, '经验', '满陇红茶是什么茶',
        '满陇红茶是浙江红茶的一种，产自杭州西湖南的山谷，其茶采用当地小叶种为原料，经萎凋、揉捻、发酵、干燥等工艺制成，成品茶鲜醇甘爽，甜润浓郁，同时具有形美、香高等特点，其茶条索细长卷曲，通体色泽乌润，口感甜醇爽滑，滋味甜润浓郁，兼西湖龙井之清雅，甜香馥郁持久，汤色橙红明亮，清澈洁净。',
        'http://localhost:19082/resources/article-image/2023/06/01/c12ac3bf-7687-46f5-b97e-3bef794b0a3c.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 1, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (11, 1, 'root', 1, '经验', '单丛蜜兰香介绍',
        '蜜兰香是凤凰单丛十大花蜜香型珍贵名丛之一，是凤凰水仙群体中的杰出单株，属乌龙茶系列，产于广东省潮州市凤凰镇，它的母树距今已经有600多年历史了，它之所以叫做蜜兰香，是因为它的成茶具有浓烈的番薯蜜味，其茶蜜香高锐持久，芝兰香幽雅细长，滋味醇厚回甘，有“浓蜜幽兰”特韵，饮后满口生香，极耐冲泡',
        'http://localhost:19082/resources/article-image/2023/06/01/c6021d14-91f0-457f-9406-4bf6f7e3a8a3.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 1, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (12, 1, 'root', 1, '经验', '家里种植的金丝菊可以嗮干泡茶吗',
        '家里种植的金丝菊不能嗮干泡茶。菊花茶一般是以鲜嫩菊花花朵作为原料，经过采摘、阴干、生晒蒸晒以及烘培等工序制作而成的，能冲泡饮用。但自家种的菊花为观赏菊，不具备食用属性，虽然进行了晒干，但是未经过正规工艺加工，且成分尚不明确，因此不能直接泡茶。',
        'http://localhost:19082/resources/article-image/2023/06/01/5a9feffd-d02f-495a-a3e7-6c8bdd24a96a.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 1, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (13, 1, 'root', 2, '攻效', '日月潭红茶介绍',
        '日月潭红茶属全发酵茶，产自台湾省南投县鱼池乡，由大叶种茶树鲜叶制作而成，具有形美、香高、味醇等特点。台湾日月潭红茶，干茶外形条索粗壮，色泽乌黑油润，汤色通透明艳，杯壁显金圈，香气醇和，带有兰花香，滋味甘甜，口感醇厚。',
        'http://localhost:19082/resources/article-image/2023/06/01/c0caf9db-4302-4ff6-ae63-ba94c3d21f10.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (14, 1, 'root', 2, '攻效', '乌龙茶和普洱茶的区别', '乌龙茶和普洱茶在产地、外形、工艺、滋味等几个方面均有区别。
产地：乌龙茶主产于福建、广东、台湾三省，而普洱茶产于云南西双版纳、临沧等地。
外形：乌龙茶干茶卷曲，肥壮匀整，茶毫不显，而普洱茶条索肥壮狭长，白毫显露。
工艺：乌龙茶采用独特的做青工艺，普洱茶为杀青、晒青工艺或渥堆发酵。
滋味：乌龙茶醇爽甘鲜，七泡余香，而普洱茶醇厚饱满，滋味浓强。',
        'http://localhost:19082/resources/article-image/2023/06/01/25e8ee26-28d7-4f16-843e-b43ebc68ae62.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (15, 1, 'root', 2, '攻效', '家里种植的金丝菊可以嗮干泡茶吗',
        '家里种植的金丝菊不能嗮干泡茶。菊花茶一般是以鲜嫩菊花花朵作为原料，经过采摘、阴干、生晒蒸晒以及烘培等工序制作而成的，能冲泡饮用。但自家种的菊花为观赏菊，不具备食用属性，虽然进行了晒干，但是未经过正规工艺加工，且成分尚不明确，因此不能直接泡茶。',
        'http://localhost:19082/resources/article-image/2023/06/01/5a9feffd-d02f-495a-a3e7-6c8bdd24a96a.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (16, 1, 'root', 2, '攻效', '中国奶茶发源地',
        '内蒙古是游牧民族的故乡，也是奶茶（蒙古奶茶）的最初发源地。蒙古高原和中亚地区的奶茶千百年来从未改变，至今仍然是日常饮用及待客的必备饮料。其他地区则有不同口味的奶茶，如印度奶茶以加入玛萨拉的特殊香料闻名；发源于香港的丝袜奶茶和发源于台湾的珍珠奶茶也独具特色。',
        'http://localhost:19082/resources/article-image/2023/06/01/ff947d6d-d652-49cd-b000-469c6646cd31.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (17, 1, 'root', 2, '攻效', '中国四大毛尖是哪四种', '中国四大毛尖分别为信阳毛尖、都匀毛尖、古丈毛尖、沩山毛尖。
信阳毛尖：外形细、圆、光、直、多白毫，香高持久，滋味浓醇。
都匀毛尖：紧结纤细卷曲、披毫，色绿翠。香清高，味鲜浓。
古丈毛尖：被誉为"绿茶中的珍品"，特点为紧直多毫、色泽翠绿、滋味醇爽回甘。
沩山毛尖：外形微卷，色泽黄亮油润，白毫显露，汤色橙黄透亮，滋味醇甜爽口。',
        'http://localhost:19082/resources/article-image/2023/06/01/08965a95-3874-4025-9969-82f61065948c.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (18, 1, 'root', 2, '攻效', '满陇红茶是什么茶',
        '满陇红茶是浙江红茶的一种，产自杭州西湖南的山谷，其茶采用当地小叶种为原料，经萎凋、揉捻、发酵、干燥等工艺制成，成品茶鲜醇甘爽，甜润浓郁，同时具有形美、香高等特点，其茶条索细长卷曲，通体色泽乌润，口感甜醇爽滑，滋味甜润浓郁，兼西湖龙井之清雅，甜香馥郁持久，汤色橙红明亮，清澈洁净。',
        'http://localhost:19082/resources/article-image/2023/06/01/c12ac3bf-7687-46f5-b97e-3bef794b0a3c.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (19, 1, 'root', 2, '攻效', '357克普洱茶饼尺寸',
        '以357克普洱茶饼为例，其直径一般为18~19厘米，周长58.4厘米，重量为357克（净重），中心厚度2.5厘米，边缘厚度为1厘米左右，以上参数仅供参考，并非绝对值，因为根据不同的厂家，不同的制作工艺，以及形制需求不同，茶饼的规格都存在一定变化和差异，所以并非定数。',
        'http://localhost:19082/resources/article-image/2023/06/01/584a8f58-d6b4-4e7a-885c-7d8f929d2657.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (20, 1, 'root', 2, '攻效', '靖安白茶是什么茶',
        '靖安白茶是绿茶中的珍稀品种，又称不发酵茶、白化茶，主产于江西省宜春市靖安县，其成品茶多为二叶一芯嫩芽，在春季发芽时，新梢嫩叶的叶色呈可逆性白化现象，满披白毫，外形条素天然，色为玉霜，光亮油润，肉质自然展开颇具高雅特色。其氨基酸含量是高档绿茶的6-8倍，倍受人们喜爱。',
        'http://localhost:19082/resources/article-image/2023/06/01/0ce4bbb8-f6a2-42d0-b5f8-625118fe4e83.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (21, 1, 'root', 2, '攻效', '长期收藏白茶，是选择散茶，还是饼茶',
        '白茶，有“一年为茶，三年为宝，七年为药”的说法，因此很多人都喜欢收藏白茶。那收藏散茶好，还是饼茶好呢？',
        'http://localhost:19082/resources/article-image/2023/06/01/4c9b6739-948a-4c84-9328-b8ddf21d49eb.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (22, 1, 'root', 2, '攻效', '云南红茶有哪些品种',
        '云南红茶品种丰富，有滇红工夫茶、滇红金丝、滇红金针、滇红金螺、滇红金芽、野生红茶、普洱晒红、紫鹃红茶、红碎茶等，其外形各有特定规格，身骨重实，色泽调匀，冲泡后汤色红鲜明亮，金圈突出，香气鲜爽，滋味浓强，富有刺激性，叶底红匀鲜亮，浓、强、鲜为其特色。',
        'http://localhost:19082/resources/article-image/2023/06/01/fe24baf0-c029-412a-94d0-bdf6055d7a72.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (23, 1, 'root', 2, '攻效', '这份武夷岩茶的简介，建议收藏！',
        '武夷岩茶是产于闽北武夷山岩上乌龙茶类的总称，主要品种有大红袍、水仙、奇种、肉桂、名丛等。其中，最为名贵、品质最优的就是大红袍。',
        'http://localhost:19082/resources/article-image/2023/06/01/547736f5-e1e0-4259-9cbd-44b2e40926eb.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (24, 1, 'root', 2, '攻效', '单丛蜜兰香介绍',
        '蜜兰香是凤凰单丛十大花蜜香型珍贵名丛之一，是凤凰水仙群体中的杰出单株，属乌龙茶系列，产于广东省潮州市凤凰镇，它的母树距今已经有600多年历史了，它之所以叫做蜜兰香，是因为它的成茶具有浓烈的番薯蜜味，其茶蜜香高锐持久，芝兰香幽雅细长，滋味醇厚回甘，有“浓蜜幽兰”特韵，饮后满口生香，极耐冲泡',
        'http://localhost:19082/resources/article-image/2023/06/01/c6021d14-91f0-457f-9406-4bf6f7e3a8a3.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (25, 1, 'root', 3, '存放', '长期收藏白茶，是选择散茶，还是饼茶',
        '白茶，有“一年为茶，三年为宝，七年为药”的说法，因此很多人都喜欢收藏白茶。那收藏散茶好，还是饼茶好呢？',
        'http://localhost:19082/resources/article-image/2023/06/01/4c9b6739-948a-4c84-9328-b8ddf21d49eb.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (26, 1, 'root', 3, '存放', '日月潭红茶介绍',
        '日月潭红茶属全发酵茶，产自台湾省南投县鱼池乡，由大叶种茶树鲜叶制作而成，具有形美、香高、味醇等特点。台湾日月潭红茶，干茶外形条索粗壮，色泽乌黑油润，汤色通透明艳，杯壁显金圈，香气醇和，带有兰花香，滋味甘甜，口感醇厚。',
        'http://localhost:19082/resources/article-image/2023/06/01/c0caf9db-4302-4ff6-ae63-ba94c3d21f10.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (27, 1, 'root', 3, '存放', '满陇红茶是什么茶',
        '满陇红茶是浙江红茶的一种，产自杭州西湖南的山谷，其茶采用当地小叶种为原料，经萎凋、揉捻、发酵、干燥等工艺制成，成品茶鲜醇甘爽，甜润浓郁，同时具有形美、香高等特点，其茶条索细长卷曲，通体色泽乌润，口感甜醇爽滑，滋味甜润浓郁，兼西湖龙井之清雅，甜香馥郁持久，汤色橙红明亮，清澈洁净。',
        'http://localhost:19082/resources/article-image/2023/06/01/c12ac3bf-7687-46f5-b97e-3bef794b0a3c.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (28, 1, 'root', 3, '存放', '这份武夷岩茶的简介，建议收藏！',
        '武夷岩茶是产于闽北武夷山岩上乌龙茶类的总称，主要品种有大红袍、水仙、奇种、肉桂、名丛等。其中，最为名贵、品质最优的就是大红袍。',
        'http://localhost:19082/resources/article-image/2023/06/01/547736f5-e1e0-4259-9cbd-44b2e40926eb.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (29, 1, 'root', 3, '存放', '靖安白茶是什么茶',
        '靖安白茶是绿茶中的珍稀品种，又称不发酵茶、白化茶，主产于江西省宜春市靖安县，其成品茶多为二叶一芯嫩芽，在春季发芽时，新梢嫩叶的叶色呈可逆性白化现象，满披白毫，外形条素天然，色为玉霜，光亮油润，肉质自然展开颇具高雅特色。其氨基酸含量是高档绿茶的6-8倍，倍受人们喜爱。',
        'http://localhost:19082/resources/article-image/2023/06/01/0ce4bbb8-f6a2-42d0-b5f8-625118fe4e83.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (30, 1, 'root', 3, '存放', '家里种植的金丝菊可以嗮干泡茶吗',
        '家里种植的金丝菊不能嗮干泡茶。菊花茶一般是以鲜嫩菊花花朵作为原料，经过采摘、阴干、生晒蒸晒以及烘培等工序制作而成的，能冲泡饮用。但自家种的菊花为观赏菊，不具备食用属性，虽然进行了晒干，但是未经过正规工艺加工，且成分尚不明确，因此不能直接泡茶。',
        'http://localhost:19082/resources/article-image/2023/06/01/5a9feffd-d02f-495a-a3e7-6c8bdd24a96a.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (31, 1, 'root', 3, '存放', '云南红茶有哪些品种',
        '云南红茶品种丰富，有滇红工夫茶、滇红金丝、滇红金针、滇红金螺、滇红金芽、野生红茶、普洱晒红、紫鹃红茶、红碎茶等，其外形各有特定规格，身骨重实，色泽调匀，冲泡后汤色红鲜明亮，金圈突出，香气鲜爽，滋味浓强，富有刺激性，叶底红匀鲜亮，浓、强、鲜为其特色。',
        'http://localhost:19082/resources/article-image/2023/06/01/fe24baf0-c029-412a-94d0-bdf6055d7a72.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (32, 1, 'root', 3, '存放', '357克普洱茶饼尺寸',
        '以357克普洱茶饼为例，其直径一般为18~19厘米，周长58.4厘米，重量为357克（净重），中心厚度2.5厘米，边缘厚度为1厘米左右，以上参数仅供参考，并非绝对值，因为根据不同的厂家，不同的制作工艺，以及形制需求不同，茶饼的规格都存在一定变化和差异，所以并非定数。',
        'http://localhost:19082/resources/article-image/2023/06/01/584a8f58-d6b4-4e7a-885c-7d8f929d2657.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (33, 1, 'root', 3, '存放', '中国奶茶发源地',
        '内蒙古是游牧民族的故乡，也是奶茶（蒙古奶茶）的最初发源地。蒙古高原和中亚地区的奶茶千百年来从未改变，至今仍然是日常饮用及待客的必备饮料。其他地区则有不同口味的奶茶，如印度奶茶以加入玛萨拉的特殊香料闻名；发源于香港的丝袜奶茶和发源于台湾的珍珠奶茶也独具特色。',
        'http://localhost:19082/resources/article-image/2023/06/01/ff947d6d-d652-49cd-b000-469c6646cd31.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (34, 1, 'root', 3, '存放', '乌龙茶和普洱茶的区别', '乌龙茶和普洱茶在产地、外形、工艺、滋味等几个方面均有区别。
产地：乌龙茶主产于福建、广东、台湾三省，而普洱茶产于云南西双版纳、临沧等地。
外形：乌龙茶干茶卷曲，肥壮匀整，茶毫不显，而普洱茶条索肥壮狭长，白毫显露。
工艺：乌龙茶采用独特的做青工艺，普洱茶为杀青、晒青工艺或渥堆发酵。
滋味：乌龙茶醇爽甘鲜，七泡余香，而普洱茶醇厚饱满，滋味浓强。',
        'http://localhost:19082/resources/article-image/2023/06/01/25e8ee26-28d7-4f16-843e-b43ebc68ae62.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (35, 1, 'root', 3, '存放', '中国四大毛尖是哪四种', '中国四大毛尖分别为信阳毛尖、都匀毛尖、古丈毛尖、沩山毛尖。
信阳毛尖：外形细、圆、光、直、多白毫，香高持久，滋味浓醇。
都匀毛尖：紧结纤细卷曲、披毫，色绿翠。香清高，味鲜浓。
古丈毛尖：被誉为"绿茶中的珍品"，特点为紧直多毫、色泽翠绿、滋味醇爽回甘。
沩山毛尖：外形微卷，色泽黄亮油润，白毫显露，汤色橙黄透亮，滋味醇甜爽口。',
        'http://localhost:19082/resources/article-image/2023/06/01/08965a95-3874-4025-9969-82f61065948c.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (36, 1, 'root', 3, '存放', '单丛蜜兰香介绍',
        '蜜兰香是凤凰单丛十大花蜜香型珍贵名丛之一，是凤凰水仙群体中的杰出单株，属乌龙茶系列，产于广东省潮州市凤凰镇，它的母树距今已经有600多年历史了，它之所以叫做蜜兰香，是因为它的成茶具有浓烈的番薯蜜味，其茶蜜香高锐持久，芝兰香幽雅细长，滋味醇厚回甘，有“浓蜜幽兰”特韵，饮后满口生香，极耐冲泡',
        'http://localhost:19082/resources/article-image/2023/06/01/c6021d14-91f0-457f-9406-4bf6f7e3a8a3.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (37, 1, 'root', 4, '冲泡', '中国奶茶发源地',
        '内蒙古是游牧民族的故乡，也是奶茶（蒙古奶茶）的最初发源地。蒙古高原和中亚地区的奶茶千百年来从未改变，至今仍然是日常饮用及待客的必备饮料。其他地区则有不同口味的奶茶，如印度奶茶以加入玛萨拉的特殊香料闻名；发源于香港的丝袜奶茶和发源于台湾的珍珠奶茶也独具特色。',
        'http://localhost:19082/resources/article-image/2023/06/01/ff947d6d-d652-49cd-b000-469c6646cd31.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (38, 1, 'root', 4, '冲泡', '日月潭红茶介绍',
        '日月潭红茶属全发酵茶，产自台湾省南投县鱼池乡，由大叶种茶树鲜叶制作而成，具有形美、香高、味醇等特点。台湾日月潭红茶，干茶外形条索粗壮，色泽乌黑油润，汤色通透明艳，杯壁显金圈，香气醇和，带有兰花香，滋味甘甜，口感醇厚。',
        'http://localhost:19082/resources/article-image/2023/06/01/c0caf9db-4302-4ff6-ae63-ba94c3d21f10.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (39, 1, 'root', 4, '冲泡', '这份武夷岩茶的简介，建议收藏！',
        '武夷岩茶是产于闽北武夷山岩上乌龙茶类的总称，主要品种有大红袍、水仙、奇种、肉桂、名丛等。其中，最为名贵、品质最优的就是大红袍。',
        'http://localhost:19082/resources/article-image/2023/06/01/547736f5-e1e0-4259-9cbd-44b2e40926eb.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (40, 1, 'root', 4, '冲泡', '满陇红茶是什么茶',
        '满陇红茶是浙江红茶的一种，产自杭州西湖南的山谷，其茶采用当地小叶种为原料，经萎凋、揉捻、发酵、干燥等工艺制成，成品茶鲜醇甘爽，甜润浓郁，同时具有形美、香高等特点，其茶条索细长卷曲，通体色泽乌润，口感甜醇爽滑，滋味甜润浓郁，兼西湖龙井之清雅，甜香馥郁持久，汤色橙红明亮，清澈洁净。',
        'http://localhost:19082/resources/article-image/2023/06/01/c12ac3bf-7687-46f5-b97e-3bef794b0a3c.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (41, 1, 'root', 4, '冲泡', '乌龙茶和普洱茶的区别', '乌龙茶和普洱茶在产地、外形、工艺、滋味等几个方面均有区别。
产地：乌龙茶主产于福建、广东、台湾三省，而普洱茶产于云南西双版纳、临沧等地。
外形：乌龙茶干茶卷曲，肥壮匀整，茶毫不显，而普洱茶条索肥壮狭长，白毫显露。
工艺：乌龙茶采用独特的做青工艺，普洱茶为杀青、晒青工艺或渥堆发酵。
滋味：乌龙茶醇爽甘鲜，七泡余香，而普洱茶醇厚饱满，滋味浓强。',
        'http://localhost:19082/resources/article-image/2023/06/01/25e8ee26-28d7-4f16-843e-b43ebc68ae62.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (42, 1, 'root', 4, '冲泡', '靖安白茶是什么茶',
        '靖安白茶是绿茶中的珍稀品种，又称不发酵茶、白化茶，主产于江西省宜春市靖安县，其成品茶多为二叶一芯嫩芽，在春季发芽时，新梢嫩叶的叶色呈可逆性白化现象，满披白毫，外形条素天然，色为玉霜，光亮油润，肉质自然展开颇具高雅特色。其氨基酸含量是高档绿茶的6-8倍，倍受人们喜爱。',
        'http://localhost:19082/resources/article-image/2023/06/01/0ce4bbb8-f6a2-42d0-b5f8-625118fe4e83.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (43, 1, 'root', 4, '冲泡', '中国四大毛尖是哪四种', '中国四大毛尖分别为信阳毛尖、都匀毛尖、古丈毛尖、沩山毛尖。
信阳毛尖：外形细、圆、光、直、多白毫，香高持久，滋味浓醇。
都匀毛尖：紧结纤细卷曲、披毫，色绿翠。香清高，味鲜浓。
古丈毛尖：被誉为"绿茶中的珍品"，特点为紧直多毫、色泽翠绿、滋味醇爽回甘。
沩山毛尖：外形微卷，色泽黄亮油润，白毫显露，汤色橙黄透亮，滋味醇甜爽口。',
        'http://localhost:19082/resources/article-image/2023/06/01/08965a95-3874-4025-9969-82f61065948c.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (44, 1, 'root', 4, '冲泡', '357克普洱茶饼尺寸',
        '以357克普洱茶饼为例，其直径一般为18~19厘米，周长58.4厘米，重量为357克（净重），中心厚度2.5厘米，边缘厚度为1厘米左右，以上参数仅供参考，并非绝对值，因为根据不同的厂家，不同的制作工艺，以及形制需求不同，茶饼的规格都存在一定变化和差异，所以并非定数。',
        'http://localhost:19082/resources/article-image/2023/06/01/584a8f58-d6b4-4e7a-885c-7d8f929d2657.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (45, 1, 'root', 4, '冲泡', '单丛蜜兰香介绍',
        '蜜兰香是凤凰单丛十大花蜜香型珍贵名丛之一，是凤凰水仙群体中的杰出单株，属乌龙茶系列，产于广东省潮州市凤凰镇，它的母树距今已经有600多年历史了，它之所以叫做蜜兰香，是因为它的成茶具有浓烈的番薯蜜味，其茶蜜香高锐持久，芝兰香幽雅细长，滋味醇厚回甘，有“浓蜜幽兰”特韵，饮后满口生香，极耐冲泡',
        'http://localhost:19082/resources/article-image/2023/06/01/c6021d14-91f0-457f-9406-4bf6f7e3a8a3.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (46, 1, 'root', 4, '冲泡', '长期收藏白茶，是选择散茶，还是饼茶',
        '白茶，有“一年为茶，三年为宝，七年为药”的说法，因此很多人都喜欢收藏白茶。那收藏散茶好，还是饼茶好呢？',
        'http://localhost:19082/resources/article-image/2023/06/01/4c9b6739-948a-4c84-9328-b8ddf21d49eb.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (47, 1, 'root', 4, '冲泡', '云南红茶有哪些品种',
        '云南红茶品种丰富，有滇红工夫茶、滇红金丝、滇红金针、滇红金螺、滇红金芽、野生红茶、普洱晒红、紫鹃红茶、红碎茶等，其外形各有特定规格，身骨重实，色泽调匀，冲泡后汤色红鲜明亮，金圈突出，香气鲜爽，滋味浓强，富有刺激性，叶底红匀鲜亮，浓、强、鲜为其特色。',
        'http://localhost:19082/resources/article-image/2023/06/01/fe24baf0-c029-412a-94d0-bdf6055d7a72.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (48, 1, 'root', 4, '冲泡', '家里种植的金丝菊可以嗮干泡茶吗',
        '家里种植的金丝菊不能嗮干泡茶。菊花茶一般是以鲜嫩菊花花朵作为原料，经过采摘、阴干、生晒蒸晒以及烘培等工序制作而成的，能冲泡饮用。但自家种的菊花为观赏菊，不具备食用属性，虽然进行了晒干，但是未经过正规工艺加工，且成分尚不明确，因此不能直接泡茶。',
        'http://localhost:19082/resources/article-image/2023/06/01/5a9feffd-d02f-495a-a3e7-6c8bdd24a96a.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (49, 1, 'root', 5, '禁忌', '乌龙茶和普洱茶的区别', '乌龙茶和普洱茶在产地、外形、工艺、滋味等几个方面均有区别。
产地：乌龙茶主产于福建、广东、台湾三省，而普洱茶产于云南西双版纳、临沧等地。
外形：乌龙茶干茶卷曲，肥壮匀整，茶毫不显，而普洱茶条索肥壮狭长，白毫显露。
工艺：乌龙茶采用独特的做青工艺，普洱茶为杀青、晒青工艺或渥堆发酵。
滋味：乌龙茶醇爽甘鲜，七泡余香，而普洱茶醇厚饱满，滋味浓强。',
        'http://localhost:19082/resources/article-image/2023/06/01/25e8ee26-28d7-4f16-843e-b43ebc68ae62.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (50, 1, 'root', 5, '禁忌', '中国奶茶发源地',
        '内蒙古是游牧民族的故乡，也是奶茶（蒙古奶茶）的最初发源地。蒙古高原和中亚地区的奶茶千百年来从未改变，至今仍然是日常饮用及待客的必备饮料。其他地区则有不同口味的奶茶，如印度奶茶以加入玛萨拉的特殊香料闻名；发源于香港的丝袜奶茶和发源于台湾的珍珠奶茶也独具特色。',
        'http://localhost:19082/resources/article-image/2023/06/01/ff947d6d-d652-49cd-b000-469c6646cd31.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (51, 1, 'root', 5, '禁忌', '中国四大毛尖是哪四种', '中国四大毛尖分别为信阳毛尖、都匀毛尖、古丈毛尖、沩山毛尖。
信阳毛尖：外形细、圆、光、直、多白毫，香高持久，滋味浓醇。
都匀毛尖：紧结纤细卷曲、披毫，色绿翠。香清高，味鲜浓。
古丈毛尖：被誉为"绿茶中的珍品"，特点为紧直多毫、色泽翠绿、滋味醇爽回甘。
沩山毛尖：外形微卷，色泽黄亮油润，白毫显露，汤色橙黄透亮，滋味醇甜爽口。',
        'http://localhost:19082/resources/article-image/2023/06/01/08965a95-3874-4025-9969-82f61065948c.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (52, 1, 'root', 5, '禁忌', '云南红茶有哪些品种',
        '云南红茶品种丰富，有滇红工夫茶、滇红金丝、滇红金针、滇红金螺、滇红金芽、野生红茶、普洱晒红、紫鹃红茶、红碎茶等，其外形各有特定规格，身骨重实，色泽调匀，冲泡后汤色红鲜明亮，金圈突出，香气鲜爽，滋味浓强，富有刺激性，叶底红匀鲜亮，浓、强、鲜为其特色。',
        'http://localhost:19082/resources/article-image/2023/06/01/fe24baf0-c029-412a-94d0-bdf6055d7a72.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (53, 1, 'root', 5, '禁忌', '这份武夷岩茶的简介，建议收藏！',
        '武夷岩茶是产于闽北武夷山岩上乌龙茶类的总称，主要品种有大红袍、水仙、奇种、肉桂、名丛等。其中，最为名贵、品质最优的就是大红袍。',
        'http://localhost:19082/resources/article-image/2023/06/01/547736f5-e1e0-4259-9cbd-44b2e40926eb.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (54, 1, 'root', 5, '禁忌', '单丛蜜兰香介绍',
        '蜜兰香是凤凰单丛十大花蜜香型珍贵名丛之一，是凤凰水仙群体中的杰出单株，属乌龙茶系列，产于广东省潮州市凤凰镇，它的母树距今已经有600多年历史了，它之所以叫做蜜兰香，是因为它的成茶具有浓烈的番薯蜜味，其茶蜜香高锐持久，芝兰香幽雅细长，滋味醇厚回甘，有“浓蜜幽兰”特韵，饮后满口生香，极耐冲泡',
        'http://localhost:19082/resources/article-image/2023/06/01/c6021d14-91f0-457f-9406-4bf6f7e3a8a3.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (55, 1, 'root', 5, '禁忌', '靖安白茶是什么茶',
        '靖安白茶是绿茶中的珍稀品种，又称不发酵茶、白化茶，主产于江西省宜春市靖安县，其成品茶多为二叶一芯嫩芽，在春季发芽时，新梢嫩叶的叶色呈可逆性白化现象，满披白毫，外形条素天然，色为玉霜，光亮油润，肉质自然展开颇具高雅特色。其氨基酸含量是高档绿茶的6-8倍，倍受人们喜爱。',
        'http://localhost:19082/resources/article-image/2023/06/01/0ce4bbb8-f6a2-42d0-b5f8-625118fe4e83.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (56, 1, 'root', 5, '禁忌', '家里种植的金丝菊可以嗮干泡茶吗',
        '家里种植的金丝菊不能嗮干泡茶。菊花茶一般是以鲜嫩菊花花朵作为原料，经过采摘、阴干、生晒蒸晒以及烘培等工序制作而成的，能冲泡饮用。但自家种的菊花为观赏菊，不具备食用属性，虽然进行了晒干，但是未经过正规工艺加工，且成分尚不明确，因此不能直接泡茶。',
        'http://localhost:19082/resources/article-image/2023/06/01/5a9feffd-d02f-495a-a3e7-6c8bdd24a96a.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (57, 1, 'root', 5, '禁忌', '长期收藏白茶，是选择散茶，还是饼茶',
        '白茶，有“一年为茶，三年为宝，七年为药”的说法，因此很多人都喜欢收藏白茶。那收藏散茶好，还是饼茶好呢？',
        'http://localhost:19082/resources/article-image/2023/06/01/4c9b6739-948a-4c84-9328-b8ddf21d49eb.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (58, 1, 'root', 5, '禁忌', '日月潭红茶介绍',
        '日月潭红茶属全发酵茶，产自台湾省南投县鱼池乡，由大叶种茶树鲜叶制作而成，具有形美、香高、味醇等特点。台湾日月潭红茶，干茶外形条索粗壮，色泽乌黑油润，汤色通透明艳，杯壁显金圈，香气醇和，带有兰花香，滋味甘甜，口感醇厚。',
        'http://localhost:19082/resources/article-image/2023/06/01/c0caf9db-4302-4ff6-ae63-ba94c3d21f10.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (59, 1, 'root', 5, '禁忌', '满陇红茶是什么茶',
        '满陇红茶是浙江红茶的一种，产自杭州西湖南的山谷，其茶采用当地小叶种为原料，经萎凋、揉捻、发酵、干燥等工艺制成，成品茶鲜醇甘爽，甜润浓郁，同时具有形美、香高等特点，其茶条索细长卷曲，通体色泽乌润，口感甜醇爽滑，滋味甜润浓郁，兼西湖龙井之清雅，甜香馥郁持久，汤色橙红明亮，清澈洁净。',
        'http://localhost:19082/resources/article-image/2023/06/01/c12ac3bf-7687-46f5-b97e-3bef794b0a3c.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (60, 1, 'root', 5, '禁忌', '357克普洱茶饼尺寸',
        '以357克普洱茶饼为例，其直径一般为18~19厘米，周长58.4厘米，重量为357克（净重），中心厚度2.5厘米，边缘厚度为1厘米左右，以上参数仅供参考，并非绝对值，因为根据不同的厂家，不同的制作工艺，以及形制需求不同，茶饼的规格都存在一定变化和差异，所以并非定数。',
        'http://localhost:19082/resources/article-image/2023/06/01/584a8f58-d6b4-4e7a-885c-7d8f929d2657.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (61, 1, 'root', 6, '茶器', '中国四大毛尖是哪四种', '中国四大毛尖分别为信阳毛尖、都匀毛尖、古丈毛尖、沩山毛尖。
信阳毛尖：外形细、圆、光、直、多白毫，香高持久，滋味浓醇。
都匀毛尖：紧结纤细卷曲、披毫，色绿翠。香清高，味鲜浓。
古丈毛尖：被誉为"绿茶中的珍品"，特点为紧直多毫、色泽翠绿、滋味醇爽回甘。
沩山毛尖：外形微卷，色泽黄亮油润，白毫显露，汤色橙黄透亮，滋味醇甜爽口。',
        'http://localhost:19082/resources/article-image/2023/06/01/08965a95-3874-4025-9969-82f61065948c.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (62, 1, 'root', 6, '茶器', '靖安白茶是什么茶',
        '靖安白茶是绿茶中的珍稀品种，又称不发酵茶、白化茶，主产于江西省宜春市靖安县，其成品茶多为二叶一芯嫩芽，在春季发芽时，新梢嫩叶的叶色呈可逆性白化现象，满披白毫，外形条素天然，色为玉霜，光亮油润，肉质自然展开颇具高雅特色。其氨基酸含量是高档绿茶的6-8倍，倍受人们喜爱。',
        'http://localhost:19082/resources/article-image/2023/06/01/0ce4bbb8-f6a2-42d0-b5f8-625118fe4e83.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (63, 1, 'root', 6, '茶器', '满陇红茶是什么茶',
        '满陇红茶是浙江红茶的一种，产自杭州西湖南的山谷，其茶采用当地小叶种为原料，经萎凋、揉捻、发酵、干燥等工艺制成，成品茶鲜醇甘爽，甜润浓郁，同时具有形美、香高等特点，其茶条索细长卷曲，通体色泽乌润，口感甜醇爽滑，滋味甜润浓郁，兼西湖龙井之清雅，甜香馥郁持久，汤色橙红明亮，清澈洁净。',
        'http://localhost:19082/resources/article-image/2023/06/01/c12ac3bf-7687-46f5-b97e-3bef794b0a3c.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (64, 1, 'root', 6, '茶器', '357克普洱茶饼尺寸',
        '以357克普洱茶饼为例，其直径一般为18~19厘米，周长58.4厘米，重量为357克（净重），中心厚度2.5厘米，边缘厚度为1厘米左右，以上参数仅供参考，并非绝对值，因为根据不同的厂家，不同的制作工艺，以及形制需求不同，茶饼的规格都存在一定变化和差异，所以并非定数。',
        'http://localhost:19082/resources/article-image/2023/06/01/584a8f58-d6b4-4e7a-885c-7d8f929d2657.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (65, 1, 'root', 6, '茶器', '这份武夷岩茶的简介，建议收藏！',
        '武夷岩茶是产于闽北武夷山岩上乌龙茶类的总称，主要品种有大红袍、水仙、奇种、肉桂、名丛等。其中，最为名贵、品质最优的就是大红袍。',
        'http://localhost:19082/resources/article-image/2023/06/01/547736f5-e1e0-4259-9cbd-44b2e40926eb.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (66, 1, 'root', 6, '茶器', '日月潭红茶介绍',
        '日月潭红茶属全发酵茶，产自台湾省南投县鱼池乡，由大叶种茶树鲜叶制作而成，具有形美、香高、味醇等特点。台湾日月潭红茶，干茶外形条索粗壮，色泽乌黑油润，汤色通透明艳，杯壁显金圈，香气醇和，带有兰花香，滋味甘甜，口感醇厚。',
        'http://localhost:19082/resources/article-image/2023/06/01/c0caf9db-4302-4ff6-ae63-ba94c3d21f10.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (67, 1, 'root', 6, '茶器', '单丛蜜兰香介绍',
        '蜜兰香是凤凰单丛十大花蜜香型珍贵名丛之一，是凤凰水仙群体中的杰出单株，属乌龙茶系列，产于广东省潮州市凤凰镇，它的母树距今已经有600多年历史了，它之所以叫做蜜兰香，是因为它的成茶具有浓烈的番薯蜜味，其茶蜜香高锐持久，芝兰香幽雅细长，滋味醇厚回甘，有“浓蜜幽兰”特韵，饮后满口生香，极耐冲泡',
        'http://localhost:19082/resources/article-image/2023/06/01/c6021d14-91f0-457f-9406-4bf6f7e3a8a3.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (68, 1, 'root', 6, '茶器', '中国奶茶发源地',
        '内蒙古是游牧民族的故乡，也是奶茶（蒙古奶茶）的最初发源地。蒙古高原和中亚地区的奶茶千百年来从未改变，至今仍然是日常饮用及待客的必备饮料。其他地区则有不同口味的奶茶，如印度奶茶以加入玛萨拉的特殊香料闻名；发源于香港的丝袜奶茶和发源于台湾的珍珠奶茶也独具特色。',
        'http://localhost:19082/resources/article-image/2023/06/01/ff947d6d-d652-49cd-b000-469c6646cd31.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (69, 1, 'root', 6, '茶器', '长期收藏白茶，是选择散茶，还是饼茶',
        '白茶，有“一年为茶，三年为宝，七年为药”的说法，因此很多人都喜欢收藏白茶。那收藏散茶好，还是饼茶好呢？',
        'http://localhost:19082/resources/article-image/2023/06/01/4c9b6739-948a-4c84-9328-b8ddf21d49eb.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (70, 1, 'root', 6, '茶器', '家里种植的金丝菊可以嗮干泡茶吗',
        '家里种植的金丝菊不能嗮干泡茶。菊花茶一般是以鲜嫩菊花花朵作为原料，经过采摘、阴干、生晒蒸晒以及烘培等工序制作而成的，能冲泡饮用。但自家种的菊花为观赏菊，不具备食用属性，虽然进行了晒干，但是未经过正规工艺加工，且成分尚不明确，因此不能直接泡茶。',
        'http://localhost:19082/resources/article-image/2023/06/01/5a9feffd-d02f-495a-a3e7-6c8bdd24a96a.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (71, 1, 'root', 6, '茶器', '云南红茶有哪些品种',
        '云南红茶品种丰富，有滇红工夫茶、滇红金丝、滇红金针、滇红金螺、滇红金芽、野生红茶、普洱晒红、紫鹃红茶、红碎茶等，其外形各有特定规格，身骨重实，色泽调匀，冲泡后汤色红鲜明亮，金圈突出，香气鲜爽，滋味浓强，富有刺激性，叶底红匀鲜亮，浓、强、鲜为其特色。',
        'http://localhost:19082/resources/article-image/2023/06/01/fe24baf0-c029-412a-94d0-bdf6055d7a72.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (72, 1, 'root', 6, '茶器', '乌龙茶和普洱茶的区别', '乌龙茶和普洱茶在产地、外形、工艺、滋味等几个方面均有区别。
产地：乌龙茶主产于福建、广东、台湾三省，而普洱茶产于云南西双版纳、临沧等地。
外形：乌龙茶干茶卷曲，肥壮匀整，茶毫不显，而普洱茶条索肥壮狭长，白毫显露。
工艺：乌龙茶采用独特的做青工艺，普洱茶为杀青、晒青工艺或渥堆发酵。
滋味：乌龙茶醇爽甘鲜，七泡余香，而普洱茶醇厚饱满，滋味浓强。',
        'http://localhost:19082/resources/article-image/2023/06/01/25e8ee26-28d7-4f16-843e-b43ebc68ae62.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (73, 1, 'root', 7, '文化', '这份武夷岩茶的简介，建议收藏！',
        '武夷岩茶是产于闽北武夷山岩上乌龙茶类的总称，主要品种有大红袍、水仙、奇种、肉桂、名丛等。其中，最为名贵、品质最优的就是大红袍。',
        'http://localhost:19082/resources/article-image/2023/06/01/547736f5-e1e0-4259-9cbd-44b2e40926eb.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (74, 1, 'root', 7, '文化', '乌龙茶和普洱茶的区别', '乌龙茶和普洱茶在产地、外形、工艺、滋味等几个方面均有区别。
产地：乌龙茶主产于福建、广东、台湾三省，而普洱茶产于云南西双版纳、临沧等地。
外形：乌龙茶干茶卷曲，肥壮匀整，茶毫不显，而普洱茶条索肥壮狭长，白毫显露。
工艺：乌龙茶采用独特的做青工艺，普洱茶为杀青、晒青工艺或渥堆发酵。
滋味：乌龙茶醇爽甘鲜，七泡余香，而普洱茶醇厚饱满，滋味浓强。',
        'http://localhost:19082/resources/article-image/2023/06/01/25e8ee26-28d7-4f16-843e-b43ebc68ae62.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (75, 1, 'root', 7, '文化', '云南红茶有哪些品种',
        '云南红茶品种丰富，有滇红工夫茶、滇红金丝、滇红金针、滇红金螺、滇红金芽、野生红茶、普洱晒红、紫鹃红茶、红碎茶等，其外形各有特定规格，身骨重实，色泽调匀，冲泡后汤色红鲜明亮，金圈突出，香气鲜爽，滋味浓强，富有刺激性，叶底红匀鲜亮，浓、强、鲜为其特色。',
        'http://localhost:19082/resources/article-image/2023/06/01/fe24baf0-c029-412a-94d0-bdf6055d7a72.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (76, 1, 'root', 7, '文化', '单丛蜜兰香介绍',
        '蜜兰香是凤凰单丛十大花蜜香型珍贵名丛之一，是凤凰水仙群体中的杰出单株，属乌龙茶系列，产于广东省潮州市凤凰镇，它的母树距今已经有600多年历史了，它之所以叫做蜜兰香，是因为它的成茶具有浓烈的番薯蜜味，其茶蜜香高锐持久，芝兰香幽雅细长，滋味醇厚回甘，有“浓蜜幽兰”特韵，饮后满口生香，极耐冲泡',
        'http://localhost:19082/resources/article-image/2023/06/01/c6021d14-91f0-457f-9406-4bf6f7e3a8a3.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (77, 1, 'root', 7, '文化', '中国奶茶发源地',
        '内蒙古是游牧民族的故乡，也是奶茶（蒙古奶茶）的最初发源地。蒙古高原和中亚地区的奶茶千百年来从未改变，至今仍然是日常饮用及待客的必备饮料。其他地区则有不同口味的奶茶，如印度奶茶以加入玛萨拉的特殊香料闻名；发源于香港的丝袜奶茶和发源于台湾的珍珠奶茶也独具特色。',
        'http://localhost:19082/resources/article-image/2023/06/01/ff947d6d-d652-49cd-b000-469c6646cd31.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (78, 1, 'root', 7, '文化', '中国四大毛尖是哪四种', '中国四大毛尖分别为信阳毛尖、都匀毛尖、古丈毛尖、沩山毛尖。
信阳毛尖：外形细、圆、光、直、多白毫，香高持久，滋味浓醇。
都匀毛尖：紧结纤细卷曲、披毫，色绿翠。香清高，味鲜浓。
古丈毛尖：被誉为"绿茶中的珍品"，特点为紧直多毫、色泽翠绿、滋味醇爽回甘。
沩山毛尖：外形微卷，色泽黄亮油润，白毫显露，汤色橙黄透亮，滋味醇甜爽口。',
        'http://localhost:19082/resources/article-image/2023/06/01/08965a95-3874-4025-9969-82f61065948c.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (79, 1, 'root', 7, '文化', '357克普洱茶饼尺寸',
        '以357克普洱茶饼为例，其直径一般为18~19厘米，周长58.4厘米，重量为357克（净重），中心厚度2.5厘米，边缘厚度为1厘米左右，以上参数仅供参考，并非绝对值，因为根据不同的厂家，不同的制作工艺，以及形制需求不同，茶饼的规格都存在一定变化和差异，所以并非定数。',
        'http://localhost:19082/resources/article-image/2023/06/01/584a8f58-d6b4-4e7a-885c-7d8f929d2657.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (80, 1, 'root', 7, '文化', '日月潭红茶介绍',
        '日月潭红茶属全发酵茶，产自台湾省南投县鱼池乡，由大叶种茶树鲜叶制作而成，具有形美、香高、味醇等特点。台湾日月潭红茶，干茶外形条索粗壮，色泽乌黑油润，汤色通透明艳，杯壁显金圈，香气醇和，带有兰花香，滋味甘甜，口感醇厚。',
        'http://localhost:19082/resources/article-image/2023/06/01/c0caf9db-4302-4ff6-ae63-ba94c3d21f10.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (81, 1, 'root', 7, '文化', '长期收藏白茶，是选择散茶，还是饼茶',
        '白茶，有“一年为茶，三年为宝，七年为药”的说法，因此很多人都喜欢收藏白茶。那收藏散茶好，还是饼茶好呢？',
        'http://localhost:19082/resources/article-image/2023/06/01/4c9b6739-948a-4c84-9328-b8ddf21d49eb.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (82, 1, 'root', 7, '文化', '家里种植的金丝菊可以嗮干泡茶吗',
        '家里种植的金丝菊不能嗮干泡茶。菊花茶一般是以鲜嫩菊花花朵作为原料，经过采摘、阴干、生晒蒸晒以及烘培等工序制作而成的，能冲泡饮用。但自家种的菊花为观赏菊，不具备食用属性，虽然进行了晒干，但是未经过正规工艺加工，且成分尚不明确，因此不能直接泡茶。',
        'http://localhost:19082/resources/article-image/2023/06/01/5a9feffd-d02f-495a-a3e7-6c8bdd24a96a.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (83, 1, 'root', 7, '文化', '满陇红茶是什么茶',
        '满陇红茶是浙江红茶的一种，产自杭州西湖南的山谷，其茶采用当地小叶种为原料，经萎凋、揉捻、发酵、干燥等工艺制成，成品茶鲜醇甘爽，甜润浓郁，同时具有形美、香高等特点，其茶条索细长卷曲，通体色泽乌润，口感甜醇爽滑，滋味甜润浓郁，兼西湖龙井之清雅，甜香馥郁持久，汤色橙红明亮，清澈洁净。',
        'http://localhost:19082/resources/article-image/2023/06/01/c12ac3bf-7687-46f5-b97e-3bef794b0a3c.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (84, 1, 'root', 7, '文化', '靖安白茶是什么茶',
        '靖安白茶是绿茶中的珍稀品种，又称不发酵茶、白化茶，主产于江西省宜春市靖安县，其成品茶多为二叶一芯嫩芽，在春季发芽时，新梢嫩叶的叶色呈可逆性白化现象，满披白毫，外形条素天然，色为玉霜，光亮油润，肉质自然展开颇具高雅特色。其氨基酸含量是高档绿茶的6-8倍，倍受人们喜爱。',
        'http://localhost:19082/resources/article-image/2023/06/01/0ce4bbb8-f6a2-42d0-b5f8-625118fe4e83.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (85, 1, 'root', 8, '花茶', '家里种植的金丝菊可以嗮干泡茶吗',
        '家里种植的金丝菊不能嗮干泡茶。菊花茶一般是以鲜嫩菊花花朵作为原料，经过采摘、阴干、生晒蒸晒以及烘培等工序制作而成的，能冲泡饮用。但自家种的菊花为观赏菊，不具备食用属性，虽然进行了晒干，但是未经过正规工艺加工，且成分尚不明确，因此不能直接泡茶。',
        'http://localhost:19082/resources/article-image/2023/06/01/5a9feffd-d02f-495a-a3e7-6c8bdd24a96a.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (86, 1, 'root', 8, '花茶', '单丛蜜兰香介绍',
        '蜜兰香是凤凰单丛十大花蜜香型珍贵名丛之一，是凤凰水仙群体中的杰出单株，属乌龙茶系列，产于广东省潮州市凤凰镇，它的母树距今已经有600多年历史了，它之所以叫做蜜兰香，是因为它的成茶具有浓烈的番薯蜜味，其茶蜜香高锐持久，芝兰香幽雅细长，滋味醇厚回甘，有“浓蜜幽兰”特韵，饮后满口生香，极耐冲泡',
        'http://localhost:19082/resources/article-image/2023/06/01/c6021d14-91f0-457f-9406-4bf6f7e3a8a3.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (87, 1, 'root', 8, '花茶', '满陇红茶是什么茶',
        '满陇红茶是浙江红茶的一种，产自杭州西湖南的山谷，其茶采用当地小叶种为原料，经萎凋、揉捻、发酵、干燥等工艺制成，成品茶鲜醇甘爽，甜润浓郁，同时具有形美、香高等特点，其茶条索细长卷曲，通体色泽乌润，口感甜醇爽滑，滋味甜润浓郁，兼西湖龙井之清雅，甜香馥郁持久，汤色橙红明亮，清澈洁净。',
        'http://localhost:19082/resources/article-image/2023/06/01/c12ac3bf-7687-46f5-b97e-3bef794b0a3c.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (88, 1, 'root', 8, '花茶', '日月潭红茶介绍',
        '日月潭红茶属全发酵茶，产自台湾省南投县鱼池乡，由大叶种茶树鲜叶制作而成，具有形美、香高、味醇等特点。台湾日月潭红茶，干茶外形条索粗壮，色泽乌黑油润，汤色通透明艳，杯壁显金圈，香气醇和，带有兰花香，滋味甘甜，口感醇厚。',
        'http://localhost:19082/resources/article-image/2023/06/01/c0caf9db-4302-4ff6-ae63-ba94c3d21f10.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (89, 1, 'root', 8, '花茶', '靖安白茶是什么茶',
        '靖安白茶是绿茶中的珍稀品种，又称不发酵茶、白化茶，主产于江西省宜春市靖安县，其成品茶多为二叶一芯嫩芽，在春季发芽时，新梢嫩叶的叶色呈可逆性白化现象，满披白毫，外形条素天然，色为玉霜，光亮油润，肉质自然展开颇具高雅特色。其氨基酸含量是高档绿茶的6-8倍，倍受人们喜爱。',
        'http://localhost:19082/resources/article-image/2023/06/01/0ce4bbb8-f6a2-42d0-b5f8-625118fe4e83.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (90, 1, 'root', 8, '花茶', '长期收藏白茶，是选择散茶，还是饼茶',
        '白茶，有“一年为茶，三年为宝，七年为药”的说法，因此很多人都喜欢收藏白茶。那收藏散茶好，还是饼茶好呢？',
        'http://localhost:19082/resources/article-image/2023/06/01/4c9b6739-948a-4c84-9328-b8ddf21d49eb.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (91, 1, 'root', 8, '花茶', '357克普洱茶饼尺寸',
        '以357克普洱茶饼为例，其直径一般为18~19厘米，周长58.4厘米，重量为357克（净重），中心厚度2.5厘米，边缘厚度为1厘米左右，以上参数仅供参考，并非绝对值，因为根据不同的厂家，不同的制作工艺，以及形制需求不同，茶饼的规格都存在一定变化和差异，所以并非定数。',
        'http://localhost:19082/resources/article-image/2023/06/01/584a8f58-d6b4-4e7a-885c-7d8f929d2657.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (92, 1, 'root', 8, '花茶', '中国四大毛尖是哪四种', '中国四大毛尖分别为信阳毛尖、都匀毛尖、古丈毛尖、沩山毛尖。
信阳毛尖：外形细、圆、光、直、多白毫，香高持久，滋味浓醇。
都匀毛尖：紧结纤细卷曲、披毫，色绿翠。香清高，味鲜浓。
古丈毛尖：被誉为"绿茶中的珍品"，特点为紧直多毫、色泽翠绿、滋味醇爽回甘。
沩山毛尖：外形微卷，色泽黄亮油润，白毫显露，汤色橙黄透亮，滋味醇甜爽口。',
        'http://localhost:19082/resources/article-image/2023/06/01/08965a95-3874-4025-9969-82f61065948c.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (93, 1, 'root', 8, '花茶', '中国奶茶发源地',
        '内蒙古是游牧民族的故乡，也是奶茶（蒙古奶茶）的最初发源地。蒙古高原和中亚地区的奶茶千百年来从未改变，至今仍然是日常饮用及待客的必备饮料。其他地区则有不同口味的奶茶，如印度奶茶以加入玛萨拉的特殊香料闻名；发源于香港的丝袜奶茶和发源于台湾的珍珠奶茶也独具特色。',
        'http://localhost:19082/resources/article-image/2023/06/01/ff947d6d-d652-49cd-b000-469c6646cd31.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (94, 1, 'root', 8, '花茶', '乌龙茶和普洱茶的区别', '乌龙茶和普洱茶在产地、外形、工艺、滋味等几个方面均有区别。
产地：乌龙茶主产于福建、广东、台湾三省，而普洱茶产于云南西双版纳、临沧等地。
外形：乌龙茶干茶卷曲，肥壮匀整，茶毫不显，而普洱茶条索肥壮狭长，白毫显露。
工艺：乌龙茶采用独特的做青工艺，普洱茶为杀青、晒青工艺或渥堆发酵。
滋味：乌龙茶醇爽甘鲜，七泡余香，而普洱茶醇厚饱满，滋味浓强。',
        'http://localhost:19082/resources/article-image/2023/06/01/25e8ee26-28d7-4f16-843e-b43ebc68ae62.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (95, 1, 'root', 8, '花茶', '云南红茶有哪些品种',
        '云南红茶品种丰富，有滇红工夫茶、滇红金丝、滇红金针、滇红金螺、滇红金芽、野生红茶、普洱晒红、紫鹃红茶、红碎茶等，其外形各有特定规格，身骨重实，色泽调匀，冲泡后汤色红鲜明亮，金圈突出，香气鲜爽，滋味浓强，富有刺激性，叶底红匀鲜亮，浓、强、鲜为其特色。',
        'http://localhost:19082/resources/article-image/2023/06/01/fe24baf0-c029-412a-94d0-bdf6055d7a72.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');
INSERT INTO content_article (id, author_id, author_name, category_id, category_name, title, brief, cover_url, keywords,
                             ip, sort, up_count, down_count, click_count, comment_count, check_state, is_display,
                             is_recommend, gmt_create, gmt_modified)
VALUES (96, 1, 'root', 8, '花茶', '这份武夷岩茶的简介，建议收藏！',
        '武夷岩茶是产于闽北武夷山岩上乌龙茶类的总称，主要品种有大红袍、水仙、奇种、肉桂、名丛等。其中，最为名贵、品质最优的就是大红袍。',
        'http://localhost:19082/resources/article-image/2023/06/01/547736f5-e1e0-4259-9cbd-44b2e40926eb.png',
        '[{"id":26, "name":"经验"}]', '127.0.0.1', 99, 0, 0, 0, 0, 1, 1, 0, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00');

TRUNCATE content_article_detail;
INSERT INTO content_article_detail
VALUES (1, 1,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情1</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (2, 2,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情2</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (3, 3,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情3</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (4, 4,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情4</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (5, 5,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情5</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (6, 6,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情6</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (7, 7,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情7</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (8, 8,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情8</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (9, 9,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情9</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (10, 10,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情10</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (11, 11,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情11</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (12, 12,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情12</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (13, 13,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情13</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (14, 14,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情14</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (15, 15,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情15</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (16, 16,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情16</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (17, 17,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情17</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (18, 18,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情18</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (19, 19,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情19</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (20, 20,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情20</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (21, 21,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情21</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (22, 22,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情22</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (23, 23,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情23</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (24, 24,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情24</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (25, 25,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情25</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (26, 26,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情26</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (27, 27,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情27</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (28, 28,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情28</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (29, 29,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情29</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (30, 30,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情30</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (31, 31,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情31</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (32, 32,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情32</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (33, 33,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情33</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (34, 34,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情34</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (35, 35,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情35</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (36, 36,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情36</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (37, 37,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情37</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (38, 38,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情38</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (39, 39,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情39</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (40, 40,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情40</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (41, 41,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情41</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (42, 42,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情42</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (43, 43,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情43</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (44, 44,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情44</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (45, 45,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情45</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (46, 46,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情46</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (47, 47,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情47</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (48, 48,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情48</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (49, 49,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情49</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (50, 50,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情50</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (51, 51,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情51</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (52, 52,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情52</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (53, 53,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情53</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (54, 54,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情54</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (55, 55,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情55</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (56, 56,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情56</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (57, 57,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情57</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (58, 58,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情58</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (59, 59,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情59</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (60, 60,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情60</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (61, 61,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情61</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (62, 62,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情62</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (63, 63,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情63</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (64, 64,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情64</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (65, 65,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情65</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (66, 66,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情66</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (67, 67,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情67</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (68, 68,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情68</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (69, 69,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情69</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (70, 70,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情70</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (71, 71,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情71</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (72, 72,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情72</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (73, 73,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情73</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (74, 74,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情74</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (75, 75,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情75</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (76, 76,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情76</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (77, 77,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情77</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (78, 78,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情78</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (79, 79,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情79</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (80, 80,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情80</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (81, 81,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情81</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (82, 82,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情82</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (83, 83,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情83</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (84, 84,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情84</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (85, 85,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情85</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (86, 86,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情86</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (87, 87,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情87</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (88, 88,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情88</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (89, 89,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情89</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (90, 90,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情90</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (91, 91,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情91</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (92, 92,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情92</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (93, 93,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情93</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (94, 94,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情94</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (95, 95,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情95</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (96, 96,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情96</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (97, 97,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情97</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (98, 98,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情98</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (99, 99,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情99</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (100, 100,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情100</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (101, 101,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情101</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (102, 102,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情102</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (103, 103,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情103</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (104, 104,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情104</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (105, 105,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情105</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (106, 106,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情106</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (107, 107,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情107</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00'),
       (108, 108,
        '<h1 data-we-empty-p="" id="vzupv">测试文章详情108</h1><blockquote><p>你可以自由的对文章详情进行图文混排。<br/></p></blockquote><p>关于图文混排，你可以：</p><ul><li>段落排版</li><li>字符排版</li><li>添加超链接</li><li>添加引用</li><li>添加预定义表情</li><li>上传图片或直接插入图片</li><li>添加视频</li><li>添加表格</li><li>其它<br/></li></ul>',
        '2023-06-01 08:00:00', '2023-06-01 08:00:00')
;

TRUNCATE content_comment;
INSERT INTO content_comment
VALUES (1, 1, 'root', 0, 1, '第1篇文章不错1', '', '127.0.0.1', 1, 0, 0, 1, 1, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00'),
       (2, 1, 'root', 0, 1, '第1篇文章很不错2', '', '127.0.0.1', 2, 0, 0, 1, 1, '2023-06-01 08:10:00',
        '2023-06-01 08:10:00'),
       (3, 1, 'root', 0, 1, '第1篇文章真不错3', '', '127.0.0.1', 3, 0, 0, 1, 1, '2023-06-01 08:20:00',
        '2023-06-01 08:20:00'),
       (4, 1, 'root', 0, 1, '第1篇文章非常不错4', '', '127.0.0.1', 4, 0, 0, 1, 1, '2023-06-01 08:30:00',
        '2023-06-01 08:30:00'),
       (5, 1, 'root', 0, 1, '第1篇文章特别不错5', '', '127.0.0.1', 5, 0, 0, 1, 1, '2023-06-01 08:40:00',
        '2023-06-01 08:40:00'),
       (6, 1, 'root', 0, 1, '第1篇文章一般6', '', '127.0.0.1', 6, 0, 0, 1, 1, '2023-06-01 09:00:00',
        '2023-06-01 09:00:00'),
       (7, 1, 'root', 0, 1, '第1篇文章很一般7', '', '127.0.0.1', 7, 0, 0, 1, 1, '2023-06-01 09:10:00',
        '2023-06-01 09:10:00'),
       (8, 1, 'root', 0, 1, '第1篇文章真的一般8', '', '127.0.0.1', 8, 0, 0, 1, 1, '2023-06-01 09:20:00',
        '2023-06-01 09:20:00'),
       (9, 1, 'root', 0, 1, '第1篇文章非常一般9', '', '127.0.0.1', 9, 0, 0, 1, 1, '2023-06-01 09:30:00',
        '2023-06-01 09:30:00'),
       (10, 1, 'root', 0, 1, '第1篇文章特别一般10', '', '127.0.0.1', 10, 0, 0, 1, 1, '2023-06-01 09:40:00',
        '2023-06-01 09:40:00'),

       (11, 1, 'root', 0, 2, '第2篇文章不错1', '', '127.0.0.1', 1, 0, 0, 1, 1, '2023-06-01 08:00:00',
        '2023-06-01 08:00:00'),
       (12, 1, 'root', 0, 2, '第2篇文章很不错2', '', '127.0.0.1', 2, 0, 0, 1, 1, '2023-06-01 08:10:00',
        '2023-06-01 08:10:00'),
       (13, 1, 'root', 0, 2, '第2篇文章真不错3', '', '127.0.0.1', 3, 0, 0, 1, 1, '2023-06-01 08:20:00',
        '2023-06-01 08:20:00'),
       (14, 1, 'root', 0, 2, '第2篇文章非常不错4', '', '127.0.0.1', 4, 0, 0, 1, 1, '2023-06-01 08:30:00',
        '2023-06-01 08:30:00'),
       (15, 1, 'root', 0, 2, '第2篇文章特别不错5', '', '127.0.0.1', 5, 0, 0, 1, 1, '2023-06-01 08:40:00',
        '2023-06-01 08:40:00'),
       (16, 1, 'root', 0, 2, '第2篇文章一般6', '', '127.0.0.1', 6, 0, 0, 1, 1, '2023-06-01 09:00:00',
        '2023-06-01 09:00:00'),
       (17, 1, 'root', 0, 2, '第2篇文章很一般7', '', '127.0.0.1', 7, 0, 0, 1, 1, '2023-06-01 09:10:00',
        '2023-06-01 09:10:00'),
       (18, 1, 'root', 0, 2, '第2篇文章真的一般8', '', '127.0.0.1', 8, 0, 0, 1, 1, '2023-06-01 09:20:00',
        '2023-06-01 09:20:00'),
       (19, 1, 'root', 0, 2, '第2篇文章非常一般9', '', '127.0.0.1', 9, 0, 0, 1, 1, '2023-06-01 09:30:00',
        '2023-06-01 09:30:00'),
       (20, 1, 'root', 0, 2, '第2篇文章特别一般10', '', '127.0.0.1', 10, 0, 0, 1, 1, '2023-06-01 09:40:00',
        '2023-06-01 09:40:00')
;