-- 执行脚本提示：请在IntelliJ IDEA中打开此文件，确保已经创建数据库并配置Database面板，对此文件点击鼠标右键，选择“Run 文件名”，即可执行此脚本

-- 执行脚本提示：此脚本未创建任何索引，如果需要，请自行手动创建

/*
*********************************************************************
省市区字典数据表，原始数据：https://github.com/eduosi/district
*********************************************************************
当需要导入当前表数据时，可以：
- 登录MySQL客户端，例如在终端下执行：mysql -u root -proot
- 切换到当前数据库，例如：use tedu_tea_store
- 通过source命令直接导入当前脚本，例如：source d:/a.sql
或者：
- 在IntelliJ IDEA中事先配置Database面板连接到数据库，
_ 对IntelliJ IDEA中左侧文件列表中的此文件点右键，或打开当前文件在代码编辑区的空白处点右键，选择：Run create_table_dict_district.sql
- 在弹出的对话框中选择Database面板中配置的数据源，点击执行即可
*/

DROP TABLE IF EXISTS `dict_district`;
CREATE TABLE `dict_district`
(
    id        BIGINT UNSIGNED AUTO_INCREMENT COMMENT '数据ID',
    parent_id BIGINT UNSIGNED DEFAULT 0 COMMENT '父级单位ID',
    code      VARCHAR(32)     DEFAULT '' COMMENT '行政代码',
    name      VARCHAR(256)    DEFAULT '' COMMENT '名称',
    suffix    VARCHAR(64)     DEFAULT '' COMMENT '名称后缀',
    pinyin    VARCHAR(256)    DEFAULT '' COMMENT '名称拼音',
    sort      INT             DEFAULT 0 COMMENT '排序序号',
    PRIMARY KEY (id)
) CHARSET = utf8mb4 COMMENT '省市区字典';

INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1, 0, '110000', '北京', '市', 'beijing', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2, 0, '120000', '天津', '市', 'tianjin', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3, 0, '310000', '上海', '市', 'shanghai', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (4, 0, '500000', '重庆', '市', 'chongqing', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (5, 0, '130000', '河北', '省', 'hebei', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (6, 0, '140000', '山西', '省', 'shanxi', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (7, 0, '150000', '内蒙古', '自治区', 'neimenggu', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (8, 0, '210000', '辽宁', '省', 'liaoning', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (9, 0, '220000', '吉林', '省', 'jilin', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (10, 0, '230000', '黑龙江', '省', 'heilongjiang', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (11, 0, '320000', '江苏', '省', 'jiangsu', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (12, 0, '330000', '浙江', '省', 'zhejiang', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (13, 0, '340000', '安徽', '省', 'anhui', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (14, 0, '350000', '福建', '省', 'fujian', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (15, 0, '360000', '江西', '省', 'jiangxi', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (16, 0, '370000', '山东', '省', 'shandong', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (17, 0, '410000', '河南', '省', 'henan', 17);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (18, 0, '420000', '湖北', '省', 'hubei', 18);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (19, 0, '430000', '湖南', '省', 'hunan', 19);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (20, 0, '440000', '广东', '省', 'guangdong', 20);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (21, 0, '450000', '广西', '自治区', 'guangxi', 21);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (22, 0, '460000', '海南', '省', 'hainan', 22);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (23, 0, '510000', '四川', '省', 'sichuan', 23);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (24, 0, '520000', '贵州', '省', 'guizhou', 24);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (25, 0, '530000', '云南', '省', 'yunnan', 25);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (26, 0, '540000', '西藏', '自治区', 'xizang', 26);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (27, 0, '610000', '陕西', '省', 'shanxi', 27);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (28, 0, '620000', '甘肃', '省', 'gansu', 28);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (29, 0, '630000', '青海', '省', 'qinghai', 29);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (30, 0, '640000', '宁夏', '自治区', 'ningxia', 30);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (31, 0, '650000', '新疆', '自治区', 'xinjiang', 31);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (32, 0, '710000', '台湾', '省', 'taiwan', 32);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (33, 0, '810000', '香港', '特别行政区', 'xianggang', 33);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (34, 0, '820000', '澳门', '特别行政区', 'aomen', 34);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (35, 0, '', '海外', '', 'haiwai', 35);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (36, 1, '110101', '东城', '区', 'dongcheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (37, 1, '110102', '西城', '区', 'xicheng', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (40, 1, '110105', '朝阳', '区', 'chaoyang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (41, 1, '110106', '丰台', '区', 'fengtai', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (42, 1, '110107', '石景山', '区', 'shijingshan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (43, 1, '110108', '海淀', '区', 'haidian', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (44, 1, '110109', '门头沟', '区', 'mentougou', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (45, 1, '110111', '房山', '区', 'fangshan', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (46, 1, '110112', '通州', '区', 'tongzhou', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (47, 1, '110113', '顺义', '区', 'shunyi', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (48, 1, '110114', '昌平', '区', 'changping', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (49, 1, '110115', '大兴', '区', 'daxing', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (50, 1, '110116', '怀柔', '区', 'huairou', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (51, 1, '110117', '平谷', '区', 'pinggu', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (52, 1, '110228', '密云', '区', 'miyun', 17);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (53, 1, '110229', '延庆', '区', 'yanqing', 18);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (54, 2, '120101', '和平', '区', 'heping', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (55, 2, '120102', '河东', '区', 'hedong', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (56, 2, '120103', '河西', '区', 'hexi', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (57, 2, '120104', '南开', '区', 'nankai', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (58, 2, '120105', '河北', '区', 'hebei', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (59, 2, '120106', '红桥', '区', 'hongqiao', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (60, 2, '120110', '东丽', '区', 'dongli', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (61, 2, '120111', '西青', '区', 'xiqing', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (62, 2, '120112', '津南', '区', 'jinnan', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (63, 2, '120113', '北辰', '区', 'beichen', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (64, 2, '120114', '武清', '区', 'wuqing', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (65, 2, '120115', '宝坻', '区', 'baochi', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (66, 2, '120116', '滨海新区', '', 'binhaixinqu', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (67, 2, '120117', '宁河', '区', 'ninghe', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (68, 2, '120119', '蓟州', '区', 'jizhou', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (69, 2, '120118', '静海', '区', 'jinghai', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (70, 3, '310101', '黄浦', '区', 'huangpu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (71, 3, '310104', '徐汇', '区', 'xuhui', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (72, 3, '310105', '长宁', '区', 'changning', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (73, 3, '310106', '静安', '区', 'jingan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (74, 3, '310107', '普陀', '区', 'putuo', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (76, 3, '310109', '虹口', '区', 'hongkou', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (77, 3, '310110', '杨浦', '区', 'yangpu', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (78, 3, '310112', '闵行', '区', 'minxing', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (79, 3, '310113', '宝山', '区', 'baoshan', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (80, 3, '310114', '嘉定', '区', 'jiading', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (81, 3, '310115', '浦东新区', '', 'pudongxinqu', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (82, 3, '310116', '金山', '区', 'jinshan', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (83, 3, '310117', '松江', '区', 'songjiang', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (84, 3, '310118', '青浦', '区', 'qingpu', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (85, 3, '310120', '奉贤', '区', 'fengxian', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (86, 3, '310151', '崇明', '区', 'chongming', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (87, 4, '500101', '万州', '区', 'wanzhou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (88, 4, '500102', '涪陵', '区', 'fuling', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (89, 4, '500103', '渝中', '区', 'yuzhong', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (90, 4, '500104', '大渡口', '区', 'dadukou', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (91, 4, '500105', '江北', '区', 'jiangbei', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (92, 4, '500106', '沙坪坝', '区', 'shapingba', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (93, 4, '500107', '九龙坡', '区', 'jiulongpo', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (94, 4, '500108', '南岸', '区', 'nanan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (95, 4, '500109', '北碚', '区', 'beibei', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (96, 4, '500110', '綦江', '区', 'qijiang', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (97, 4, '500111', '大足', '区', 'dazu', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (98, 4, '500112', '渝北', '区', 'yubei', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (99, 4, '500113', '巴南', '区', 'banan', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (100, 4, '500114', '黔江', '区', 'qianjiang', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (101, 4, '500115', '长寿', '区', 'changshou', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (102, 4, '500116', '江津', '区', 'jiangjin', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (103, 4, '500117', '合川', '区', 'hechuan', 17);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (104, 4, '500118', '永川', '区', 'yongchuan', 18);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (105, 4, '500119', '南川', '区', 'nanchuan', 19);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (106, 4, '500223', '潼南', '区', 'tongnan', 25);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (107, 4, '500151', '铜梁', '区', 'tongliang', 21);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (108, 4, '500226', '荣昌', '区', 'rongchang', 26);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (109, 4, '500120', '璧山', '区', 'bishan', 20);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (110, 4, '500155', '梁平', '区', 'liangping', 23);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (111, 4, '500229', '城口', '县', 'chengkou', 27);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (112, 4, '500230', '丰都', '县', 'fengdu', 28);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (113, 4, '500231', '垫江', '县', 'dianjiang', 29);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (114, 4, '500156', '武隆', '区', 'wulong', 24);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (115, 4, '500233', '忠县', '', 'zhongxian', 30);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (116, 4, '500154', '开州', '区', 'kaizhou', 22);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (117, 4, '500235', '云阳', '县', 'yunyang', 31);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (118, 4, '500236', '奉节', '县', 'fengjie', 32);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (119, 4, '500237', '巫山', '县', 'wushan', 33);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (120, 4, '500238', '巫溪', '县', 'wuxi', 34);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (121, 4, '500240', '石柱', '自治县', 'shizhu', 35);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (122, 4, '500241', '秀山', '自治县', 'xiushan', 36);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (123, 4, '500242', '酉阳', '自治县', 'youyang', 37);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (124, 4, '500243', '彭水', '自治县', 'pengshui', 38);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (125, 5, '130100', '石家庄', '市', 'shijiazhuang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (126, 5, '130200', '唐山', '市', 'tangshan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (127, 5, '130300', '秦皇岛', '市', 'qinhuangdao', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (128, 5, '130400', '邯郸', '市', 'handan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (129, 5, '130500', '邢台', '市', 'xingtai', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (130, 5, '130600', '保定', '市', 'baoding', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (131, 5, '130700', '张家口', '市', 'zhangjiakou', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (132, 5, '130800', '承德', '市', 'chengde', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (133, 5, '130900', '沧州', '市', 'cangzhou', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (134, 5, '131000', '廊坊', '市', 'langfang', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (135, 5, '131100', '衡水', '市', 'hengshui', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (136, 6, '140100', '太原', '市', 'taiyuan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (137, 6, '140200', '大同', '市', 'datong', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (138, 6, '140300', '阳泉', '市', 'yangquan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (139, 6, '140400', '长治', '市', 'changzhi', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (140, 6, '140500', '晋城', '市', 'jincheng', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (141, 6, '140600', '朔州', '市', 'shuozhou', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (142, 6, '140700', '晋中', '市', 'jinzhong', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (143, 6, '140800', '运城', '市', 'yuncheng', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (144, 6, '140900', '忻州', '市', 'xinzhou', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (145, 6, '141000', '临汾', '市', 'linfen', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (146, 6, '141100', '吕梁', '市', 'lvliang', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (147, 7, '150100', '呼和浩特', '市', 'huhehaote', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (148, 7, '150200', '包头', '市', 'baotou', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (149, 7, '150300', '乌海', '市', 'wuhai', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (150, 7, '150400', '赤峰', '市', 'chifeng', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (151, 7, '150500', '通辽', '市', 'tongliao', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (152, 7, '150600', '鄂尔多斯', '市', 'eerduosi', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (153, 7, '150700', '呼伦贝尔', '市', 'hulunbeier', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (154, 7, '150800', '巴彦淖尔', '市', 'bayannaoer', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (155, 7, '150900', '乌兰察布', '市', 'wulanchabu', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (156, 7, '152200', '兴安', '盟', 'xingan', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (157, 7, '152500', '锡林郭勒', '盟', 'xilinguole', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (158, 7, '152900', '阿拉善', '盟', 'alashan', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (159, 8, '210100', '沈阳', '市', 'shenyang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (160, 8, '210200', '大连', '市', 'dalian', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (161, 8, '210300', '鞍山', '市', 'anshan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (162, 8, '210400', '抚顺', '市', 'fushun', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (163, 8, '210500', '本溪', '市', 'benxi', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (164, 8, '210600', '丹东', '市', 'dandong', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (165, 8, '210700', '锦州', '市', 'jinzhou', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (166, 8, '210800', '营口', '市', 'yingkou', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (167, 8, '210900', '阜新', '市', 'fuxin', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (168, 8, '211000', '辽阳', '市', 'liaoyang', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (169, 8, '211100', '盘锦', '市', 'panjin', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (170, 8, '211200', '铁岭', '市', 'tieling', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (171, 8, '211300', '朝阳', '市', 'chaoyang', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (172, 8, '211400', '葫芦岛', '市', 'huludao', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (173, 9, '220100', '长春', '市', 'changchun', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (174, 9, '220200', '吉林', '市', 'jilin', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (175, 9, '220300', '四平', '市', 'siping', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (176, 9, '220400', '辽源', '市', 'liaoyuan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (177, 9, '220500', '通化', '市', 'tonghua', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (178, 9, '220600', '白山', '市', 'baishan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (179, 9, '220700', '松原', '市', 'songyuan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (180, 9, '220800', '白城', '市', 'baicheng', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (181, 9, '222400', '延边', '自治州', 'yanbian', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (182, 10, '230100', '哈尔滨', '市', 'haerbin', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (183, 10, '230200', '齐齐哈尔', '市', 'qiqihaer', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (184, 10, '230300', '鸡西', '市', 'jixi', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (185, 10, '230400', '鹤岗', '市', 'hegang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (186, 10, '230500', '双鸭山', '市', 'shuangyashan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (187, 10, '230600', '大庆', '市', 'daqing', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (188, 10, '230700', '伊春', '市', 'yichun', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (189, 10, '230800', '佳木斯', '市', 'jiamusi', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (190, 10, '230900', '七台河', '市', 'qitaihe', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (191, 10, '231000', '牡丹江', '市', 'mudanjiang', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (192, 10, '231100', '黑河', '市', 'heihe', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (193, 10, '231200', '绥化', '市', 'suihua', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (194, 10, '232700', '大兴安岭', '地区', 'daxinganling', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (195, 11, '320100', '南京', '市', 'nanjing', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (196, 11, '320200', '无锡', '市', 'wuxi', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (197, 11, '320300', '徐州', '市', 'xuzhou', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (198, 11, '320400', '常州', '市', 'changzhou', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (199, 11, '320500', '苏州', '市', 'suzhou', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (200, 11, '320600', '南通', '市', 'nantong', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (201, 11, '320700', '连云港', '市', 'lianyungang', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (202, 11, '320800', '淮安', '市', 'huaian', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (203, 11, '320900', '盐城', '市', 'yancheng', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (204, 11, '321000', '扬州', '市', 'yangzhou', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (205, 11, '321100', '镇江', '市', 'zhenjiang', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (206, 11, '321200', '泰州', '市', 'taizhou', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (207, 11, '321300', '宿迁', '市', 'suqian', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (208, 12, '330100', '杭州', '市', 'hangzhou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (209, 12, '330200', '宁波', '市', 'ningbo', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (210, 12, '330300', '温州', '市', 'wenzhou', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (211, 12, '330400', '嘉兴', '市', 'jiaxing', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (212, 12, '330500', '湖州', '市', 'huzhou', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (213, 12, '330600', '绍兴', '市', 'shaoxing', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (214, 12, '330700', '金华', '市', 'jinhua', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (215, 12, '330800', '衢州', '市', 'quzhou', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (216, 12, '330900', '舟山', '市', 'zhoushan', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (217, 12, '331000', '台州', '市', 'taizhou', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (218, 12, '331100', '丽水', '市', 'lishui', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (219, 13, '340100', '合肥', '市', 'hefei', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (220, 13, '340200', '芜湖', '市', 'wuhu', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (221, 13, '340300', '蚌埠', '市', 'bengbu', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (222, 13, '340400', '淮南', '市', 'huainan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (223, 13, '340500', '马鞍山', '市', 'maanshan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (224, 13, '340600', '淮北', '市', 'huaibei', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (225, 13, '340700', '铜陵', '市', 'tongling', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (226, 13, '340800', '安庆', '市', 'anqing', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (227, 13, '341000', '黄山', '市', 'huangshan', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (228, 13, '341100', '滁州', '市', 'chuzhou', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (229, 13, '341200', '阜阳', '市', 'fuyang', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (230, 13, '341300', '宿州', '市', 'suzhou', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (231, 13, '341500', '六安', '市', 'liuan', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (232, 13, '341600', '亳州', '市', 'bozhou', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (233, 13, '341700', '池州', '市', 'chizhou', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (234, 13, '341800', '宣城', '市', 'xuancheng', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (235, 14, '350100', '福州', '市', 'fuzhou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (236, 14, '350200', '厦门', '市', 'xiamen', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (237, 14, '350300', '莆田', '市', 'putian', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (238, 14, '350400', '三明', '市', 'sanming', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (239, 14, '350500', '泉州', '市', 'quanzhou', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (240, 14, '350600', '漳州', '市', 'zhangzhou', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (241, 14, '350700', '南平', '市', 'nanping', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (242, 14, '350800', '龙岩', '市', 'longyan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (243, 14, '350900', '宁德', '市', 'ningde', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (244, 15, '360100', '南昌', '市', 'nanchang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (245, 15, '360200', '景德镇', '市', 'jingdezhen', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (246, 15, '360300', '萍乡', '市', 'pingxiang', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (247, 15, '360400', '九江', '市', 'jiujiang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (248, 15, '360500', '新余', '市', 'xinyu', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (249, 15, '360600', '鹰潭', '市', 'yingtan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (250, 15, '360700', '赣州', '市', 'ganzhou', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (251, 15, '360800', '吉安', '市', 'jian', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (252, 15, '360900', '宜春', '市', 'yichun', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (253, 15, '361000', '抚州', '市', 'fuzhou', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (254, 15, '361100', '上饶', '市', 'shangrao', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (255, 16, '370100', '济南', '市', 'jinan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (256, 16, '370200', '青岛', '市', 'qingdao', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (257, 16, '370300', '淄博', '市', 'zibo', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (258, 16, '370400', '枣庄', '市', 'zaozhuang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (259, 16, '370500', '东营', '市', 'dongying', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (260, 16, '370600', '烟台', '市', 'yantai', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (261, 16, '370700', '潍坊', '市', 'weifang', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (262, 16, '370800', '济宁', '市', 'jining', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (263, 16, '370900', '泰安', '市', 'taian', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (264, 16, '371000', '威海', '市', 'weihai', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (265, 16, '371100', '日照', '市', 'rizhao', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (267, 16, '371300', '临沂', '市', 'linyi', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (268, 16, '371400', '德州', '市', 'dezhou', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (269, 16, '371500', '聊城', '市', 'liaocheng', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (270, 16, '371600', '滨州', '市', 'binzhou', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (271, 16, '371700', '菏泽', '市', 'heze', 17);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (272, 17, '410100', '郑州', '市', 'zhengzhou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (273, 17, '410200', '开封', '市', 'kaifeng', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (274, 17, '410300', '洛阳', '市', 'luoyang', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (275, 17, '410400', '平顶山', '市', 'pingdingshan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (276, 17, '410500', '安阳', '市', 'anyang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (277, 17, '410600', '鹤壁', '市', 'hebi', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (278, 17, '410700', '新乡', '市', 'xinxiang', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (279, 17, '410800', '焦作', '市', 'jiaozuo', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (280, 17, '410900', '濮阳', '市', 'puyang', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (281, 17, '411000', '许昌', '市', 'xuchuang', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (282, 17, '411100', '漯河', '市', 'luohe', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (283, 17, '411200', '三门峡', '市', 'sanmenxia', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (284, 17, '411300', '南阳', '市', 'nanyang', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (285, 17, '411400', '商丘', '市', 'shangqiu', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (286, 17, '411500', '信阳', '市', 'xinyang', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (287, 17, '411600', '周口', '市', 'zhoukou', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (288, 17, '411700', '驻马店', '市', 'zhumadian', 17);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (289, 17, '419001', '济源', '市', 'jiyuan', 18);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (290, 18, '420100', '武汉', '市', 'wuhan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (291, 18, '420200', '黄石', '市', 'huangshi', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (292, 18, '420300', '十堰', '市', 'shiyan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (293, 18, '420500', '宜昌', '市', 'yichang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (294, 18, '420600', '襄阳', '市', 'xiangyang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (295, 18, '420700', '鄂州', '市', 'ezhou', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (296, 18, '420800', '荆门', '市', 'jingmen', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (297, 18, '420900', '孝感', '市', 'xiaogan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (298, 18, '421000', '荆州', '市', 'jingzhou', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (299, 18, '421100', '黄冈', '市', 'huanggang', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (300, 18, '421200', '咸宁', '市', 'xianning', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (301, 18, '421300', '随州', '市', 'suizhou', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (302, 18, '422800', '恩施', '自治州', 'enshi', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (303, 18, '429004', '仙桃', '市', 'xiantao', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (304, 18, '429005', '潜江', '市', 'qianjiang', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (305, 18, '429006', '天门', '市', 'tianmen', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (306, 18, '429021', '神农架林区', '', 'shennongjialinqu', 17);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (307, 19, '430100', '长沙', '市', 'changsha', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (308, 19, '430200', '株洲', '市', 'zhuzhou', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (309, 19, '430300', '湘潭', '市', 'xiangtan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (310, 19, '430400', '衡阳', '市', 'hengyang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (311, 19, '430500', '邵阳', '市', 'shaoyang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (312, 19, '430600', '岳阳', '市', 'yueyang', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (313, 19, '430700', '常德', '市', 'changde', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (314, 19, '430800', '张家界', '市', 'zhangjiajie', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (315, 19, '430900', '益阳', '市', 'yiyang', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (316, 19, '431000', '郴州', '市', 'chenzhou', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (317, 19, '431100', '永州', '市', 'yongzhou', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (318, 19, '431200', '怀化', '市', 'huaihua', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (319, 19, '431300', '娄底', '市', 'loudi', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (320, 19, '433100', '湘西', '自治州', 'xiangxi', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (321, 20, '440100', '广州', '市', 'guangzhou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (322, 20, '440200', '韶关', '市', 'shaoguan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (323, 20, '440300', '深圳', '市', 'shenzhen', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (324, 20, '440400', '珠海', '市', 'zhuhai', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (325, 20, '440500', '汕头', '市', 'shantou', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (326, 20, '440600', '佛山', '市', 'foshan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (327, 20, '440700', '江门', '市', 'jiangmen', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (328, 20, '440800', '湛江', '市', 'zhanjiang', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (329, 20, '440900', '茂名', '市', 'maoming', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (330, 20, '441200', '肇庆', '市', 'zhaoqing', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (331, 20, '441300', '惠州', '市', 'huizhou', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (332, 20, '441400', '梅州', '市', 'meizhou', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (333, 20, '441500', '汕尾', '市', 'shanwei', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (334, 20, '441600', '河源', '市', 'heyuan', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (335, 20, '441700', '阳江', '市', 'yangjiang', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (336, 20, '441800', '清远', '市', 'qingyuan', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (337, 20, '441900', '东莞', '市', 'dongguan', 17);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (338, 20, '442000', '中山', '市', 'zhongshan', 18);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (339, 20, '445100', '潮州', '市', 'chaozhou', 19);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (340, 20, '445200', '揭阳', '市', 'jieyang', 20);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (341, 20, '445300', '云浮', '市', 'yunfu', 21);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (342, 21, '450100', '南宁', '市', 'nanning', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (343, 21, '450200', '柳州', '市', 'liuzhou', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (344, 21, '450300', '桂林', '市', 'guilin', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (345, 21, '450400', '梧州', '市', 'wuzhou', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (346, 21, '450500', '北海', '市', 'beihai', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (347, 21, '450600', '防城港', '市', 'fangchenggang', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (348, 21, '450700', '钦州', '市', 'qinzhou', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (349, 21, '450800', '贵港', '市', 'guigang', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (350, 21, '450900', '玉林', '市', 'yulin', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (351, 21, '451000', '百色', '市', 'baise', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (352, 21, '451100', '贺州', '市', 'hezhou', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (353, 21, '451200', '河池', '市', 'hechi', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (354, 21, '451300', '来宾', '市', 'laibin', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (355, 21, '451400', '崇左', '市', 'chongzuo', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (356, 22, '460100', '海口', '市', 'haikou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (357, 22, '460200', '三亚', '市', 'sanya', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (358, 22, '460300', '三沙', '市', 'sansha', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (359, 22, '469001', '五指山', '市', 'wuzhishan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (360, 22, '469002', '琼海', '市', 'qionghai', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (361, 22, '460400', '儋州', '市', 'danzhou', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (362, 22, '469005', '文昌', '市', 'wenchang', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (363, 22, '469006', '万宁', '市', 'wanning', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (364, 22, '469007', '东方', '市', 'dongfang', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (365, 22, '469021', '定安', '县', 'dingan', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (366, 22, '469022', '屯昌', '县', 'tunchang', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (367, 22, '469023', '澄迈', '县', 'chengmai', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (368, 22, '469024', '临高', '县', 'lingao', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (369, 22, '469025', '白沙', '自治县', 'baisha', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (370, 22, '469026', '昌江', '自治县', 'changjiang', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (371, 22, '469027', '乐东', '自治县', 'ledong', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (372, 22, '469028', '陵水', '自治县', 'lingshui', 17);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (373, 22, '469029', '保亭', '自治县', 'baoting', 18);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (374, 22, '469030', '琼中', '自治县', 'qiongzhong', 19);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (375, 23, '510100', '成都', '市', 'chengdu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (376, 23, '510300', '自贡', '市', 'zigong', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (377, 23, '510400', '攀枝花', '市', 'panzhihua', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (378, 23, '510500', '泸州', '市', 'luzhou', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (379, 23, '510600', '德阳', '市', 'deyang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (380, 23, '510700', '绵阳', '市', 'mianyang', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (381, 23, '510800', '广元', '市', 'guangyuan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (382, 23, '510900', '遂宁', '市', 'suining', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (383, 23, '511000', '内江', '市', 'neijiang', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (384, 23, '511100', '乐山', '市', 'leshan', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (385, 23, '511300', '南充', '市', 'nanchong', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (386, 23, '511400', '眉山', '市', 'meishan', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (387, 23, '511500', '宜宾', '市', 'yibin', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (388, 23, '511600', '广安', '市', 'guangan', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (389, 23, '511700', '达州', '市', 'dazhou', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (390, 23, '511800', '雅安', '市', 'yaan', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (391, 23, '511900', '巴中', '市', 'bazhong', 17);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (392, 23, '512000', '资阳', '市', 'ziyang', 18);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (393, 23, '513200', '阿坝', '自治州', 'aba', 19);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (394, 23, '513300', '甘孜', '自治州', 'ganzi', 20);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (395, 23, '615000', '凉山', '自治州', 'liangshan', 21);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (396, 24, '520100', '贵阳', '市', 'guiyang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (397, 24, '520200', '六盘水', '市', 'liupanshui', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (398, 24, '520300', '遵义', '市', 'zunyi', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (399, 24, '520400', '安顺', '市', 'anshun', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (400, 24, '520500', '毕节', '市', 'bijie', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (401, 24, '520600', '铜仁', '市', 'tongren', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (402, 24, '522300', '黔西南', '自治州', 'qianxinan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (403, 24, '522600', '黔东南', '自治州', 'qiandongnan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (404, 24, '522700', '黔南', '自治州', 'qiannan', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (405, 25, '530100', '昆明', '市', 'kunming', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (406, 25, '530300', '曲靖', '市', 'qujing', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (407, 25, '530400', '玉溪', '市', 'yuxi', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (408, 25, '530600', '昭通', '市', 'zhaotong', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (409, 25, '530700', '丽江', '市', 'lijiang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (410, 25, '530800', '普洱', '市', 'puer', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (411, 25, '530900', '临沧', '市', 'lincang', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (412, 25, '532300', '楚雄', '自治州', 'chuxiong', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (413, 25, '532500', '红河', '自治州', 'honghe', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (414, 25, '532600', '文山', '自治州', 'wenshan', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (415, 25, '532800', '西双版纳', '自治州', 'xishuangbanna', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (416, 25, '532900', '大理', '自治州', 'dali', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (417, 25, '533100', '德宏', '自治州', 'dehong', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (418, 25, '533300', '怒江', '自治州', 'nujiang', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (419, 25, '533400', '迪庆', '自治州', 'diqing', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (420, 25, '678000', '保山', '市', 'baoshan', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (421, 26, '540100', '拉萨', '市', 'lasa', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (422, 26, '542100', '昌都', '市', 'changdu', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (423, 26, '540500', '山南', '市', 'shannan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (424, 26, '542300', '日喀则', '市', 'rikaze', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (425, 26, '540600', '那曲', '市', 'neiqu', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (426, 26, '542500', '阿里', '地区', 'ali', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (427, 26, '540400', '林芝', '市', 'linzhi', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (428, 27, '610100', '西安', '市', 'xian', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (429, 27, '610200', '铜川', '市', 'tongchuan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (430, 27, '610300', '宝鸡', '市', 'baoji', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (431, 27, '610400', '咸阳', '市', 'xianyang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (432, 27, '610500', '渭南', '市', 'weinan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (433, 27, '610600', '延安', '市', 'yanan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (434, 27, '610700', '汉中', '市', 'hanzhong', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (435, 27, '610800', '榆林', '市', 'yulin', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (436, 27, '610900', '安康', '市', 'ankang', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (437, 27, '611000', '商洛', '市', 'shangluo', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (438, 28, '620100', '兰州', '市', 'lanzhou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (439, 28, '620200', '嘉峪关', '市', 'jiayuguan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (440, 28, '620300', '金昌', '市', 'jinchang', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (441, 28, '620400', '白银', '市', 'baiyin', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (442, 28, '620500', '天水', '市', 'tianshui', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (443, 28, '620600', '武威', '市', 'wuwei', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (444, 28, '620700', '张掖', '市', 'zhangye', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (445, 28, '620800', '平凉', '市', 'pingliang', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (446, 28, '620900', '酒泉', '市', 'jiuquan', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (447, 28, '621000', '庆阳', '市', 'qingyang', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (448, 28, '621100', '定西', '市', 'dingxi', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (449, 28, '621200', '陇南', '市', 'longnan', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (450, 28, '622900', '临夏', '自治州', 'linxia', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (451, 28, '623000', '甘南', '自治州', 'gannan', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (452, 29, '630100', '西宁', '市', 'xining', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (453, 29, '632100', '海东', '市', 'haidong', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (454, 29, '632200', '海北', '自治州', 'haibei', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (455, 29, '632300', '黄南', '自治州', 'huangnan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (456, 29, '632500', '海南', '自治州', 'hainan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (457, 29, '632600', '果洛', '自治州', 'guoluo', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (458, 29, '632700', '玉树', '自治州', 'yushu', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (459, 29, '632800', '海西', '自治州', 'haixi', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (460, 30, '640100', '银川', '市', 'yinchuan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (461, 30, '640200', '石嘴山', '市', 'shizuishan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (462, 30, '640300', '吴忠', '市', 'wuzhong', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (463, 30, '640400', '固原', '市', 'guyuan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (464, 30, '640500', '中卫', '市', 'zhongwei', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (465, 31, '650100', '乌鲁木齐', '市', 'wulumuqi', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (466, 31, '650200', '克拉玛依', '市', 'kelamayi', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (467, 31, '652100', '吐鲁番', '市', 'tulufan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (468, 31, '652200', '哈密', '市', 'hami', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (469, 31, '652300', '昌吉', '自治州', 'changji', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (470, 31, '652700', '博尔塔拉', '自治州', 'boertala', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (471, 31, '652800', '巴音郭楞', '自治州', 'bayinguoleng', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (472, 31, '652900', '阿克苏', '地区', 'akesu', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (473, 31, '653000', '克孜勒苏', '自治州', 'kezilesu', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (474, 31, '653100', '喀什', '地区', 'kashi', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (475, 31, '653200', '和田', '地区', 'hetian', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (476, 31, '654000', '伊犁', '自治州', 'yili', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (477, 31, '654200', '塔城', '地区', 'tacheng', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (478, 31, '654300', '阿勒泰', '地区', 'aletai', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (479, 31, '659001', '石河子', '市', 'shihezi', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (480, 31, '659002', '阿拉尔', '市', 'alaer', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (481, 31, '659003', '图木舒克', '市', 'tumushuke', 17);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (482, 31, '659004', '五家渠', '市', 'wujiaqu', 18);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (483, 31, '659005', '北屯', '市', 'beitun', 19);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (484, 31, '659006', '铁门关', '市', 'tiemenguan', 20);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (485, 32, '63', '台北', '市', 'taibei', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (486, 32, '64', '高雄', '市', 'gaoxiong', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (487, 32, '10017', '基隆', '市', 'jilong', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (488, 32, '10019', '台中', '市', 'taizhong', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (489, 32, '10021', '台南', '市', 'tainan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (490, 32, '10018', '新竹', '市', 'xinzhu', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (491, 32, '10020', '嘉义', '市', 'jiayi', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (492, 32, '', '新北', '市', 'xinbei', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (493, 32, '10002', '宜兰', '县', 'yilan', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (494, 32, '10003', '桃园', '县', 'taoyuan', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (495, 32, '10004', '新竹', '县', 'xinzhu', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (496, 32, '10005', '苗栗', '县', 'miaoli', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (497, 32, '10007', '彰化', '县', 'zhanghua', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (498, 32, '10008', '南投', '县', 'nantou', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (499, 32, '10009', '云林', '县', 'yunlin', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (500, 32, '10020', '嘉义', '县', 'jiayi', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (501, 32, '10013', '屏东', '县', 'pingdong', 17);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (502, 32, '10014', '台东', '县', 'taidong', 18);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (503, 32, '10015', '花莲', '县', 'hualian', 19);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (504, 32, '10016', '澎湖', '县', 'penghu', 20);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (505, 32, '', '连江', '县', 'lianjiang', 21);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (506, 32, '', '金门', '县', 'jinmen', 22);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (507, 33, '', '中西', '区', 'zhongxi', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (508, 33, '', '葵青', '区', 'kuiqing', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (509, 33, '', '元朗', '区', 'yuanlang', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (510, 33, '', '屯门', '区', 'tunmen', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (511, 33, '', '荃湾', '区', 'quanwan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (512, 33, '', '西贡', '区', 'xigong', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (513, 33, '', '沙田', '区', 'shatian', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (514, 33, '', '大埔', '区', 'dapu', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (515, 33, '', '北区', '', 'beiqu', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (516, 33, '', '观塘', '区', 'guantang', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (517, 33, '', '黄大仙', '区', 'huangdaxian', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (518, 33, '', '深水埗', '区', 'shenshuibu', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (519, 33, '', '油尖旺', '区', 'youjianwang', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (520, 33, '', '九龙城', '区', 'jiulongcheng', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (521, 33, '', '南区', '', 'nanqu', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (522, 33, '', '东区', '', 'dongqu', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (523, 33, '', '湾仔', '区', 'wanzi', 17);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (524, 33, '', '离岛', '区', 'lidao', 18);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (525, 34, '', '花地玛', '堂区', 'huadima', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (526, 34, '', '圣安多', '堂区', 'shenganduo', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (527, 34, '', '大堂区', '堂区', 'datangqu', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (528, 34, '', '望德', '堂区', 'wangde', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (529, 34, '', '风顺', '堂区', 'fengshun', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (530, 34, '', '嘉模', '堂区', 'jiamo', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (531, 34, '', '圣方济各', '堂区', 'shengfangjige', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (532, 34, '', '路氹城', '', 'ludangcheng', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (533, 125, '130102', '长安', '区', 'changan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (535, 125, '130104', '桥西', '区', 'qiaoxi', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (536, 125, '130105', '新华', '区', 'xinhua', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (537, 125, '130107', '井陉矿', '区', 'jingxingkuang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (538, 125, '130108', '裕华', '区', 'yuhua', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (539, 125, '130121', '井陉', '县', 'jingxing', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (540, 125, '130123', '正定', '县', 'zhengding', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (541, 125, '130111', '栾城', '区', 'luancheng', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (542, 125, '130125', '行唐', '县', 'xingtang', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (543, 125, '130126', '灵寿', '县', 'lingshou', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (544, 125, '130127', '高邑', '县', 'gaoyi', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (545, 125, '130128', '深泽', '县', 'shenze', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (546, 125, '130129', '赞皇', '县', 'zanhuang', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (547, 125, '130130', '无极', '县', 'wuji', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (548, 125, '130131', '平山', '县', 'pingshan', 17);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (549, 125, '130132', '元氏', '县', 'yuanshi', 18);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (550, 125, '130133', '赵县', '', 'zhaoxian', 19);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (551, 125, '130181', '辛集', '市', 'xinji', 20);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (552, 125, '130109', '藁城', '区', 'gaocheng', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (553, 125, '130183', '晋州', '市', 'jinzhou', 21);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (554, 125, '130184', '新乐', '市', 'xinle', 22);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (555, 125, '130110', '鹿泉', '区', 'luquan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (556, 126, '130202', '路南', '区', 'lunan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (557, 126, '130203', '路北', '区', 'lubei', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (558, 126, '130204', '古冶', '区', 'guye', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (559, 126, '130205', '开平', '区', 'kaiping', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (560, 126, '130207', '丰南', '区', 'fengnan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (561, 126, '130208', '丰润', '区', 'fengrun', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (562, 126, '130223', '滦州', '市', 'luanzhou', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (563, 126, '130224', '滦南', '县', 'luannan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (564, 126, '130225', '乐亭', '县', 'leting', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (565, 126, '130227', '迁西', '县', 'qianxi', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (566, 126, '130229', '玉田', '县', 'yutian', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (567, 126, '130230', '唐海', '县', 'tanghai', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (568, 126, '130281', '遵化', '市', 'zunhua', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (569, 126, '130283', '迁安', '市', 'qianan', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (570, 127, '130302', '海港', '区', 'haigang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (571, 127, '130303', '山海关', '区', 'shanhaiguan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (572, 127, '130304', '北戴河', '区', 'beidaihe', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (573, 127, '130321', '青龙', '自治县', 'qinglong', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (574, 127, '130322', '昌黎', '县', 'changli', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (575, 127, '130323', '抚宁', '区', 'funing', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (576, 127, '130324', '卢龙', '县', 'lulong', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (577, 128, '130402', '邯山', '区', 'hanshan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (578, 128, '130403', '丛台', '区', 'congtai', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (579, 128, '130404', '复兴', '区', 'fuxing', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (580, 128, '130406', '峰峰矿', '区', 'fengfengkuang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (582, 128, '130423', '临漳', '县', 'linzhang', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (583, 128, '130424', '成安', '县', 'chengan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (584, 128, '130425', '大名', '县', 'daming', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (585, 128, '130426', '涉县', '', 'shexian', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (586, 128, '130427', '磁县', '', 'cixian', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (587, 128, '130407', '肥乡', '区', 'feixiang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (588, 128, '130408', '永年', '区', 'yongnian', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (589, 128, '130430', '邱县', '', 'qiuxian', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (590, 128, '130431', '鸡泽', '县', 'jize', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (591, 128, '130432', '广平', '县', 'guangping', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (592, 128, '130433', '馆陶', '县', 'guantao', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (593, 128, '130434', '魏县', '', 'weixian', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (594, 128, '130435', '曲周', '县', 'quzhou', 17);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (595, 128, '130481', '武安', '市', 'wuan', 18);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (596, 129, '130502', '桥东', '区', 'qiaodong', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (597, 129, '130503', '桥西', '区', 'qiaoxi', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (598, 129, '130521', '邢台', '县', 'xingtai', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (599, 129, '130522', '临城', '县', 'lincheng', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (600, 129, '130523', '内丘', '县', 'neiqiu', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (601, 129, '130524', '柏乡', '县', 'boxiang', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (602, 129, '130525', '隆尧', '县', 'longyao', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (603, 129, '130526', '任县', '', 'renxian', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (604, 129, '130527', '南和', '县', 'nanhe', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (605, 129, '130528', '宁晋', '县', 'ningjin', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (606, 129, '130529', '巨鹿', '县', 'julu', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (607, 129, '130530', '新河', '县', 'xinhe', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (608, 129, '130531', '广宗', '县', 'guangzong', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (609, 129, '130532', '平乡', '县', 'pingxiang', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (610, 129, '130533', '威县', '', 'weixian', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (611, 129, '130534', '清河', '县', 'qinghe', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (612, 129, '130535', '临西', '县', 'linxi', 17);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (613, 129, '130581', '南宫', '市', 'nangong', 18);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (614, 129, '130582', '沙河', '市', 'shahe', 19);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (615, 130, '130602', '竞秀', '区', 'jingxiu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (616, 130, '130603', '莲池', '区', 'lianchi', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (618, 130, '130621', '满城', '区', 'mancheng', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (619, 130, '130622', '清苑', '区', 'qingyuan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (620, 130, '130623', '涞水', '县', 'laishui', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (621, 130, '130624', '阜平', '县', 'fuping', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (622, 130, '130625', '徐水', '区', 'xushui', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (623, 130, '130626', '定兴', '县', 'dingxing', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (624, 130, '130627', '唐县', '', 'tangxian', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (625, 130, '130628', '高阳', '县', 'gaoyang', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (626, 130, '130629', '容城', '县', 'rongcheng', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (627, 130, '130630', '涞源', '县', 'laiyuan', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (628, 130, '130631', '望都', '县', 'wangdu', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (629, 130, '130632', '安新', '县', 'anxin', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (630, 130, '130633', '易县', '', 'yixian', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (631, 130, '130634', '曲阳', '县', 'quyang', 17);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (632, 130, '130635', '蠡县', '', 'lixian', 18);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (633, 130, '130636', '顺平', '县', 'shunping', 19);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (634, 130, '130637', '博野', '县', 'boye', 20);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (635, 130, '130638', '雄县', '', 'xiongxian', 21);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (636, 130, '130681', '涿州', '市', 'zhuozhou', 22);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (637, 130, '130682', '定州', '市', 'dingzhou', 23);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (638, 130, '130683', '安国', '市', 'anguo', 24);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (639, 130, '130684', '高碑店', '市', 'gaobeidian', 25);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (640, 131, '130702', '桥东', '区', 'qiaodong', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (641, 131, '130703', '桥西', '区', 'qiaoxi', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (642, 131, '130705', '宣化', '区', 'xuanhua', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (643, 131, '130706', '下花园', '区', 'xiahuayuan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (645, 131, '130722', '张北', '县', 'zhangbei', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (646, 131, '130723', '康保', '县', 'kangbao', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (647, 131, '130724', '沽源', '县', 'guyuan', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (648, 131, '130725', '尚义', '县', 'shangyi', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (649, 131, '130726', '蔚县', '', 'yuxian', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (650, 131, '130727', '阳原', '县', 'yangyuan', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (651, 131, '130728', '怀安', '县', 'huaian', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (652, 131, '130708', '万全', '区', 'wanquan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (653, 131, '130730', '怀来', '县', 'huailai', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (654, 131, '130731', '涿鹿', '县', 'zhuolu', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (655, 131, '130732', '赤城', '县', 'chicheng', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (656, 131, '130709', '崇礼', '区', 'chongli', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (657, 132, '130802', '双桥', '区', 'shuangqiao', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (658, 132, '130803', '双滦', '区', 'shuangluan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (659, 132, '130804', '鹰手营子', '区', 'yingshouyingzi', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (660, 132, '130821', '承德', '县', 'chengde', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (661, 132, '130822', '兴隆', '县', 'xinglong', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (662, 132, '130881', '平泉', '市', 'pingquan', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (663, 132, '130824', '滦平', '县', 'luanping', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (664, 132, '130825', '隆化', '县', 'longhua', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (665, 132, '130826', '丰宁', '自治县', 'fengning', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (666, 132, '130827', '宽城', '自治县', 'kuancheng', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (667, 132, '130828', '围场', '自治县', 'weichang', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (668, 133, '130902', '新华', '区', 'xinhua', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (669, 133, '130903', '运河', '区', 'yunhe', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (670, 133, '130921', '沧县', '', 'cangxian', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (671, 133, '130922', '青县', '', 'qingxian', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (672, 133, '130923', '东光', '县', 'dongguang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (673, 133, '130924', '海兴', '县', 'haixing', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (674, 133, '130925', '盐山', '县', 'yanshan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (675, 133, '130926', '肃宁', '县', 'suning', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (676, 133, '130927', '南皮', '县', 'nanpi', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (677, 133, '130928', '吴桥', '县', 'wuqiao', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (678, 133, '130929', '献县', '', 'xianxian', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (679, 133, '130930', '孟村', '自治县', 'mengcun', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (680, 133, '130981', '泊头', '市', 'botou', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (681, 133, '130982', '任丘', '市', 'renqiu', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (682, 133, '130983', '黄骅', '市', 'huanghua', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (683, 133, '130984', '河间', '市', 'hejian', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (684, 134, '131002', '安次', '区', 'anci', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (685, 134, '131003', '广阳', '区', 'guangyang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (686, 134, '131022', '固安', '县', 'guan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (687, 134, '131023', '永清', '县', 'yongqing', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (688, 134, '131024', '香河', '县', 'xianghe', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (689, 134, '131025', '大城', '县', 'dacheng', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (690, 134, '131026', '文安', '县', 'wenan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (691, 134, '131028', '大厂', '自治县', 'dachang', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (692, 134, '131081', '霸州', '市', 'bazhou', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (693, 134, '131082', '三河', '市', 'sanhe', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (694, 135, '131102', '桃城', '区', 'taocheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (695, 135, '131121', '枣强', '县', 'zaoqiang', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (696, 135, '131122', '武邑', '县', 'wuyi', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (697, 135, '131123', '武强', '县', 'wuqiang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (698, 135, '131124', '饶阳', '县', 'raoyang', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (699, 135, '131125', '安平', '县', 'anping', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (700, 135, '131126', '故城', '县', 'gucheng', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (701, 135, '131127', '景县', '', 'jingxian', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (702, 135, '131128', '阜城', '县', 'fucheng', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (703, 135, '131103', '冀州', '区', 'jizhou', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (704, 135, '131182', '深州', '市', 'shenzhou', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (705, 136, '140105', '小店', '区', 'xiaodian', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (706, 136, '140106', '迎泽', '区', 'yingze', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (707, 136, '140107', '杏花岭', '区', 'xinghualing', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (708, 136, '140108', '尖草坪', '区', 'jiancaoping', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (709, 136, '140109', '万柏林', '区', 'wanbolin', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (710, 136, '140110', '晋源', '区', 'jinyuan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (711, 136, '140121', '清徐', '县', 'qingxu', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (712, 136, '140122', '阳曲', '县', 'yangqu', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (713, 136, '140123', '娄烦', '县', 'loufan', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (714, 136, '140181', '古交', '市', 'gujiao', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (715, 137, '140213', '平城', '区', 'pingcheng', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (716, 137, '140214', '云冈', '', 'yugang', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (718, 137, '140212', '新荣', '区', 'xinrong', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (719, 137, '140221', '阳高', '县', 'yanggao', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (720, 137, '140222', '天镇', '县', 'tianzhen', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (721, 137, '140223', '广灵', '县', 'guangling', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (722, 137, '140224', '灵丘', '县', 'lingqiu', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (723, 137, '140225', '浑源', '县', 'hunyuan', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (724, 137, '140226', '左云', '县', 'zuoyun', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (725, 137, '140215', '云州', '区', 'yunzhou', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (726, 138, '140302', '城区', '', 'chengqu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (727, 138, '140303', '矿区', '', 'kuangqu', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (728, 138, '140311', '郊区', '', 'jiaoqu', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (729, 138, '140321', '平定', '县', 'pingding', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (730, 138, '140322', '盂县', '', 'yuxian', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (731, 139, '140403', '潞州', '', 'luzhou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (733, 139, '140404', '上党', '区', 'shangdang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (734, 139, '140423', '襄垣', '县', 'xiangyuan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (735, 139, '140405', '屯留', '区', 'tunliu', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (736, 139, '140425', '平顺', '县', 'pingshun', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (737, 139, '140426', '黎城', '县', 'licheng', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (738, 139, '140427', '壶关', '县', 'huguan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (739, 139, '140428', '长子', '县', 'zhangzi', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (740, 139, '140429', '武乡', '县', 'wuxiang', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (741, 139, '140430', '沁县', '', 'qinxian', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (742, 139, '140431', '沁源', '县', 'qinyuan', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (743, 139, '140406', '潞城', '区', 'lucheng', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (744, 140, '140502', '城区', '', 'chengqu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (745, 140, '140521', '沁水', '县', 'qinshui', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (746, 140, '140522', '阳城', '县', 'yangcheng', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (747, 140, '140524', '陵川', '县', 'lingchuan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (748, 140, '140525', '泽州', '县', 'zezhou', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (749, 140, '140581', '高平', '市', 'gaoping', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (750, 141, '140602', '朔城', '区', 'shuocheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (751, 141, '140603', '平鲁', '区', 'pinglu', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (752, 141, '140621', '山阴', '县', 'shanyin', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (753, 141, '140622', '应县', '', 'yingxian', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (754, 141, '140623', '右玉', '县', 'youyu', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (755, 141, '140681', '怀仁', '市', 'huairen', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (756, 142, '140702', '榆次', '区', 'yuci', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (757, 142, '140721', '榆社', '县', 'yushe', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (758, 142, '140722', '左权', '县', 'zuoquan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (759, 142, '140723', '和顺', '县', 'heshun', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (760, 142, '140724', '昔阳', '县', 'xiyang', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (761, 142, '140725', '寿阳', '县', 'shouyang', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (762, 142, '140703', '太谷', '区', 'taigu', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (763, 142, '140727', '祁县', '', 'qixian', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (764, 142, '140728', '平遥', '县', 'pingyao', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (765, 142, '140729', '灵石', '县', 'lingshi', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (766, 142, '140781', '介休', '市', 'jiexiu', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (767, 143, '140802', '盐湖', '区', 'yanhu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (768, 143, '140821', '临猗', '县', 'linyi', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (769, 143, '140822', '万荣', '县', 'wanrong', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (770, 143, '140823', '闻喜', '县', 'wenxi', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (771, 143, '140824', '稷山', '县', 'jishan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (772, 143, '140825', '新绛', '县', 'xinjiang', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (773, 143, '140826', '绛县', '', 'jiangxian', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (774, 143, '140827', '垣曲', '县', 'yuanqu', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (775, 143, '140828', '夏县', '', 'xiaxian', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (776, 143, '140829', '平陆', '县', 'pinglu', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (777, 143, '140830', '芮城', '县', 'ruicheng', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (778, 143, '140881', '永济', '市', 'yongji', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (779, 143, '140882', '河津', '市', 'hejin', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (780, 144, '140902', '忻府', '区', 'xinfu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (781, 144, '140921', '定襄', '县', 'dingxiang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (782, 144, '140922', '五台', '县', 'wutai', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (783, 144, '140923', '代县', '', 'daixian', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (784, 144, '140924', '繁峙', '县', 'fanzhi', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (785, 144, '140925', '宁武', '县', 'ningwu', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (786, 144, '140926', '静乐', '县', 'jingle', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (787, 144, '140927', '神池', '县', 'shenchi', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (788, 144, '140928', '五寨', '县', 'wuzhai', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (789, 144, '140929', '岢岚', '县', 'kelan', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (790, 144, '140930', '河曲', '县', 'hequ', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (791, 144, '140931', '保德', '县', 'baode', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (792, 144, '140932', '偏关', '县', 'pianguan', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (793, 144, '140981', '原平', '市', 'yuanping', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (794, 145, '141002', '尧都', '区', 'yaodu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (795, 145, '141021', '曲沃', '县', 'quwo', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (796, 145, '141022', '翼城', '县', 'yicheng', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (797, 145, '141023', '襄汾', '县', 'xiangfen', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (798, 145, '141024', '洪洞', '县', 'hongdong', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (799, 145, '141025', '古县', '', 'guxian', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (800, 145, '141026', '安泽', '县', 'anze', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (801, 145, '141027', '浮山', '县', 'fushan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (802, 145, '141028', '吉县', '', 'jixian', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (803, 145, '141029', '乡宁', '县', 'xiangning', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (804, 145, '141030', '大宁', '县', 'daning', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (805, 145, '141031', '隰县', '', 'xixian', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (806, 145, '141032', '永和', '县', 'yonghe', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (807, 145, '141033', '蒲县', '', 'puxian', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (808, 145, '141034', '汾西', '县', 'fenxi', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (809, 145, '141081', '侯马', '市', 'houma', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (810, 145, '141082', '霍州', '市', 'huozhou', 17);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (811, 146, '141102', '离石', '区', 'lishi', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (812, 146, '141121', '文水', '县', 'wenshui', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (813, 146, '141122', '交城', '县', 'jiaocheng', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (814, 146, '141123', '兴县', '', 'xingxian', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (815, 146, '141124', '临县', '', 'linxian', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (816, 146, '141125', '柳林', '县', 'liulin', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (817, 146, '141126', '石楼', '县', 'shilou', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (818, 146, '141127', '岚县', '', 'lanxian', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (819, 146, '141128', '方山', '县', 'fangshan', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (820, 146, '141129', '中阳', '县', 'zhongyang', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (821, 146, '141130', '交口', '县', 'jiaokou', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (822, 146, '141181', '孝义', '市', 'xiaoyi', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (823, 146, '141182', '汾阳', '市', 'fenyang', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (824, 147, '150102', '新城', '区', 'xincheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (825, 147, '150103', '回民', '区', 'huimin', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (826, 147, '150104', '玉泉', '区', 'yuquan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (827, 147, '150105', '赛罕', '区', 'saihan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (828, 147, '150121', '土默特左', '旗', 'tumotezuo', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (829, 147, '150122', '托克托', '县', 'tuoketuo', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (830, 147, '150123', '和林格尔', '县', 'helingeer', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (831, 147, '150124', '清水河', '县', 'qingshuihe', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (832, 147, '150125', '武川', '县', 'wuchuan', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (833, 148, '150202', '东河', '区', 'donghe', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (834, 148, '150203', '昆都仑', '区', 'kundulun', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (835, 148, '150204', '青山', '区', 'qingshan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (836, 148, '150205', '石拐', '区', 'shiguai', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (837, 148, '150206', '白云', '区', 'baiyun', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (838, 148, '150207', '九原', '区', 'jiuyuan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (839, 148, '150221', '土默特右', '旗', 'tumoteyou', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (840, 148, '150222', '固阳', '县', 'guyang', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (841, 148, '150223', '达尔罕茂明安', '旗', 'daerhanmaomingan', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (842, 149, '150302', '海勃湾', '区', 'haibowan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (843, 149, '150303', '海南', '区', 'hainan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (844, 149, '150304', '乌达', '区', 'wuda', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (845, 150, '150402', '红山', '区', 'hongshan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (846, 150, '150403', '元宝山', '区', 'yuanbaoshan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (847, 150, '150404', '松山', '区', 'songshan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (848, 150, '150421', '阿鲁科尔沁', '旗', 'alukeerqin', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (849, 150, '150422', '巴林左', '旗', 'balinzuo', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (850, 150, '150423', '巴林右', '旗', 'balinyou', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (851, 150, '150424', '林西', '县', 'linxi', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (852, 150, '150425', '克什克腾', '旗', 'keshenketeng', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (853, 150, '150426', '翁牛特', '旗', 'wengniute', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (854, 150, '150428', '喀喇沁', '旗', 'kalaqin', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (855, 150, '150429', '宁城', '县', 'ningcheng', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (856, 150, '150430', '敖汉', '旗', 'aohan', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (857, 151, '150502', '科尔沁', '区', 'keerqin', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (858, 151, '150521', '科尔沁左翼中', '旗', 'keerqinzuoyizhong', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (859, 151, '150522', '科尔沁左翼后', '旗', 'keerqinzuoyihou', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (860, 151, '150523', '开鲁', '县', 'kailu', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (861, 151, '150524', '库伦', '旗', 'kulun', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (862, 151, '150525', '奈曼', '旗', 'naiman', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (863, 151, '150526', '扎鲁特', '旗', 'zhalute', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (864, 151, '150581', '霍林郭勒', '市', 'huolinguole', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (865, 152, '150602', '东胜', '区', 'dongsheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (866, 152, '150621', '达拉特', '旗', 'dalate', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (867, 152, '150622', '准格尔', '旗', 'zhungeer', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (868, 152, '150623', '鄂托克前', '旗', 'etuokeqian', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (869, 152, '150624', '鄂托克', '旗', 'etuoke', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (870, 152, '150625', '杭锦', '旗', 'hangjin', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (871, 152, '150626', '乌审', '旗', 'wushen', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (872, 152, '150627', '伊金霍洛', '旗', 'yijinhuoluo', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (873, 153, '150702', '海拉尔', '区', 'hailaer', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (874, 153, '150721', '阿荣', '旗', 'arong', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (875, 153, '150722', '莫力达瓦', '自治旗', 'molidawa', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (876, 153, '150723', '鄂伦春', '自治旗', 'elunchun', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (877, 153, '150724', '鄂温克族', '自治旗', 'ewenkezu', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (878, 153, '150725', '陈巴尔虎', '旗', 'chenbaerhu', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (879, 153, '150726', '新巴尔虎左', '旗', 'xinbaerhuzuo', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (880, 153, '150727', '新巴尔虎右', '旗', 'xinbaerhuyou', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (881, 153, '150781', '满洲里', '市', 'manzhouli', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (882, 153, '150782', '牙克石', '市', 'yakeshi', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (883, 153, '150783', '扎兰屯', '市', 'zhalantun', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (884, 153, '150784', '额尔古纳', '市', 'eerguna', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (885, 153, '150785', '根河', '市', 'genhe', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (886, 154, '150802', '临河', '区', 'linhe', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (887, 154, '150821', '五原', '县', 'wuyuan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (888, 154, '150822', '磴口', '县', 'dengkou', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (889, 154, '150823', '乌拉特前', '旗', 'wulateqian', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (890, 154, '150824', '乌拉特中', '旗', 'wulatezhong', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (891, 154, '150825', '乌拉特后', '旗', 'wulatehou', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (892, 154, '150826', '杭锦后', '旗', 'hangjinhou', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (893, 155, '150902', '集宁', '区', 'jining', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (894, 155, '150921', '卓资', '县', 'zhuozi', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (895, 155, '150922', '化德', '县', 'huade', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (896, 155, '150923', '商都', '县', 'shangdu', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (897, 155, '150924', '兴和', '县', 'xinghe', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (898, 155, '150925', '凉城', '县', 'liangcheng', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (899, 155, '150926', '察哈尔右翼前', '旗', 'chahaeryouyiqian', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (900, 155, '150927', '察哈尔右翼中', '旗', 'chahaeryouyizhong', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (901, 155, '150928', '察哈尔右翼后', '旗', 'chahaeryouyihou', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (902, 155, '150929', '四子王', '旗', 'siziwang', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (903, 155, '150981', '丰镇', '市', 'fengzhen', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (904, 156, '152201', '乌兰浩特', '市', 'wulanhaote', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (905, 156, '152202', '阿尔山', '市', 'aershan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (906, 156, '152221', '科尔沁右翼前', '旗', 'keerqinyouyiqian', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (907, 156, '152222', '科尔沁右翼中', '旗', 'keerqinyouyizhong', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (908, 156, '152223', '扎赉特', '旗', 'zhalaite', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (909, 156, '152224', '突泉', '县', 'tuquan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (910, 157, '152501', '二连浩特', '市', 'erlianhaote', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (911, 157, '152502', '锡林浩特', '市', 'xilinhaote', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (912, 157, '152522', '阿巴嘎', '旗', 'abaga', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (913, 157, '152523', '苏尼特左', '旗', 'sunitezuo', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (914, 157, '152524', '苏尼特右', '旗', 'suniteyou', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (915, 157, '152525', '东乌珠穆沁', '旗', 'dongwuzhumuqin', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (916, 157, '152526', '西乌珠穆沁', '旗', 'xiwuzhumuqin', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (917, 157, '152527', '太仆寺', '旗', 'taipusi', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (918, 157, '152528', '镶黄', '旗', 'xianghuang', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (919, 157, '152529', '正镶白', '旗', 'zhengxiangbai', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (920, 157, '152530', '正蓝', '旗', 'zhenglan', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (921, 157, '152531', '多伦', '县', 'duolun', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (922, 158, '152921', '阿拉善左', '旗', 'alashanzuo', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (923, 158, '152922', '阿拉善右', '旗', 'alashanyou', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (924, 158, '152923', '额济纳', '旗', 'ejina', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (925, 159, '210102', '和平', '区', 'heping', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (926, 159, '210103', '沈河', '区', 'shenhe', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (927, 159, '210104', '大东', '区', 'dadong', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (928, 159, '210105', '皇姑', '区', 'huanggu', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (929, 159, '210106', '铁西', '区', 'tiexi', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (930, 159, '210111', '苏家屯', '区', 'sujiatun', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (931, 159, '210112', '浑南', '区', 'hunnan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (932, 159, '210113', '沈北新区', '', 'shenbeixinqu', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (933, 159, '210114', '于洪', '区', 'yuhong', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (934, 159, '210115', '辽中', '区', 'liaozhong', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (935, 159, '210123', '康平', '县', 'kangping', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (936, 159, '210124', '法库', '县', 'faku', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (937, 159, '210181', '新民', '市', 'xinmin', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (938, 160, '210202', '中山', '区', 'zhongshan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (939, 160, '210203', '西岗', '区', 'xigang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (940, 160, '210204', '沙河口', '区', 'shahekou', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (941, 160, '210211', '甘井子', '区', 'ganjingzi', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (942, 160, '210212', '旅顺口', '区', 'lu:shunkou', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (943, 160, '210213', '金州', '区', 'jinzhou', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (944, 160, '210224', '长海', '县', 'changhai', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (945, 160, '210281', '瓦房店', '市', 'wafangdian', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (946, 160, '210282', '普兰店', '区', 'pulandian', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (947, 160, '210283', '庄河', '市', 'zhuanghe', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (948, 161, '210302', '铁东', '区', 'tiedong', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (949, 161, '210303', '铁西', '区', 'tiexi', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (950, 161, '210304', '立山', '区', 'lishan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (951, 161, '210311', '千山', '区', 'qianshan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (952, 161, '210321', '台安', '县', 'taian', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (953, 161, '210323', '岫岩', '自治县', 'xiuyan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (954, 161, '210381', '海城', '市', 'haicheng', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (955, 162, '210402', '新抚', '区', 'xinfu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (956, 162, '210403', '东洲', '区', 'dongzhou', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (957, 162, '210404', '望花', '区', 'wanghua', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (958, 162, '210411', '顺城', '区', 'shuncheng', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (959, 162, '210421', '抚顺', '县', 'fushun', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (960, 162, '210422', '新宾', '自治县', 'xinbin', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (961, 162, '210423', '清原', '自治县', 'qingyuan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (962, 163, '210502', '平山', '区', 'pingshan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (963, 163, '210503', '溪湖', '区', 'xihu', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (964, 163, '210504', '明山', '区', 'mingshan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (965, 163, '210505', '南芬', '区', 'nanfen', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (966, 163, '210521', '本溪', '自治县', 'benxi', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (967, 163, '210522', '桓仁', '自治县', 'huanren', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (968, 164, '210602', '元宝', '区', 'yuanbao', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (969, 164, '210603', '振兴', '区', 'zhenxing', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (970, 164, '210604', '振安', '区', 'zhenan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (971, 164, '210624', '宽甸', '自治县', 'kuandian', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (972, 164, '210681', '东港', '市', 'donggang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (973, 164, '210682', '凤城', '市', 'fengcheng', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (974, 165, '210702', '古塔', '区', 'guta', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (975, 165, '210703', '凌河', '区', 'linghe', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (976, 165, '210711', '太和', '区', 'taihe', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (977, 165, '210726', '黑山', '县', 'heishan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (978, 165, '210727', '义县', '', 'yixian', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (979, 165, '210781', '凌海', '市', 'linghai', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (980, 165, '210782', '北镇', '市', 'beizhen', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (981, 166, '210802', '站前', '区', 'zhanqian', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (982, 166, '210803', '西市', '区', 'xishi', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (983, 166, '210804', '鲅鱼圈', '区', 'bayuquan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (984, 166, '210811', '老边', '区', 'laobian', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (985, 166, '210881', '盖州', '市', 'gaizhou', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (986, 166, '210882', '大石桥', '市', 'dashiqiao', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (987, 167, '210902', '海州', '区', 'haizhou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (988, 167, '210903', '新邱', '区', 'xinqiu', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (989, 167, '210904', '太平', '区', 'taiping', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (990, 167, '210905', '清河门', '区', 'qinghemen', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (991, 167, '210911', '细河', '区', 'xihe', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (992, 167, '210921', '阜新', '自治县', 'fuxin', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (993, 167, '210922', '彰武', '县', 'zhangwu', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (994, 168, '211002', '白塔', '区', 'baita', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (995, 168, '211003', '文圣', '区', 'wensheng', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (996, 168, '211004', '宏伟', '区', 'hongwei', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (997, 168, '211005', '弓长岭', '区', 'gongchangling', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (998, 168, '211021', '辽阳', '县', 'liaoyang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (999, 168, '211081', '灯塔', '市', 'dengta', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1000, 168, '211110', '太子河', '区', 'taizihe', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1001, 169, '211103', '双台子', '区', 'shuangtaizi', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1002, 169, '211103', '兴隆台', '区', 'xinglongtai', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1003, 169, '211104', '大洼', '区', 'dawa', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1004, 169, '211122', '盘山', '县', 'panshan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1005, 170, '211202', '银州', '区', 'yinzhou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1006, 170, '211204', '清河', '区', 'qinghe', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1007, 170, '211221', '铁岭', '县', 'tieling', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1008, 170, '211223', '西丰', '县', 'xifeng', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1009, 170, '211224', '昌图', '县', 'changtu', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1010, 170, '211281', '调兵山', '市', 'diaobingshan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1011, 170, '211282', '开原', '市', 'kaiyuan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1012, 171, '211302', '双塔', '区', 'shuangta', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1013, 171, '211303', '龙城', '区', 'longcheng', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1014, 171, '211321', '朝阳', '县', 'chaoyang', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1015, 171, '211322', '建平', '县', 'jianping', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1016, 171, '211324', '喀喇沁左翼', '自治县', 'kalaqinzuoyi', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1017, 171, '211381', '北票', '市', 'beipiao', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1018, 171, '211382', '凌源', '市', 'lingyuan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1019, 172, '211402', '连山', '区', 'lianshan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1020, 172, '211403', '龙港', '区', 'longgang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1021, 172, '211404', '南票', '区', 'nanpiao', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1022, 172, '211421', '绥中', '县', 'suizhong', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1023, 172, '211422', '建昌', '县', 'jianchang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1024, 172, '211481', '兴城', '市', 'xingcheng', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1025, 173, '220102', '南关', '区', 'nanguan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1026, 173, '220103', '宽城', '区', 'kuancheng', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1027, 173, '220104', '朝阳', '区', 'chaoyang', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1028, 173, '220105', '二道', '区', 'erdao', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1029, 173, '220106', '绿园', '区', 'lu:yuan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1030, 173, '220112', '双阳', '区', 'shuangyang', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1031, 173, '220122', '农安', '县', 'nongan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1032, 173, '220113', '九台', '区', 'jiutai', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1033, 173, '220182', '榆树', '市', 'yushu', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1034, 173, '220183', '德惠', '市', 'dehui', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1035, 174, '220202', '昌邑', '区', 'changyi', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1036, 174, '220203', '龙潭', '区', 'longtan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1037, 174, '220204', '船营', '区', 'chuanying', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1038, 174, '220211', '丰满', '区', 'fengman', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1039, 174, '220221', '永吉', '县', 'yongji', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1040, 174, '220281', '桦甸', '市', 'huadian', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1041, 174, '220282', '蛟河', '市', 'jiaohe', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1042, 174, '220283', '舒兰', '市', 'shulan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1043, 174, '220284', '磐石', '市', 'panshi', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1044, 175, '220302', '铁西', '区', 'tiexi', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1045, 175, '220303', '铁东', '区', 'tiedong', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1046, 175, '220322', '梨树', '县', 'lishu', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1047, 175, '220323', '伊通', '自治县', 'yitong', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1048, 175, '220381', '公主岭', '市', 'gongzhuling', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1049, 175, '220382', '双辽', '市', 'shuangliao', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1050, 176, '220402', '龙山', '区', 'longshan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1051, 176, '220403', '西安', '区', 'xian', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1052, 176, '220421', '东丰', '县', 'dongfeng', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1053, 176, '220422', '东辽', '县', 'dongliao', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1054, 177, '220502', '东昌', '区', 'dongchang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1055, 177, '220503', '二道江', '区', 'erdaojiang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1056, 177, '220521', '通化', '县', 'tonghua', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1057, 177, '220523', '辉南', '县', 'huinan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1058, 177, '220524', '柳河', '县', 'liuhe', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1059, 177, '220581', '梅河口', '市', 'meihekou', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1060, 177, '220582', '集安', '市', 'jian', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1061, 178, '220602', '浑江', '区', 'hunjiang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1062, 178, '220604', '江源', '区', 'jiangyuan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1063, 178, '220621', '抚松', '县', 'fusong', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1064, 178, '220622', '靖宇', '县', 'jingyu', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1065, 178, '220623', '长白', '自治县', 'changbai', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1066, 178, '220681', '临江', '市', 'linjiang', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1067, 179, '220702', '宁江', '区', 'ningjiang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1068, 179, '220721', '前郭尔罗斯', '自治县', 'qianguoerluosi', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1069, 179, '220722', '长岭', '县', 'changling', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1070, 179, '220723', '乾安', '县', 'qianan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1071, 179, '220724', '扶余', '市', 'fuyu', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1072, 180, '220802', '洮北', '区', 'taobei', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1073, 180, '220821', '镇赉', '县', 'zhenlai', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1074, 180, '220881', '洮南', '市', 'taonan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1075, 180, '220882', '大安', '市', 'daan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1076, 180, '220822', '通榆', '县', 'tongyu', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1077, 181, '222401', '延吉', '市', 'yanji', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1078, 181, '222402', '图们', '市', 'tumen', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1079, 181, '222403', '敦化', '市', 'dunhua', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1080, 181, '222404', '珲春', '市', 'hunchun', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1081, 181, '222405', '龙井', '市', 'longjing', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1082, 181, '222406', '和龙', '市', 'helong', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1083, 181, '222424', '汪清', '县', 'wangqing', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1084, 181, '222426', '安图', '县', 'antu', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1085, 182, '230102', '道里', '区', 'daoli', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1086, 182, '230103', '南岗', '区', 'nangang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1087, 182, '230104', '道外', '区', 'daowai', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1088, 182, '230108', '平房', '区', 'pingfang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1089, 182, '230109', '松北', '区', 'songbei', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1090, 182, '230110', '香坊', '区', 'xiangfang', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1091, 182, '230111', '呼兰', '区', 'hulan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1092, 182, '230112', '阿城', '区', 'acheng', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1093, 182, '230123', '依兰', '县', 'yilan', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1094, 182, '230124', '方正', '县', 'fangzheng', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1095, 182, '230125', '宾县', '', 'binxian', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1096, 182, '230126', '巴彦', '县', 'bayan', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1097, 182, '230127', '木兰', '县', 'mulan', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1098, 182, '230128', '通河', '县', 'tonghe', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1099, 182, '230129', '延寿', '县', 'yanshou', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1100, 182, '230182', '双城', '区', 'shuangcheng', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1101, 182, '230183', '尚志', '市', 'shangzhi', 17);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1102, 182, '230184', '五常', '市', 'wuchang', 18);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1103, 183, '230202', '龙沙', '区', 'longsha', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1104, 183, '230203', '建华', '区', 'jianhua', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1105, 183, '230204', '铁锋', '区', 'tiefeng', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1106, 183, '230205', '昂昂溪', '区', 'angangxi', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1107, 183, '230206', '富拉尔基', '区', 'fulaerji', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1108, 183, '230207', '碾子山', '区', 'nianzishan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1109, 183, '230208', '梅里斯', '区', 'meilisi', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1110, 183, '230221', '龙江', '县', 'longjiang', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1111, 183, '230223', '依安', '县', 'yian', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1112, 183, '230224', '泰来', '县', 'tailai', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1113, 183, '230225', '甘南', '县', 'gannan', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1114, 183, '230227', '富裕', '县', 'fuyu', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1115, 183, '230229', '克山', '县', 'keshan', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1116, 183, '230230', '克东', '县', 'kedong', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1117, 183, '230231', '拜泉', '县', 'baiquan', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1118, 183, '230281', '讷河', '市', 'nehe', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1119, 184, '230302', '鸡冠', '区', 'jiguan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1120, 184, '230303', '恒山', '区', 'hengshan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1121, 184, '230304', '滴道', '区', 'didao', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1122, 184, '230305', '梨树', '区', 'lishu', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1123, 184, '230306', '城子河', '区', 'chengzihe', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1124, 184, '230307', '麻山', '区', 'mashan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1125, 184, '230321', '鸡东', '县', 'jidong', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1126, 184, '230381', '虎林', '市', 'hulin', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1127, 184, '230382', '密山', '市', 'mishan', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1128, 185, '230402', '向阳', '区', 'xiangyang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1129, 185, '230403', '工农', '区', 'gongnong', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1130, 185, '230404', '南山', '区', 'nanshan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1131, 185, '230405', '兴安', '区', 'xingan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1132, 185, '230406', '东山', '区', 'dongshan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1133, 185, '230407', '兴山', '区', 'xingshan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1134, 185, '230421', '萝北', '县', 'luobei', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1135, 185, '230422', '绥滨', '县', 'suibin', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1136, 186, '230502', '尖山', '区', 'jianshan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1137, 186, '230503', '岭东', '区', 'lingdong', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1138, 186, '230505', '四方台', '区', 'sifangtai', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1139, 186, '230506', '宝山', '区', 'baoshan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1140, 186, '230521', '集贤', '县', 'jixian', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1141, 186, '230522', '友谊', '县', 'youyi', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1142, 186, '230523', '宝清', '县', 'baoqing', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1143, 186, '230524', '饶河', '县', 'raohe', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1144, 187, '230602', '萨尔图', '区', 'saertu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1145, 187, '230603', '龙凤', '区', 'longfeng', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1146, 187, '230604', '让胡路', '区', 'ranghulu', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1147, 187, '230605', '红岗', '区', 'honggang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1148, 187, '230606', '大同', '区', 'datong', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1149, 187, '230621', '肇州', '县', 'zhaozhou', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1150, 187, '230622', '肇源', '县', 'zhaoyuan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1151, 187, '230623', '林甸', '县', 'lindian', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1152, 187, '230624', '杜尔伯特', '自治县', 'duerbote', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1154, 188, '230726', '南岔', '县', 'nancha', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1155, 188, '230719', '友好', '区', 'youhao', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1156, 188, '230751', '金林', '区', 'jinlin', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1157, 188, '230718', '乌翠', '区', 'wucui', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1158, 188, '230724', '丰林', '县', 'fenglin', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1162, 188, '230717', '伊美', '区', 'yimei', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1163, 188, '230723', '汤旺', '县', 'tangwang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1164, 188, '230725', '大箐山', '县', 'daqingshan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1168, 188, '230722', '嘉荫', '县', 'jiayin', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1169, 188, '230781', '铁力', '市', 'tieli', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1170, 189, '230803', '向阳', '区', 'xiangyang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1171, 189, '230804', '前进', '区', 'qianjin', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1172, 189, '230805', '东风', '区', 'dongfeng', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1173, 189, '230811', '郊区', '', 'jiaoqu', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1174, 189, '230822', '桦南', '县', 'huanan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1175, 189, '230826', '桦川', '县', 'huachuan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1176, 189, '230828', '汤原', '县', 'tangyuan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1177, 189, '230883', '抚远', '市', 'fuyuan', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1178, 189, '230881', '同江', '市', 'tongjiang', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1179, 189, '230882', '富锦', '市', 'fujin', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1180, 190, '230902', '新兴', '区', 'xinxing', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1181, 190, '230903', '桃山', '区', 'taoshan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1182, 190, '230904', '茄子河', '区', 'qiezihe', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1183, 190, '230921', '勃利', '县', 'boli', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1184, 191, '231002', '东安', '区', 'dongan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1185, 191, '231003', '阳明', '区', 'yangming', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1186, 191, '231004', '爱民', '区', 'aimin', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1187, 191, '231005', '西安', '区', 'xian', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1188, 191, '231086', '东宁', '市', 'dongning', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1189, 191, '231025', '林口', '县', 'linkou', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1190, 191, '231081', '绥芬河', '市', 'suifenhe', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1191, 191, '231083', '海林', '市', 'hailin', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1192, 191, '231084', '宁安', '市', 'ningan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1193, 191, '231085', '穆棱', '市', 'muleng', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1194, 192, '231102', '爱辉', '区', 'aihui', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1195, 192, '231183', '嫩江', '市', 'nenjiang', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1196, 192, '231123', '逊克', '县', 'xunke', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1197, 192, '231124', '孙吴', '县', 'sunwu', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1198, 192, '231181', '北安', '市', 'beian', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1199, 192, '231182', '五大连池', '市', 'wudalianchi', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1200, 193, '231202', '北林', '区', 'beilin', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1201, 193, '231221', '望奎', '县', 'wangkui', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1202, 193, '231222', '兰西', '县', 'lanxi', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1203, 193, '231223', '青冈', '县', 'qinggang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1204, 193, '231224', '庆安', '县', 'qingan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1205, 193, '231225', '明水', '县', 'mingshui', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1206, 193, '231226', '绥棱', '县', 'suileng', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1207, 193, '231281', '安达', '市', 'anda', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1208, 193, '231282', '肇东', '市', 'zhaodong', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1209, 193, '231283', '海伦', '市', 'hailun', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1210, 194, '232701', '加格达奇', '区', 'jiagedaqi', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1211, 194, '232702', '松岭', '区', 'songling', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1212, 194, '232703', '新林', '区', 'xinlin', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1213, 194, '232704', '呼中', '区', 'huzhong', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1214, 194, '232721', '呼玛', '县', 'huma', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1215, 194, '232722', '塔河', '县', 'tahe', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1216, 194, '232701', '漠河', '市', 'mohe', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1217, 195, '320102', '玄武', '区', 'xuanwu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1218, 195, '320104', '秦淮', '区', 'qinhuai', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1219, 195, '320105', '建邺', '区', 'jianye', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1220, 195, '320106', '鼓楼', '区', 'gulou', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1221, 195, '320111', '浦口', '区', 'pukou', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1222, 195, '320113', '栖霞', '区', 'qixia', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1223, 195, '320114', '雨花台', '区', 'yuhuatai', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1224, 195, '320115', '江宁', '区', 'jiangning', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1225, 195, '320116', '六合', '区', 'liuhe', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1226, 195, '320124', '溧水', '区', 'lishui', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1227, 195, '320125', '高淳', '区', 'gaochun', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1228, 196, '320202', '梁溪', '区', 'liangxi', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1229, 196, '', '新吴', '区', 'xinwu', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1231, 196, '320205', '锡山', '区', 'xishan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1232, 196, '320206', '惠山', '区', 'huishan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1233, 196, '320211', '滨湖', '区', 'binhu', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1234, 196, '320281', '江阴', '市', 'jiangyin', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1235, 196, '320282', '宜兴', '市', 'yixing', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1236, 197, '320302', '鼓楼', '区', 'gulou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1237, 197, '320303', '云龙', '区', 'yunlong', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1238, 197, '320305', '贾汪', '区', 'jiawang', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1239, 197, '320311', '泉山', '区', 'quanshan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1240, 197, '320312', '铜山', '区', 'tongshan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1241, 197, '320321', '丰县', '', 'fengxian', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1242, 197, '320322', '沛县', '', 'peixian', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1243, 197, '320324', '睢宁', '县', 'suining', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1244, 197, '320381', '新沂', '市', 'xinyi', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1245, 197, '320382', '邳州', '市', 'pizhou', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1246, 198, '320402', '天宁', '区', 'tianning', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1247, 198, '320404', '钟楼', '区', 'zhonglou', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1249, 198, '320411', '新北', '区', 'xinbei', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1250, 198, '320412', '武进', '区', 'wujin', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1251, 198, '320481', '溧阳', '市', 'liyang', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1252, 198, '320482', '金坛', '区', 'jintan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1253, 199, '320505', '虎丘', '区', 'huqiu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1254, 199, '320506', '吴中', '区', 'wuzhong', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1255, 199, '320507', '相城', '区', 'xiangcheng', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1256, 199, '320508', '姑苏', '区', 'gusu', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1257, 199, '320509', '吴江', '市', 'wujiang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1258, 199, '320581', '常熟', '市', 'changshu', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1259, 199, '320582', '张家港', '市', 'zhangjiagang', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1260, 199, '320583', '昆山', '市', 'kunshan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1261, 199, '320585', '太仓', '市', 'taicang', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1262, 200, '320602', '崇川', '区', 'chongchuan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1263, 200, '320611', '港闸', '区', 'gangzha', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1264, 200, '320612', '通州', '区', 'tongzhou', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1265, 200, '320685', '海安', '市', 'haian', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1266, 200, '320623', '如东', '县', 'rudong', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1267, 200, '320681', '启东', '市', 'qidong', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1268, 200, '320682', '如皋', '市', 'rugao', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1269, 200, '320684', '海门', '市', 'haimen', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1270, 201, '320703', '连云', '区', 'lianyun', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1272, 201, '320706', '海州', '区', 'haizhou', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1273, 201, '320721', '赣榆', '区', 'ganyu', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1274, 201, '320722', '东海', '县', 'donghai', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1275, 201, '320723', '灌云', '县', 'guanyun', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1276, 201, '320724', '灌南', '县', 'guannan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1278, 202, '320803', '淮安', '区', 'huaian', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1279, 202, '320804', '淮阴', '区', 'huaiyin', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1280, 202, '320812', '清江浦', '区', 'qingjiangpu', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1281, 202, '320826', '涟水', '县', 'lianshui', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1282, 202, '320813', '洪泽', '区', 'hongze', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1283, 202, '320830', '盱眙', '县', 'xuyi', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1284, 202, '320831', '金湖', '县', 'jinhu', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1285, 203, '320902', '亭湖', '区', 'tinghu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1286, 203, '320903', '盐都', '区', 'yandu', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1287, 203, '320921', '响水', '县', 'xiangshui', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1288, 203, '320922', '滨海', '县', 'binhai', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1289, 203, '320923', '阜宁', '县', 'funing', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1290, 203, '320924', '射阳', '县', 'sheyang', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1291, 203, '320925', '建湖', '县', 'jianhu', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1292, 203, '320981', '东台', '市', 'dongtai', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1293, 203, '320982', '大丰', '区', 'dafeng', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1294, 204, '321002', '广陵', '区', 'guangling', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1295, 204, '321003', '邗江', '区', 'hanjiang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1296, 204, '321012', '江都', '区', 'jiangu', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1297, 204, '321023', '宝应', '县', 'baoying', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1298, 204, '321081', '仪征', '市', 'yizheng', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1299, 204, '321084', '高邮', '市', 'gaoyou', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1300, 205, '321102', '京口', '区', 'jingkou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1301, 205, '321111', '润州', '区', 'runzhou', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1302, 205, '321112', '丹徒', '区', 'dantu', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1303, 205, '321181', '丹阳', '市', 'danyang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1304, 205, '321182', '扬中', '市', 'yangzhong', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1305, 205, '321183', '句容', '市', 'jurong', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1306, 206, '321202', '海陵', '区', 'hailing', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1307, 206, '321203', '高港', '区', 'gaogang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1308, 206, '321281', '兴化', '市', 'xinghua', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1309, 206, '321282', '靖江', '市', 'jingjiang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1310, 206, '321283', '泰兴', '市', 'taixing', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1311, 206, '321284', '姜堰', '区', 'jiangyan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1312, 207, '321302', '宿城', '区', 'sucheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1313, 207, '321311', '宿豫', '区', 'suyu', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1314, 207, '321322', '沭阳', '县', 'shuyang', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1315, 207, '321323', '泗阳', '县', 'siyang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1316, 207, '321324', '泗洪', '县', 'sihong', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1317, 208, '330102', '上城', '区', 'shangcheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1318, 208, '330103', '下城', '区', 'xiacheng', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1319, 208, '330104', '江干', '区', 'jianggan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1320, 208, '330105', '拱墅', '区', 'gongshu', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1321, 208, '330106', '西湖', '区', 'xihu', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1322, 208, '330108', '滨江', '区', 'binjiang', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1323, 208, '330109', '萧山', '区', 'xiaoshan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1324, 208, '330110', '余杭', '区', 'yuhang', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1325, 208, '330122', '桐庐', '县', 'tonglu', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1326, 208, '330127', '淳安', '县', 'chunan', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1327, 208, '330182', '建德', '市', 'jiande', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1328, 208, '330183', '富阳', '区', 'fuyang', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1329, 208, '330112', '临安', '区', 'linan', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1330, 209, '330203', '海曙', '区', 'haishu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1332, 209, '330205', '江北', '区', 'jiangbei', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1333, 209, '330206', '北仑', '区', 'beilun', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1334, 209, '330211', '镇海', '区', 'zhenhai', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1335, 209, '330212', '鄞州', '区', 'yinzhou', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1336, 209, '330225', '象山', '县', 'xiangshan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1337, 209, '330226', '宁海', '县', 'ninghai', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1338, 209, '330281', '余姚', '市', 'yuyao', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1339, 209, '330282', '慈溪', '市', 'cixi', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1340, 209, '330213', '奉化', '区', 'fenghua', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1341, 210, '330302', '鹿城', '区', 'lucheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1342, 210, '330303', '龙湾', '区', 'longwan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1343, 210, '330304', '瓯海', '区', 'ouhai', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1344, 210, '330322', '洞头', '区', 'dongtou', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1345, 210, '330324', '永嘉', '县', 'yongjia', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1346, 210, '330326', '平阳', '县', 'pingyang', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1347, 210, '330327', '苍南', '县', 'cangnan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1348, 210, '330328', '文成', '县', 'wencheng', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1349, 210, '330329', '泰顺', '县', 'taishun', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1350, 210, '330381', '瑞安', '市', 'ruian', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1351, 210, '330382', '乐清', '市', 'leqing', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1352, 211, '330402', '南湖', '区', 'nanhu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1353, 211, '330411', '秀洲', '区', 'xiuzhou', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1354, 211, '330421', '嘉善', '县', 'jiashan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1355, 211, '330424', '海盐', '县', 'haiyan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1356, 211, '330481', '海宁', '市', 'haining', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1357, 211, '330482', '平湖', '市', 'pinghu', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1358, 211, '330483', '桐乡', '市', 'tongxiang', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1359, 212, '330502', '吴兴', '区', 'wuxing', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1360, 212, '330503', '南浔', '区', 'nanxun', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1361, 212, '330521', '德清', '县', 'deqing', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1362, 212, '330522', '长兴', '县', 'changxing', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1363, 212, '330523', '安吉', '县', 'anji', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1364, 213, '330602', '越城', '区', 'yuecheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1365, 213, '330603', '柯桥', '区', 'keqiao', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1366, 213, '330624', '新昌', '县', 'xinchang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1367, 213, '330681', '诸暨', '市', 'zhuji', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1368, 213, '330604', '上虞', '区', 'shangyu', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1369, 213, '330683', '嵊州', '市', 'shengzhou', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1370, 214, '330702', '婺城', '区', 'wucheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1371, 214, '330703', '金东', '区', 'jindong', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1372, 214, '330723', '武义', '县', 'wuyi', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1373, 214, '330726', '浦江', '县', 'pujiang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1374, 214, '330727', '磐安', '县', 'panan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1375, 214, '330781', '兰溪', '市', 'lanxi', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1376, 214, '330782', '义乌', '市', 'yiwu', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1377, 214, '330783', '东阳', '市', 'dongyang', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1378, 214, '330784', '永康', '市', 'yongkang', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1379, 215, '330802', '柯城', '区', 'kecheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1380, 215, '330803', '衢江', '区', 'qujiang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1381, 215, '330822', '常山', '县', 'changshan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1382, 215, '330824', '开化', '县', 'kaihua', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1383, 215, '330825', '龙游', '县', 'longyou', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1384, 215, '330881', '江山', '市', 'jiangshan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1385, 216, '330902', '定海', '区', 'dinghai', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1386, 216, '330903', '普陀', '区', 'putuo', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1387, 216, '330921', '岱山', '县', 'daishan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1388, 216, '330922', '嵊泗', '县', 'shengsi', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1389, 217, '331002', '椒江', '区', 'jiaojiang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1390, 217, '331003', '黄岩', '区', 'huangyan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1391, 217, '331004', '路桥', '区', 'luqiao', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1392, 217, '331083', '玉环', '市', 'yuhuan', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1393, 217, '331022', '三门', '县', 'sanmen', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1394, 217, '331023', '天台', '县', 'tiantai', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1395, 217, '331024', '仙居', '县', 'xianju', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1396, 217, '331081', '温岭', '市', 'wenling', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1397, 217, '331082', '临海', '市', 'linhai', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1398, 218, '331102', '莲都', '区', 'liandu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1399, 218, '331121', '青田', '县', 'qingtian', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1400, 218, '331122', '缙云', '县', 'jinyun', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1401, 218, '331123', '遂昌', '县', 'suichang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1402, 218, '331124', '松阳', '县', 'songyang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1403, 218, '331125', '云和', '县', 'yunhe', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1404, 218, '331126', '庆元', '县', 'qingyuan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1405, 218, '331127', '景宁', '自治县', 'jingning', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1406, 218, '331181', '龙泉', '市', 'longquan', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1407, 219, '340102', '瑶海', '区', 'yaohai', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1408, 219, '340103', '庐阳', '区', 'luyang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1409, 219, '340104', '蜀山', '区', 'shushan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1410, 219, '340111', '包河', '区', 'baohe', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1411, 219, '340121', '长丰', '县', 'changfeng', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1412, 219, '340122', '肥东', '县', 'feidong', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1413, 219, '340123', '肥西', '县', 'feixi', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1414, 219, '340124', '庐江', '县', 'lujiang', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1415, 219, '340181', '巢湖', '市', 'chaohu', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1416, 220, '340202', '镜湖', '区', 'jinghu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1417, 220, '340203', '弋江', '区', 'yijiang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1418, 220, '340207', '鸠江', '区', 'jiujiang', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1419, 220, '340208', '三山', '区', 'sanshan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1420, 220, '340221', '芜湖', '县', 'wuhu', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1421, 220, '340222', '繁昌', '县', 'fanchang', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1422, 220, '340223', '南陵', '县', 'nanling', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1423, 220, '340281', '无为', '市', 'wuwei', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1424, 221, '340302', '龙子湖', '区', 'longzihu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1425, 221, '340303', '蚌山', '区', 'bangshan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1426, 221, '340304', '禹会', '区', 'yuhui', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1427, 221, '340311', '淮上', '区', 'huaishang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1428, 221, '340321', '怀远', '县', 'huaiyuan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1429, 221, '340322', '五河', '县', 'wuhe', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1430, 221, '340323', '固镇', '县', 'guzhen', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1431, 222, '340402', '大通', '区', 'datong', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1432, 222, '340403', '田家庵', '区', 'tianjiaan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1433, 222, '340404', '谢家集', '区', 'xiejiaji', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1434, 222, '340405', '八公山', '区', 'bagongshan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1435, 222, '340406', '潘集', '区', 'panji', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1436, 222, '340421', '凤台', '县', 'fengtai', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1437, 223, '340503', '花山', '区', 'huashan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1438, 223, '340504', '雨山', '区', 'yushan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1439, 223, '340506', '博望', '区', 'bowang', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1440, 223, '340521', '当涂', '县', 'dangtu', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1441, 223, '340522', '含山', '县', 'hanshan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1442, 223, '340523', '和县', '', 'hexian', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1443, 224, '340602', '杜集', '区', 'duji', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1444, 224, '340603', '相山', '区', 'xiangshan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1445, 224, '340604', '烈山', '区', 'lieshan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1446, 224, '340621', '濉溪', '县', 'suixi', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1447, 225, '340702', '铜官山', '区', 'tongguanshan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1449, 225, '340711', '郊区', '', 'jiaoqu', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1450, 225, '340721', '义安', '区', 'yian', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1451, 226, '340802', '迎江', '区', 'yingjiang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1452, 226, '340803', '大观', '区', 'daguan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1453, 226, '340811', '宜秀', '区', 'yixiu', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1454, 226, '340822', '怀宁', '县', 'huaining', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1455, 225, '340823', '枞阳', '县', 'zongyang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1456, 226, '340824', '潜山', '市', 'qianshan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1457, 226, '340825', '太湖', '县', 'taihu', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1458, 226, '340826', '宿松', '县', 'susong', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1459, 226, '340827', '望江', '县', 'wangjiang', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1460, 226, '340828', '岳西', '县', 'yuexi', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1461, 226, '340881', '桐城', '市', 'tongcheng', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1462, 227, '341002', '屯溪', '区', 'tunxi', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1463, 227, '341003', '黄山', '区', 'huangshan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1464, 227, '341004', '徽州', '区', 'huizhou', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1465, 227, '341021', '歙县', '', 'shexian', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1466, 227, '341022', '休宁', '县', 'xiuning', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1467, 227, '341023', '黟县', '', 'yixian', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1468, 227, '341024', '祁门', '县', 'qimen', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1469, 228, '341102', '琅玡', '区', 'langya', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1470, 228, '341103', '南谯', '区', 'nanqiao', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1471, 228, '341122', '来安', '县', 'laian', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1472, 228, '341124', '全椒', '县', 'quanjiao', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1473, 228, '341125', '定远', '县', 'dingyuan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1474, 228, '341126', '凤阳', '县', 'fengyang', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1475, 228, '341181', '天长', '市', 'tianchang', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1476, 228, '341182', '明光', '市', 'mingguang', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1477, 229, '341202', '颍州', '区', 'yingzhou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1478, 229, '341203', '颍东', '区', 'yingdong', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1479, 229, '341204', '颍泉', '区', 'yingquan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1480, 229, '341221', '临泉', '县', 'linquan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1481, 229, '341222', '太和', '县', 'taihe', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1482, 229, '341225', '阜南', '县', 'funan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1483, 229, '341226', '颖上', '县', 'yingshang', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1484, 229, '341282', '界首', '市', 'jieshou', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1485, 230, '341302', '埇桥', '区', 'yongqiao', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1486, 230, '341321', '砀山', '县', 'dangshan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1487, 230, '341322', '萧县', '', 'xiaoxian', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1488, 230, '341323', '灵璧', '县', 'lingbi', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1489, 230, '341324', '泗县', '', 'sixian', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1490, 231, '341502', '金安', '区', 'jinan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1491, 231, '341503', '裕安', '区', 'yuan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1492, 222, '341521', '寿县', '', 'shouxian', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1493, 231, '341522', '霍邱', '县', 'huoqiu', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1494, 231, '341523', '舒城', '县', 'shucheng', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1495, 231, '341524', '金寨', '县', 'jinzhai', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1496, 231, '341525', '霍山', '县', 'huoshan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1497, 232, '341602', '谯城', '区', 'qiaocheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1498, 232, '341621', '涡阳', '县', 'woyang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1499, 232, '341622', '蒙城', '县', 'mengcheng', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1500, 232, '341623', '利辛', '县', 'lixin', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1501, 233, '341702', '贵池', '区', 'guichi', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1502, 233, '341721', '东至', '县', 'dongzhi', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1503, 233, '341722', '石台', '县', 'shitai', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1504, 233, '341723', '青阳', '县', 'qingyang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1505, 234, '341802', '宣州', '区', 'xuanzhou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1506, 234, '341821', '郎溪', '县', 'langxi', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1507, 234, '341882', '广德', '市', 'guangde', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1508, 234, '341823', '泾县', '', 'jingxian', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1509, 234, '341824', '绩溪', '县', 'jixi', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1510, 234, '341825', '旌德', '县', 'jingde', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1511, 234, '341881', '宁国', '市', 'ningguo', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1512, 235, '350102', '鼓楼', '区', 'gulou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1513, 235, '350103', '台江', '区', 'taijiang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1514, 235, '350104', '仓山', '区', 'cangshan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1515, 235, '350105', '马尾', '区', 'mawei', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1516, 235, '350111', '晋安', '区', 'jinan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1517, 235, '350121', '闽侯', '县', 'minhou', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1518, 235, '350122', '连江', '县', 'lianjiang', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1519, 235, '350123', '罗源', '县', 'luoyuan', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1520, 235, '350124', '闽清', '县', 'minqing', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1521, 235, '350125', '永泰', '县', 'yongtai', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1522, 235, '350128', '平潭', '县', 'pingtan', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1523, 235, '350181', '福清', '市', 'fuqing', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1524, 235, '350112', '长乐', '区', 'changle', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1525, 236, '350203', '思明', '区', 'siming', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1526, 236, '350205', '海沧', '区', 'haicang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1527, 236, '350206', '湖里', '区', 'huli', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1528, 236, '350211', '集美', '区', 'jimei', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1529, 236, '350212', '同安', '区', 'tongan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1530, 236, '350213', '翔安', '区', 'xiangan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1531, 237, '350302', '城厢', '区', 'chengxiang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1532, 237, '350303', '涵江', '区', 'hanjiang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1533, 237, '350304', '荔城', '区', 'licheng', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1534, 237, '350305', '秀屿', '区', 'xiuyu', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1535, 237, '350322', '仙游', '县', 'xianyou', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1536, 238, '350402', '梅列', '区', 'meilie', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1537, 238, '350403', '三元', '区', 'sanyuan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1538, 238, '350421', '明溪', '县', 'mingxi', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1539, 238, '350423', '清流', '县', 'qingliu', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1540, 238, '350424', '宁化', '县', 'ninghua', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1541, 238, '350425', '大田', '县', 'datian', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1542, 238, '350426', '尤溪', '县', 'youxi', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1543, 238, '350427', '沙县', '', 'shaxian', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1544, 238, '350428', '将乐', '县', 'jiangle', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1545, 238, '350429', '泰宁', '县', 'taining', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1546, 238, '350430', '建宁', '县', 'jianning', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1547, 238, '350481', '永安', '市', 'yongan', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1548, 239, '350502', '鲤城', '区', 'licheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1549, 239, '350503', '丰泽', '区', 'fengze', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1550, 239, '350504', '洛江', '区', 'luojiang', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1551, 239, '350505', '泉港', '区', 'quangang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1552, 239, '350521', '惠安', '县', 'huian', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1553, 239, '350524', '安溪', '县', 'anxi', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1554, 239, '350525', '永春', '县', 'yongchun', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1555, 239, '350526', '德化', '县', 'dehua', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1556, 239, '350527', '金门', '县', 'jinmen', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1557, 239, '350581', '石狮', '市', 'shishi', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1558, 239, '350582', '晋江', '市', 'jinjiang', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1559, 239, '350583', '南安', '市', 'nanan', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1560, 240, '350602', '芗城', '区', 'xiangcheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1561, 240, '350603', '龙文', '区', 'longwen', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1562, 240, '350622', '云霄', '县', 'yunxiao', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1563, 240, '350623', '漳浦', '县', 'zhangpu', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1564, 240, '350624', '诏安', '县', 'zhaoan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1565, 240, '350625', '长泰', '县', 'changtai', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1566, 240, '350626', '东山', '县', 'dongshan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1567, 240, '350627', '南靖', '县', 'nanjing', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1568, 240, '350628', '平和', '县', 'pinghe', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1569, 240, '350629', '华安', '县', 'huaan', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1570, 240, '350681', '龙海', '市', 'longhai', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1571, 241, '350702', '延平', '区', 'yanping', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1572, 241, '350721', '顺昌', '县', 'shunchang', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1573, 241, '350722', '浦城', '县', 'pucheng', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1574, 241, '350723', '光泽', '县', 'guangze', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1575, 241, '350724', '松溪', '县', 'songxi', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1576, 241, '350725', '政和', '县', 'zhenghe', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1577, 241, '350781', '邵武', '市', 'shaowu', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1578, 241, '350782', '武夷山', '市', 'wuyishan', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1579, 241, '350783', '建瓯', '市', 'jianou', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1580, 241, '350703', '建阳', '区', 'jianyang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1581, 242, '350802', '新罗', '区', 'xinluo', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1582, 242, '350821', '长汀', '县', 'changting', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1583, 242, '350803', '永定', '区', 'yongding', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1584, 242, '350823', '上杭', '县', 'shanghang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1585, 242, '350824', '武平', '县', 'wuping', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1586, 242, '350825', '连城', '县', 'liancheng', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1587, 242, '350881', '漳平', '市', 'zhangping', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1588, 243, '350902', '蕉城', '区', 'jiaocheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1589, 243, '350921', '霞浦', '县', 'xiapu', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1590, 243, '350922', '古田', '县', 'gutian', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1591, 243, '350923', '屏南', '县', 'pingnan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1592, 243, '350924', '寿宁', '县', 'shouning', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1593, 243, '350925', '周宁', '县', 'zhouning', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1594, 243, '350926', '柘荣', '县', 'zherong', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1595, 243, '350981', '福安', '市', 'fuan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1596, 243, '350982', '福鼎', '市', 'fuding', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1597, 244, '360102', '东湖', '区', 'donghu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1598, 244, '360103', '西湖', '区', 'xihu', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1599, 244, '360104', '青云谱', '区', 'qingyunpu', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1600, 244, '360113', '红谷滩', '区', 'honggutan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1601, 244, '360111', '青山湖', '区', 'qingshanhu', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1602, 244, '360121', '南昌', '县', 'nanchang', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1603, 244, '360112', '新建', '区', 'xinjian', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1604, 244, '360123', '安义', '县', 'anyi', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1605, 244, '360124', '进贤', '县', 'jinxian', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1606, 245, '360202', '昌江', '区', 'changjiang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1607, 245, '360203', '珠山', '区', 'zhushan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1608, 245, '360222', '浮梁', '县', 'fuliang', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1609, 245, '360281', '乐平', '市', 'leping', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1610, 246, '360302', '安源', '区', 'anyuan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1611, 246, '360313', '湘东', '区', 'xiangdong', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1612, 246, '360321', '莲花', '县', 'lianhua', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1613, 246, '360322', '上栗', '县', 'shangli', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1614, 246, '360323', '芦溪', '县', 'luxi', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1615, 247, '360402', '濂溪', '区', 'lianxi', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1616, 247, '360403', '浔阳', '区', 'xunyang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1617, 247, '360404', '柴桑', '区', 'chaisang', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1618, 247, '360423', '武宁', '县', 'wuning', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1619, 247, '360424', '修水', '县', 'xiushui', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1620, 247, '360425', '永修', '县', 'yongxiu', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1621, 247, '360426', '德安', '县', 'dean', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1622, 247, '360483', '庐山', '市', 'lushan', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1623, 247, '360428', '都昌', '县', 'duchang', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1624, 247, '360429', '湖口', '县', 'hukou', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1625, 247, '360430', '彭泽', '县', 'pengze', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1626, 247, '360481', '瑞昌', '市', 'ruichang', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1627, 247, '360482', '共青城', '市', 'gongqingcheng', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1628, 248, '360502', '渝水', '区', 'yushui', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1629, 248, '360521', '分宜', '县', 'fenyi', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1630, 249, '360602', '月湖', '区', 'yuehu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1631, 249, '360603', '余江', '区', 'yujiang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1632, 249, '360681', '贵溪', '市', 'guixi', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1633, 250, '360702', '章贡', '区', 'zhanggong', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1634, 250, '360704', '赣县', '区', 'ganxian', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1635, 250, '360722', '信丰', '县', 'xinfeng', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1636, 250, '360723', '大余', '县', 'dayu', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1637, 250, '360724', '上犹', '县', 'shangyou', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1638, 250, '360725', '崇义', '县', 'chongyi', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1639, 250, '360726', '安远', '县', 'anyuan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1640, 250, '360727', '龙南', '县', 'longnan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1641, 250, '360728', '定南', '县', 'dingnan', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1642, 250, '360729', '全南', '县', 'quannan', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1643, 250, '360730', '宁都', '县', 'ningdu', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1644, 250, '360731', '于都', '县', 'yudu', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1645, 250, '360732', '兴国', '县', 'xingguo', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1646, 250, '360733', '会昌', '县', 'huichang', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1647, 250, '360734', '寻乌', '县', 'xunwu', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1648, 250, '360735', '石城', '县', 'shicheng', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1649, 250, '360781', '瑞金', '市', 'ruijin', 17);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1650, 250, '360782', '南康', '区', 'nankang', 18);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1651, 251, '360802', '吉州', '区', 'jizhou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1652, 251, '360803', '青原', '区', 'qingyuan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1653, 251, '360821', '吉安', '县', 'jian', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1654, 251, '360822', '吉水', '县', 'jishui', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1655, 251, '360823', '峡江', '县', 'xiajiang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1656, 251, '360824', '新干', '县', 'xingan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1657, 251, '360825', '永丰', '县', 'yongfeng', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1658, 251, '360826', '泰和', '县', 'taihe', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1659, 251, '360827', '遂川', '县', 'suichuan', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1660, 251, '360828', '万安', '县', 'wanan', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1661, 251, '360829', '安福', '县', 'anfu', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1662, 251, '360830', '永新', '县', 'yongxin', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1663, 251, '360881', '井冈山', '市', 'jinggangshan', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1664, 252, '360902', '袁州', '区', 'yuanzhou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1665, 252, '360921', '奉新', '县', 'fengxin', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1666, 252, '360922', '万载', '县', 'wanzai', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1667, 252, '360923', '上高', '县', 'shanggao', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1668, 252, '360924', '宜丰', '县', 'yifeng', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1669, 252, '360925', '靖安', '县', 'jingan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1670, 252, '360926', '铜鼓', '县', 'tonggu', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1671, 252, '360981', '丰城', '市', 'fengcheng', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1672, 252, '360982', '樟树', '市', 'zhangshu', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1673, 252, '360983', '高安', '市', 'gaoan', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1674, 253, '361002', '临川', '区', 'linchuan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1675, 253, '361021', '南城', '县', 'nancheng', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1676, 253, '361022', '黎川', '县', 'lichuan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1677, 253, '361023', '南丰', '县', 'nanfeng', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1678, 253, '361024', '崇仁', '县', 'chongren', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1679, 253, '361025', '乐安', '县', 'lean', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1680, 253, '361026', '宜黄', '县', 'yihuang', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1681, 253, '361027', '金溪', '县', 'jinxi', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1682, 253, '361028', '资溪', '县', 'zixi', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1683, 253, '361003', '东乡', '区', 'dongxiang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1684, 253, '361030', '广昌', '县', 'guangchang', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1685, 254, '361102', '信州', '区', 'xinzhou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1686, 254, '361104', '广信', '区', 'guangxin', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1687, 254, '361103', '广丰', '区', 'guangfeng', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1688, 254, '361123', '玉山', '县', 'yushan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1689, 254, '361124', '铅山', '县', 'qianshan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1690, 254, '361125', '横峰', '县', 'hengfeng', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1691, 254, '361126', '弋阳', '县', 'yiyang', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1692, 254, '361127', '余干', '县', 'yugan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1693, 254, '361128', '鄱阳', '县', 'poyang', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1694, 254, '361129', '万年', '县', 'wannian', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1695, 254, '361130', '婺源', '县', 'wuyuan', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1696, 254, '361181', '德兴', '市', 'dexing', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1697, 255, '370102', '历下', '区', 'lixia', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1698, 255, '370103', '市中', '区', 'shizhong', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1699, 255, '370104', '槐荫', '区', 'huaiyin', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1700, 255, '370105', '天桥', '区', 'tianqiao', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1701, 255, '370112', '历城', '区', 'licheng', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1702, 255, '370113', '长清', '区', 'changqing', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1703, 255, '370124', '平阴', '县', 'pingyin', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1704, 255, '370115', '济阳', '区', 'jiyang', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1705, 255, '370126', '商河', '县', 'shanghe', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1706, 255, '370114', '章丘', '区', 'zhangqiu', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1707, 256, '370202', '市南', '区', 'shinan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1708, 256, '370203', '市北', '区', 'shibei', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1709, 256, '370211', '黄岛', '区', 'huangdao', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1710, 256, '370212', '崂山', '区', 'laoshan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1711, 256, '370213', '李沧', '区', 'licang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1712, 256, '370214', '城阳', '区', 'chengyang', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1713, 256, '370281', '胶州', '市', 'jiaozhou', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1714, 256, '370215', '即墨', '区', 'jimo', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1715, 256, '370283', '平度', '市', 'pingdu', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1716, 256, '370285', '莱西', '市', 'laixi', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1717, 257, '370302', '淄川', '区', 'zichuan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1718, 257, '370303', '张店', '区', 'zhangdian', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1719, 257, '370304', '博山', '区', 'boshan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1720, 257, '370305', '临淄', '区', 'linzi', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1721, 257, '370306', '周村', '区', 'zhoucun', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1722, 257, '370321', '桓台', '县', 'huantai', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1723, 257, '370322', '高青', '县', 'gaoqing', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1724, 257, '370323', '沂源', '县', 'yiyuan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1725, 258, '370402', '市中', '区', 'shizhong', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1726, 258, '370403', '薛城', '区', 'xuecheng', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1727, 258, '370404', '峄城', '区', 'yicheng', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1728, 258, '370405', '台儿庄', '区', 'taierzhuang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1729, 258, '370406', '山亭', '区', 'shanting', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1730, 258, '370481', '滕州', '市', 'tengzhou', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1731, 259, '370502', '东营', '区', 'dongying', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1732, 259, '370503', '河口', '区', 'hekou', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1733, 259, '370505', '垦利', '区', 'kenli', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1734, 259, '370522', '利津', '县', 'lijin', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1735, 259, '370523', '广饶', '县', 'guangrao', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1736, 260, '370602', '芝罘', '区', 'zhifu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1737, 260, '370611', '福山', '区', 'fushan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1738, 260, '370612', '牟平', '区', 'mouping', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1739, 260, '370613', '莱山', '区', 'laishan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1740, 260, '370634', '长岛', '县', 'changdao', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1741, 260, '370681', '龙口', '市', 'longkou', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1742, 260, '370682', '莱阳', '市', 'laiyang', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1743, 260, '370683', '莱州', '市', 'laizhou', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1744, 260, '370684', '蓬莱', '市', 'penglai', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1745, 260, '370685', '招远', '市', 'zhaoyuan', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1746, 260, '370686', '栖霞', '市', 'qixia', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1747, 260, '370687', '海阳', '市', 'haiyang', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1748, 261, '370702', '潍城', '区', 'weicheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1749, 261, '370703', '寒亭', '区', 'hanting', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1750, 261, '370704', '坊子', '区', 'fangzi', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1751, 261, '370705', '奎文', '区', 'kuiwen', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1752, 261, '370724', '临朐', '县', 'linqu', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1753, 261, '370725', '昌乐', '县', 'changle', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1754, 261, '370781', '青州', '市', 'qingzhou', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1755, 261, '370782', '诸城', '市', 'zhucheng', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1756, 261, '370783', '寿光', '市', 'shouguang', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1757, 261, '370784', '安丘', '市', 'anqiu', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1758, 261, '370785', '高密', '市', 'gaomi', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1759, 261, '370786', '昌邑', '市', 'changyi', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1761, 262, '370811', '任城', '区', 'rencheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1762, 262, '370826', '微山', '县', 'weishan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1763, 262, '370827', '鱼台', '县', 'yutai', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1764, 262, '370828', '金乡', '县', 'jinxiang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1765, 262, '370829', '嘉祥', '县', 'jiaxiang', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1766, 262, '370830', '汶上', '县', 'wenshang', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1767, 262, '370831', '泗水', '县', 'sishui', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1768, 262, '370832', '梁山', '县', 'liangshan', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1769, 262, '370881', '曲阜', '市', 'qufu', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1770, 262, '370812', '兖州', '区', 'yanzhou', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1771, 262, '370883', '邹城', '市', 'zoucheng', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1772, 263, '370902', '泰山', '区', 'taishan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1773, 263, '370911', '岱岳', '区', 'daiyue', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1774, 263, '370921', '宁阳', '县', 'ningyang', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1775, 263, '370923', '东平', '县', 'dongping', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1776, 263, '370982', '新泰', '市', 'xintai', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1777, 263, '370983', '肥城', '市', 'feicheng', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1778, 264, '371002', '环翠', '区', 'huancui', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1779, 264, '371003', '文登', '区', 'wendeng', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1780, 264, '371082', '荣成', '市', 'rongcheng', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1781, 264, '371083', '乳山', '市', 'rushan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1782, 265, '371102', '东港', '区', 'donggang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1783, 265, '371103', '岚山', '区', 'lanshan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1784, 265, '371121', '五莲', '县', 'wulian', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1785, 265, '371122', '莒县', '', 'juxian', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1786, 255, '370116', '莱芜', '区', 'laiwu', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1787, 255, '370117', '钢城', '区', 'gangcheng', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1788, 267, '371302', '兰山', '区', 'lanshan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1789, 267, '371311', '罗庄', '区', 'luozhuang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1790, 267, '371312', '河东', '区', 'hedong', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1791, 267, '371321', '沂南', '县', 'yinan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1792, 267, '371322', '郯城', '县', 'tancheng', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1793, 267, '371323', '沂水', '县', 'yishui', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1794, 267, '371324', '兰陵', '县', 'lanling', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1795, 267, '371325', '费县', '', 'feixian', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1796, 267, '371326', '平邑', '县', 'pingyi', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1797, 267, '371327', '莒南', '县', 'junan', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1798, 267, '371328', '蒙阴', '县', 'mengyin', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1799, 267, '371329', '临沭', '县', 'linshu', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1800, 268, '371402', '德城', '区', 'decheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1801, 268, '371403', '陵城', '区', 'lingcheng', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1802, 268, '371422', '宁津', '县', 'ningjin', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1803, 268, '371423', '庆云', '县', 'qingyun', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1804, 268, '371424', '临邑', '县', 'linyi', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1805, 268, '371425', '齐河', '县', 'qihe', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1806, 268, '371426', '平原', '县', 'pingyuan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1807, 268, '371427', '夏津', '县', 'xiajin', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1808, 268, '371428', '武城', '县', 'wucheng', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1809, 268, '371481', '乐陵', '市', 'leling', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1810, 268, '371482', '禹城', '市', 'yucheng', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1811, 269, '371502', '东昌府', '区', 'dongchangfu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1812, 269, '371521', '阳谷', '县', 'yanggu', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1813, 269, '371522', '莘县', '', 'xinxian', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1814, 269, '371503', '茌平', '区', 'chiping', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1815, 269, '371524', '东阿', '县', 'donga', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1816, 269, '371525', '冠县', '', 'guanxian', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1817, 269, '371526', '高唐', '县', 'gaotang', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1818, 269, '371581', '临清', '市', 'linqing', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1819, 270, '371602', '滨城', '区', 'bincheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1820, 270, '371621', '惠民', '县', 'huimin', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1821, 270, '371622', '阳信', '县', 'yangxin', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1822, 270, '371623', '无棣', '县', 'wudi', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1823, 270, '371624', '沾化', '区', 'zhanhua', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1824, 270, '371625', '博兴', '县', 'boxing', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1825, 270, '371626', '邹平', '市', 'zouping', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1826, 271, '371702', '牡丹', '区', 'mudan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1827, 271, '371721', '曹县', '', 'caoxian', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1828, 271, '371722', '单县', '', 'danxian', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1829, 271, '371723', '成武', '县', 'chengwu', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1830, 271, '371724', '巨野', '县', 'juye', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1831, 271, '371725', '郓城', '县', 'yuncheng', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1832, 271, '371726', '鄄城', '县', 'juancheng', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1833, 271, '371703', '定陶', '区', 'dingtao', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1834, 271, '371728', '东明', '县', 'dongming', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1835, 272, '410102', '中原', '区', 'zhongyuan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1836, 272, '410103', '二七', '区', 'erqi', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1837, 272, '410104', '管城', '区', 'guancheng', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1838, 272, '410105', '金水', '区', 'jinshui', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1839, 272, '410106', '上街', '区', 'shangjie', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1840, 272, '410108', '惠济', '区', 'huiji', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1841, 272, '410122', '中牟', '县', 'zhongmou', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1842, 272, '410181', '巩义', '市', 'gongyi', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1843, 272, '410182', '荥阳', '市', 'yingyang', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1844, 272, '410183', '新密', '市', 'xinmi', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1845, 272, '410184', '新郑', '市', 'xinzheng', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1846, 272, '410185', '登封', '市', 'dengfeng', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1847, 273, '410202', '龙亭', '区', 'longting', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1848, 273, '410203', '顺河', '区', 'shunhe', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1849, 273, '410204', '鼓楼', '区', 'gulou', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1850, 273, '410205', '禹王台', '区', 'yuwangtai', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1852, 273, '410221', '杞县', '', 'qixian', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1853, 273, '410222', '通许', '县', 'tongxu', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1854, 273, '410223', '尉氏', '县', 'weishi', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1855, 273, '410212', '祥符', '区', 'kaifeng', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1856, 273, '410225', '兰考', '县', 'lankao', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1857, 274, '410302', '老城', '区', 'laocheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1858, 274, '410303', '西工', '区', 'xigong', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1859, 274, '410304', '瀍河', '区', 'chanhe', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1860, 274, '410305', '涧西', '区', 'jianxi', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1861, 274, '410306', '吉利', '区', 'jili', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1862, 274, '410311', '洛龙', '区', 'luolong', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1863, 274, '410322', '孟津', '县', 'mengjin', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1864, 274, '410323', '新安', '县', 'xinan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1865, 274, '410324', '栾川', '县', 'luanchuan', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1866, 274, '410325', '嵩县', '', 'songxian', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1867, 274, '410326', '汝阳', '县', 'ruyang', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1868, 274, '410327', '宜阳', '县', 'yiyang', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1869, 274, '410328', '洛宁', '县', 'luoning', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1870, 274, '410329', '伊川', '县', 'yichuan', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1871, 274, '410381', '偃师', '市', 'yanshi', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1872, 275, '410402', '新华', '区', 'xinhua', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1873, 275, '410403', '卫东', '区', 'weidong', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1874, 275, '410404', '石龙', '区', 'shilong', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1875, 275, '410411', '湛河', '区', 'zhanhe', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1876, 275, '410421', '宝丰', '县', 'baofeng', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1877, 275, '410422', '叶县', '', 'yexian', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1878, 275, '410423', '鲁山', '县', 'lushan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1879, 275, '410425', '郏县', '', 'jiaxian', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1880, 275, '410481', '舞钢', '市', 'wugang', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1881, 275, '410482', '汝州', '市', 'ruzhou', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1882, 276, '410502', '文峰', '区', 'wenfeng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1883, 276, '410503', '北关', '区', 'beiguan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1884, 276, '410505', '殷都', '区', 'yindu', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1885, 276, '410506', '龙安', '区', 'longan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1886, 276, '410522', '安阳', '县', 'anyang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1887, 276, '410523', '汤阴', '县', 'tangyin', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1888, 276, '410526', '滑县', '', 'huaxian', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1889, 276, '410527', '内黄', '县', 'neihuang', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1890, 276, '410581', '林州', '市', 'linzhou', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1891, 277, '410602', '鹤山', '区', 'heshan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1892, 277, '410603', '山城', '区', 'shancheng', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1893, 277, '410611', '淇滨', '区', 'qibin', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1894, 277, '410621', '浚县', '', 'junxian', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1895, 277, '410622', '淇县', '', 'qixian', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1896, 278, '410702', '红旗', '区', 'hongqi', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1897, 278, '410703', '卫滨', '区', 'weibin', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1898, 278, '410704', '凤泉', '区', 'fengquan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1899, 278, '410711', '牧野', '区', 'muye', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1900, 278, '410721', '新乡', '县', 'xinxiang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1901, 278, '410724', '获嘉', '县', 'huojia', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1902, 278, '410725', '原阳', '县', 'yuanyang', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1903, 278, '410726', '延津', '县', 'yanjin', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1904, 278, '410727', '封丘', '县', 'fengqiu', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1905, 278, '410783', '长垣', '市', 'changyuan', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1906, 278, '410781', '卫辉', '市', 'weihui', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1907, 278, '410782', '辉县', '市', 'huixian', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1908, 279, '410802', '解放', '区', 'jiefang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1909, 279, '410803', '中站', '区', 'zhongzhan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1910, 279, '410804', '马村', '区', 'macun', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1911, 279, '410811', '山阳', '区', 'shanyang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1912, 279, '410821', '修武', '县', 'xiuwu', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1913, 279, '410822', '博爱', '县', 'boai', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1914, 279, '410823', '武陟', '县', 'wuzhi', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1915, 279, '410825', '温县', '', 'wenxian', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1916, 279, '410882', '沁阳', '市', 'qinyang', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1917, 279, '410883', '孟州', '市', 'mengzhou', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1918, 280, '410902', '华龙', '区', 'hualong', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1919, 280, '410922', '清丰', '县', 'qingfeng', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1920, 280, '410923', '南乐', '县', 'nanle', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1921, 280, '410926', '范县', '', 'fanxian', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1922, 280, '410927', '台前', '县', 'taiqian', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1923, 280, '410928', '濮阳', '县', 'puyang', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1924, 281, '411002', '魏都', '区', 'weidu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1925, 281, '411003', '建安', '区', 'jianan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1926, 281, '411024', '鄢陵', '县', 'yanling', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1927, 281, '411025', '襄城', '县', 'xiangcheng', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1928, 281, '411081', '禹州', '市', 'yuzhou', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1929, 281, '411082', '长葛', '市', 'changge', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1930, 282, '411102', '源汇', '区', 'yuanhui', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1931, 282, '411103', '郾城', '区', 'yancheng', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1932, 282, '411104', '召陵', '区', 'zhaoling', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1933, 282, '411121', '舞阳', '县', 'wuyang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1934, 282, '411122', '临颍', '县', 'linying', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1935, 283, '411202', '湖滨', '区', 'hubin', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1936, 283, '411221', '渑池', '县', 'mianchi', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1937, 283, '411222', '陕州', '区', 'shanzhou', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1938, 283, '411224', '卢氏', '县', 'lushi', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1939, 283, '411281', '义马', '市', 'yima', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1940, 283, '411282', '灵宝', '市', 'lingbao', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1941, 284, '411302', '宛城', '区', 'wancheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1942, 284, '411303', '卧龙', '区', 'wolong', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1943, 284, '411321', '南召', '县', 'nanzhao', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1944, 284, '411322', '方城', '县', 'fangcheng', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1945, 284, '411323', '西峡', '县', 'xixia', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1946, 284, '411324', '镇平', '县', 'zhenping', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1947, 284, '411325', '内乡', '县', 'neixiang', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1948, 284, '411326', '淅川', '县', 'xichuan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1949, 284, '411327', '社旗', '县', 'sheqi', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1950, 284, '411328', '唐河', '县', 'tanghe', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1951, 284, '411329', '新野', '县', 'xinye', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1952, 284, '411330', '桐柏', '县', 'tongbo', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1953, 284, '411381', '邓州', '市', 'dengzhou', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1954, 285, '411402', '粱园', '区', 'liangyuan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1955, 285, '411403', '睢阳', '区', 'suiyang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1956, 285, '411421', '民权', '县', 'minquan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1957, 285, '411422', '睢县', '', 'suixian', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1958, 285, '411423', '宁陵', '县', 'ningling', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1959, 285, '411424', '柘城', '县', 'zhecheng', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1960, 285, '411425', '虞城', '县', 'yucheng', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1961, 285, '411426', '夏邑', '县', 'xiayi', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1962, 285, '411481', '永城', '市', 'yongcheng', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1963, 286, '411502', '浉河', '区', 'shihe', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1964, 286, '411503', '平桥', '区', 'pingqiao', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1965, 286, '411521', '罗山', '县', 'luoshan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1966, 286, '411522', '光山', '县', 'guangshan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1967, 286, '411523', '新县', '', 'xinxian', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1968, 286, '411524', '商城', '县', 'shangcheng', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1969, 286, '411525', '固始', '县', 'gushi', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1970, 286, '411526', '潢川', '县', 'huangchuan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1971, 286, '411527', '淮滨', '县', 'huaibin', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1972, 286, '411528', '息县', '', 'xixian', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1973, 287, '411602', '川汇', '区', 'chuanhui', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1974, 287, '411621', '扶沟', '县', 'fugou', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1975, 287, '411622', '西华', '县', 'xihua', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1976, 287, '411623', '商水', '县', 'shangshui', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1977, 287, '411624', '沈丘', '县', 'shenqiu', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1978, 287, '411625', '郸城', '县', 'dancheng', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1979, 287, '411603', '淮阳', '区', 'huaiyang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1980, 287, '411627', '太康', '县', 'taikang', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1981, 287, '411628', '鹿邑', '县', 'luyi', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1982, 287, '411681', '项城', '市', 'xiangcheng', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1983, 288, '411702', '驿城', '区', 'yicheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1984, 288, '411721', '西平', '县', 'xiping', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1985, 288, '411722', '上蔡', '县', 'shangcai', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1986, 288, '411723', '平舆', '县', 'pingyu', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1987, 288, '411724', '正阳', '县', 'zhengyang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1988, 288, '411725', '确山', '县', 'queshan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1989, 288, '411726', '泌阳', '县', 'miyang', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1990, 288, '411727', '汝南', '县', 'runan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1991, 288, '411728', '遂平', '县', 'suiping', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1992, 288, '411729', '新蔡', '县', 'xincai', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1993, 290, '420102', '江岸', '区', 'jiangan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1994, 290, '420103', '江汉', '区', 'jianghan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1995, 290, '420104', '硚口', '区', 'qiaokou', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1996, 290, '420105', '汉阳', '区', 'hanyang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1997, 290, '420106', '武昌', '区', 'wuchang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1998, 290, '420107', '青山', '区', 'qingshan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (1999, 290, '420111', '洪山', '区', 'hongshan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2000, 290, '420112', '东西湖', '区', 'dongxihu', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2001, 290, '420113', '汉南', '区', 'hannan', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2002, 290, '420114', '蔡甸', '区', 'caidian', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2003, 290, '420115', '江夏', '区', 'jiangxia', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2004, 290, '420116', '黄陂', '区', 'huangpo', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2005, 290, '420117', '新洲', '区', 'xinzhou', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2006, 291, '420202', '黄石港', '区', 'huangshigang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2007, 291, '420203', '西塞山', '区', 'xisaishan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2008, 291, '420204', '下陆', '区', 'xialu', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2009, 291, '420205', '铁山', '区', 'tieshan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2010, 291, '420222', '阳新', '县', 'yangxin', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2011, 291, '420281', '大冶', '市', 'daye', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2012, 292, '420302', '茅箭', '区', 'maojian', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2013, 292, '420303', '张湾', '区', 'zhangwan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2014, 292, '420304', '郧阳', '区', 'yunyang', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2015, 292, '420322', '郧西', '县', 'yunxi', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2016, 292, '420323', '竹山', '县', 'zhushan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2017, 292, '420324', '竹溪', '县', 'zhuxi', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2018, 292, '420325', '房县', '', 'fangxian', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2019, 292, '420381', '丹江口', '市', 'danjiangkou', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2020, 293, '420502', '西陵', '区', 'xiling', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2021, 293, '420503', '伍家岗', '区', 'wujiagang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2022, 293, '420504', '点军', '区', 'dianjun', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2023, 293, '420505', '虢亭', '区', 'guoting', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2024, 293, '420506', '夷陵', '区', 'yiling', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2025, 293, '420525', '远安', '县', 'yuanan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2026, 293, '420526', '兴山', '县', 'xingshan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2027, 293, '420527', '秭归', '县', 'zigui', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2028, 293, '420528', '长阳', '自治县', 'changyang', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2029, 293, '420529', '五峰', '自治县', 'wufeng', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2030, 293, '420581', '宜都', '市', 'yidu', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2031, 293, '420582', '当阳', '市', 'dangyang', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2032, 293, '420583', '枝江', '市', 'zhijiang', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2033, 294, '420602', '襄城', '区', 'xiangcheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2034, 294, '420606', '樊城', '区', 'fancheng', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2035, 294, '420607', '襄州', '区', 'xiangzhou', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2036, 294, '420624', '南漳', '县', 'nanzhang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2037, 294, '420625', '谷城', '县', 'gucheng', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2038, 294, '420626', '保康', '县', 'baokang', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2039, 294, '420682', '老河口', '市', 'laohekou', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2040, 294, '420683', '枣阳', '市', 'zaoyang', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2041, 294, '420684', '宜城', '市', 'yicheng', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2042, 295, '420702', '粱子湖', '区', 'liangzihu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2043, 295, '420703', '华容', '区', 'huarong', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2044, 295, '420704', '鄂城', '区', 'echeng', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2045, 296, '420802', '东宝', '区', 'dongbao', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2046, 296, '420804', '掇刀', '区', 'duodao', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2047, 296, '420882', '京山', '市', 'jingshan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2048, 296, '420822', '沙洋', '县', 'shayang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2049, 296, '420881', '钟祥', '市', 'zhongxiang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2050, 297, '420902', '孝南', '区', 'xiaonan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2051, 297, '420922', '大悟', '县', 'dawu', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2052, 297, '420923', '云梦', '县', 'yunmeng', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2053, 297, '420981', '应城', '市', 'yingcheng', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2054, 297, '420982', '安陆', '市', 'anlu', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2055, 297, '420984', '汉川', '市', 'hanchuan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2056, 298, '421002', '沙市', '区', 'shashi', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2057, 298, '421003', '荆州', '区', 'jingzhou', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2058, 298, '421022', '公安', '县', 'gongan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2059, 298, '421023', '监利', '县', 'jianli', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2060, 298, '421024', '江陵', '县', 'jiangling', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2061, 298, '421081', '石首', '市', 'shishou', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2062, 298, '421083', '洪湖', '市', 'honghu', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2063, 298, '421087', '松滋', '市', 'songzi', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2064, 299, '421102', '黄州', '区', 'huangzhou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2065, 299, '421121', '团风', '县', 'tuanfeng', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2066, 299, '421122', '红安', '县', 'hongan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2067, 299, '421123', '罗田', '县', 'luotian', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2068, 299, '421124', '英山', '县', 'yingshan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2069, 299, '421125', '浠水', '县', 'xishui', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2070, 299, '421126', '蕲春', '县', 'qichun', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2071, 299, '421127', '黄梅', '县', 'huangmei', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2072, 299, '421181', '麻城', '市', 'macheng', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2073, 299, '421182', '武穴', '市', 'wuxue', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2074, 300, '421202', '咸安', '区', 'xianan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2075, 300, '421221', '嘉鱼', '县', 'jiayu', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2076, 300, '421222', '通城', '县', 'tongcheng', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2077, 300, '421223', '崇阳', '县', 'chongyang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2078, 300, '421224', '通山', '县', 'tongshan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2079, 300, '421281', '赤壁', '市', 'chibi', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2080, 301, '421303', '曾都', '区', 'cengdu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2081, 301, '421321', '随县', '', 'suixian', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2082, 301, '421381', '广水', '市', 'guangshui', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2083, 302, '422801', '恩施', '市', 'enshi', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2084, 302, '422802', '利川', '市', 'lichuan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2085, 302, '422822', '建始', '县', 'jianshi', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2086, 302, '422823', '巴东', '县', 'badong', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2087, 302, '422825', '宣恩', '县', 'xuanen', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2088, 302, '422826', '咸丰', '县', 'xianfeng', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2089, 302, '422827', '来凤', '县', 'laifeng', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2090, 302, '422828', '鹤峰', '县', 'hefeng', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2091, 307, '430102', '芙蓉', '区', 'furong', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2092, 307, '430103', '天心', '区', 'tianxin', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2093, 307, '430104', '岳麓', '区', 'yuelu', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2094, 307, '430105', '开福', '区', 'kaifu', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2095, 307, '430111', '雨花', '区', 'yuhua', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2096, 307, '430112', '望城', '区', 'wangcheng', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2097, 307, '430121', '长沙', '县', 'changsha', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2098, 307, '430182', '宁乡', '市', 'ningxiang', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2099, 307, '430181', '浏阳', '市', 'liuyang', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2100, 308, '430202', '荷塘', '区', 'hetang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2101, 308, '430203', '芦淞', '区', 'lusong', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2102, 308, '430204', '石峰', '区', 'shifeng', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2103, 308, '430211', '天元', '区', 'tianyuan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2104, 308, '430212', '渌口', '区', 'lukou', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2105, 308, '430223', '攸县', '', 'youxian', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2106, 308, '430224', '茶陵', '县', 'chaling', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2107, 308, '430225', '炎陵', '县', 'yanling', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2108, 308, '430281', '醴陵', '市', 'liling', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2109, 309, '430302', '雨湖', '区', 'yuhu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2110, 309, '430304', '岳塘', '区', 'yuetang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2111, 309, '430321', '湘潭', '县', 'xiangtan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2112, 309, '430381', '湘乡', '市', 'xiangxiang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2113, 309, '430382', '韶山', '市', 'shaoshan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2114, 310, '430405', '珠晖', '区', 'zhuhui', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2115, 310, '430406', '雁峰', '区', 'yanfeng', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2116, 310, '430407', '石鼓', '区', 'shigu', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2117, 310, '430408', '蒸湘', '区', 'zhengxiang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2118, 310, '430412', '南岳', '区', 'nanyue', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2119, 310, '430421', '衡阳', '县', 'hengyang', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2120, 310, '430422', '衡南', '县', 'hengnan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2121, 310, '430423', '衡山', '县', 'hengshan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2122, 310, '430424', '衡东', '县', 'hengdong', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2123, 310, '430426', '祁东', '县', 'qidong', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2124, 310, '430481', '耒阳', '市', 'leiyang', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2125, 310, '430482', '常宁', '市', 'changning', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2126, 311, '430502', '双清', '区', 'shuangqing', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2127, 311, '430503', '大祥', '区', 'daxiang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2128, 311, '430511', '北塔', '区', 'beita', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2129, 311, '430521', '邵东', '市', 'shaodong', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2130, 311, '430582', '新邵', '县', 'xinshao', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2131, 311, '430523', '邵阳', '县', 'shaoyang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2132, 311, '430524', '隆回', '县', 'longhui', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2133, 311, '430525', '洞口', '县', 'dongkou', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2134, 311, '430527', '绥宁', '县', 'suining', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2135, 311, '430528', '新宁', '县', 'xinning', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2136, 311, '430529', '城步', '自治县', 'chengbu', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2137, 311, '430581', '武冈', '市', 'wugang', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2138, 312, '430602', '岳阳楼', '区', 'yueyanglou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2139, 312, '430603', '云溪', '区', 'yunxi', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2140, 312, '430611', '君山', '区', 'junshan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2141, 312, '430621', '岳阳', '县', 'yueyang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2142, 312, '430623', '华容', '县', 'huarong', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2143, 312, '430624', '湘阴', '县', 'xiangyin', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2144, 312, '430626', '平江', '县', 'pingjiang', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2145, 312, '430681', '汨罗', '市', 'miluo', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2146, 312, '430682', '临湘', '市', 'linxiang', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2147, 313, '430702', '武陵', '区', 'wuling', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2148, 313, '430703', '鼎城', '区', 'dingcheng', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2149, 313, '430721', '安乡', '县', 'anxiang', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2150, 313, '430722', '汉寿', '县', 'hanshou', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2151, 313, '430723', '澧县', '', 'lixian', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2152, 313, '430724', '临澧', '县', 'linli', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2153, 313, '430725', '桃源', '县', 'taoyuan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2154, 313, '430726', '石门', '县', 'shimen', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2155, 313, '430781', '津市', '市', 'jinshi', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2156, 314, '430802', '永定', '区', 'yongding', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2157, 314, '430811', '武陵源', '区', 'wulingyuan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2158, 314, '430821', '慈利', '县', 'cili', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2159, 314, '430822', '桑植', '县', 'sangzhi', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2160, 315, '430902', '资阳', '区', 'ziyang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2161, 315, '430903', '赫山', '区', 'heshan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2162, 315, '430921', '南县', '', 'nanxian', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2163, 315, '430922', '桃江', '县', 'taojiang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2164, 315, '430923', '安化', '县', 'anhua', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2165, 315, '430981', '沅江', '市', 'yuanjiang', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2166, 316, '431002', '北湖', '区', 'beihu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2167, 316, '431003', '苏仙', '区', 'suxian', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2168, 316, '431021', '桂阳', '县', 'guiyang', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2169, 316, '431022', '宜章', '县', 'yizhang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2170, 316, '431023', '永兴', '县', 'yongxing', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2171, 316, '431024', '嘉禾', '县', 'jiahe', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2172, 316, '431025', '临武', '县', 'linwu', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2173, 316, '431026', '汝城', '县', 'rucheng', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2174, 316, '431027', '桂东', '县', 'guidong', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2175, 316, '431028', '安仁', '县', 'anren', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2176, 316, '431081', '资兴', '市', 'zixing', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2177, 317, '431102', '零陵', '区', 'lingling', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2178, 317, '431103', '冷水滩', '区', 'lengshuitan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2179, 317, '431121', '祁阳', '县', 'qiyang', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2180, 317, '431122', '东安', '县', 'dongan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2181, 317, '431123', '双牌', '县', 'shuangpai', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2182, 317, '431124', '道县', '', 'daoxian', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2183, 317, '431125', '江永', '县', 'jiangyong', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2184, 317, '431126', '宁远', '县', 'ningyuan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2185, 317, '431127', '蓝山', '县', 'lanshan', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2186, 317, '431128', '新田', '县', 'xintian', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2187, 317, '431129', '江华', '自治县', 'jianghua', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2188, 318, '431202', '鹤城', '区', 'hecheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2189, 318, '431221', '中方', '县', 'zhongfang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2190, 318, '431222', '沅陵', '县', 'yuanling', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2191, 318, '431223', '辰溪', '县', 'chenxi', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2192, 318, '431224', '溆浦', '县', 'xupu', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2193, 318, '431225', '会同', '县', 'huitong', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2194, 318, '431226', '麻阳', '自治县', 'mayang', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2195, 318, '431227', '新晃', '自治县', 'xinhuang', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2196, 318, '431228', '芷江', '自治县', 'zhijiang', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2197, 318, '431229', '靖州', '自治县', 'jingzhou', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2198, 318, '431230', '通道', '自治县', 'tongdao', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2199, 318, '431281', '洪江', '市', 'hongjiang', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2200, 319, '431302', '娄星', '区', 'louxing', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2201, 319, '431321', '双峰', '县', 'shuangfeng', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2202, 319, '431322', '新化', '县', 'xinhua', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2203, 319, '431381', '冷水江', '市', 'lengshuijiang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2204, 319, '431382', '涟源', '市', 'lianyuan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2205, 320, '433101', '吉首', '市', 'jishou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2206, 320, '433122', '泸溪', '县', 'luxi', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2207, 320, '433123', '凤凰', '县', 'fenghuang', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2208, 320, '433124', '花垣', '县', 'huayuan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2209, 320, '433125', '保靖', '县', 'baojing', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2210, 320, '433126', '古丈', '县', 'guzhang', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2211, 320, '433127', '永顺', '县', 'yongshun', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2212, 320, '433130', '龙山', '县', 'longshan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2213, 321, '440103', '荔湾', '区', 'liwan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2214, 321, '440104', '越秀', '区', 'yuexiu', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2215, 321, '440105', '海珠', '区', 'haizhu', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2216, 321, '440106', '天河', '区', 'tianhe', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2217, 321, '440111', '白云', '区', 'baiyun', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2218, 321, '440112', '黄埔', '区', 'huangpu', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2219, 321, '440113', '番禺', '区', 'fanyu', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2220, 321, '440114', '花都', '区', 'huadu', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2221, 321, '440115', '南沙', '区', 'nansha', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2223, 321, '440118', '增城', '区', 'zengcheng', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2224, 321, '440117', '从化', '区', 'conghua', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2225, 322, '440203', '武江', '区', 'wujiang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2226, 322, '440204', '浈江', '区', 'zhenjiang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2227, 322, '440205', '曲江', '区', 'qujiang', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2228, 322, '440222', '始兴', '县', 'shixing', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2229, 322, '440224', '仁化', '县', 'renhua', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2230, 322, '440229', '翁源', '县', 'wengyuan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2231, 322, '440232', '乳源', '自治县', 'ruyuan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2232, 322, '440233', '新丰', '县', 'xinfeng', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2233, 322, '440281', '乐昌', '市', 'lechang', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2234, 322, '440282', '南雄', '市', 'nanxiong', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2235, 323, '440303', '罗湖', '区', 'luohu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2236, 323, '440304', '福田', '区', 'futian', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2237, 323, '440305', '南山', '区', 'nanshan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2238, 323, '440306', '宝安', '区', 'baoan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2239, 323, '440307', '龙岗', '区', 'longgang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2240, 323, '440308', '盐田', '区', 'yantian', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2241, 324, '440402', '香洲', '区', 'xiangzhou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2242, 324, '440403', '斗门', '区', 'doumen', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2243, 324, '440404', '金湾', '区', 'jinwan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2244, 325, '440507', '龙湖', '区', 'longhu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2245, 325, '440511', '金平', '区', 'jinping', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2246, 325, '440512', '濠江', '区', 'haojiang', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2247, 325, '440513', '潮阳', '区', 'chaoyang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2248, 325, '440514', '潮南', '区', 'chaonan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2249, 325, '440515', '澄海', '区', 'chenghai', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2250, 325, '440523', '南澳', '县', 'nanao', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2251, 326, '440604', '禅城', '区', 'shancheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2252, 326, '440605', '南海', '区', 'nanhai', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2253, 326, '440606', '顺德', '区', 'shunde', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2254, 326, '440607', '三水', '区', 'sanshui', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2255, 326, '440608', '高明', '区', 'gaoming', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2256, 327, '440703', '蓬江', '区', 'pengjiang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2257, 327, '440704', '江海', '区', 'jianghai', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2258, 327, '440705', '新会', '区', 'xinhui', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2259, 327, '440781', '台山', '市', 'taishan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2260, 327, '440783', '开平', '市', 'kaiping', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2261, 327, '440784', '鹤山', '市', 'heshan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2262, 327, '440785', '恩平', '市', 'enping', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2263, 328, '440802', '赤坎', '区', 'chikan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2264, 328, '440803', '霞山', '区', 'xiashan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2265, 328, '440804', '坡头', '区', 'potou', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2266, 328, '440811', '麻章', '区', 'mazhang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2267, 328, '440823', '遂溪', '县', 'suixi', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2268, 328, '440825', '徐闻', '县', 'xuwen', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2269, 328, '440881', '廉江', '市', 'lianjiang', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2270, 328, '440882', '雷州', '市', 'leizhou', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2271, 328, '440883', '吴川', '市', 'wuchuan', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2272, 329, '440902', '茂南', '区', 'maonan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2274, 329, '440904', '电白', '区', 'dianbai', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2275, 329, '440981', '高州', '市', 'gaozhou', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2276, 329, '440982', '化州', '市', 'huazhou', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2277, 329, '440983', '信宜', '市', 'xinyi', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2278, 330, '441202', '端州', '区', 'duanzhou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2279, 330, '441203', '鼎湖', '区', 'dinghu', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2280, 330, '441223', '广宁', '县', 'guangning', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2281, 330, '441224', '怀集', '县', 'huaiji', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2282, 330, '441225', '封开', '县', 'fengkai', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2283, 330, '441226', '德庆', '县', 'deqing', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2284, 330, '441283', '高要', '区', 'gaoyao', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2285, 330, '441284', '四会', '市', 'sihui', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2286, 331, '441302', '惠城', '区', 'huicheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2287, 331, '441303', '惠阳', '区', 'huiyang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2288, 331, '441322', '博罗', '县', 'boluo', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2289, 331, '441323', '惠东', '县', 'huidong', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2290, 331, '441324', '龙门', '县', 'longmen', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2291, 332, '441402', '梅江', '区', 'meijiang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2292, 332, '441403', '梅县', '区', 'meixian', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2293, 332, '441422', '大埔', '县', 'dapu', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2294, 332, '441423', '丰顺', '县', 'fengshun', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2295, 332, '441424', '五华', '县', 'wuhua', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2296, 332, '441426', '平远', '县', 'pingyuan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2297, 332, '441427', '蕉岭', '县', 'jiaoling', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2298, 332, '441481', '兴宁', '市', 'xingning', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2299, 333, '441502', '城区', '区', 'chengqu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2300, 333, '441521', '海丰', '县', 'haifeng', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2301, 333, '441523', '陆河', '县', 'luhe', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2302, 333, '441581', '陆丰', '市', 'lufeng', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2303, 334, '441602', '源城', '区', 'yuancheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2304, 334, '441621', '紫金', '县', 'zijin', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2305, 334, '441622', '龙川', '县', 'longchuan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2306, 334, '441623', '连平', '县', 'lianping', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2307, 334, '441624', '和平', '县', 'heping', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2308, 334, '441625', '东源', '县', 'dongyuan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2309, 335, '441702', '江城', '区', 'jiangcheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2310, 335, '441721', '阳西', '县', 'yangxi', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2311, 335, '441723', '阳东', '区', 'yangdong', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2312, 335, '441781', '阳春', '市', 'yangchun', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2313, 336, '441802', '清城', '区', 'qingcheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2314, 336, '441821', '佛冈', '县', 'fogang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2315, 336, '441823', '阳山', '县', 'yangshan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2316, 336, '441825', '连山', '自治县', 'lianshan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2317, 336, '441826', '连南', '自治县', 'liannan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2318, 336, '441827', '清新', '县', 'qingxin', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2319, 336, '441881', '英德', '市', 'yingde', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2320, 336, '441882', '连州', '市', 'lianzhou', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2321, 339, '445102', '湘桥', '区', 'xiangqiao', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2322, 339, '445121', '潮安', '区', 'chaoan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2323, 339, '445122', '饶平', '县', 'raoping', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2324, 340, '445202', '榕城', '区', 'rongcheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2325, 340, '445221', '揭东', '县', 'jiedong', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2326, 340, '445222', '揭西', '县', 'jiexi', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2327, 340, '445224', '惠来', '县', 'huilai', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2328, 340, '445281', '普宁', '市', 'puning', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2329, 341, '445302', '云城', '区', 'yuncheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2330, 341, '445321', '新兴', '县', 'xinxing', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2331, 341, '445322', '郁南', '县', 'yunan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2332, 341, '445302', '云安', '区', 'yunan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2333, 341, '445381', '罗定', '市', 'luoding', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2334, 342, '450102', '兴宁', '区', 'xingning', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2335, 342, '450103', '青秀', '区', 'qingxiu', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2336, 342, '450105', '江南', '区', 'jiangnan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2337, 342, '450107', '西乡塘', '区', 'xixiangtang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2338, 342, '450108', '良庆', '区', 'liangqing', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2339, 342, '450109', '邕宁', '区', 'yongning', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2340, 342, '450122', '武鸣', '区', 'wuming', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2341, 342, '450123', '隆安', '县', 'longan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2342, 342, '450124', '马山', '县', 'mashan', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2343, 342, '450125', '上林', '县', 'shanglin', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2344, 342, '450126', '宾阳', '县', 'binyang', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2345, 342, '450127', '横县', '', 'hengxian', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2346, 343, '450202', '城中', '区', 'chengzhong', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2347, 343, '450203', '鱼峰', '区', 'yufeng', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2348, 343, '450204', '柳南', '区', 'liunan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2349, 343, '450205', '柳北', '区', 'liubei', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2350, 343, '450206', '柳江', '区', 'liujiang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2351, 343, '450222', '柳城', '县', 'liucheng', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2352, 343, '450223', '鹿寨', '县', 'luzhai', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2353, 343, '450224', '融安', '县', 'rongan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2354, 343, '450225', '融水', '自治县', 'rongshui', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2355, 343, '450226', '三江', '自治县', 'sanjiang', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2356, 344, '450302', '秀峰', '区', 'xiufeng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2357, 344, '450303', '叠彩', '区', 'diecai', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2358, 344, '450304', '象山', '区', 'xiangshan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2359, 344, '450305', '七星', '区', 'qixing', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2360, 344, '450311', '雁山', '区', 'yanshan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2361, 344, '450321', '阳朔', '县', 'yangshuo', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2362, 344, '450322', '临桂', '区', 'lingui', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2363, 344, '450323', '灵川', '县', 'lingchuan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2364, 344, '450324', '全州', '县', 'quanzhou', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2365, 344, '450325', '兴安', '县', 'xingan', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2366, 344, '450326', '永福', '县', 'yongfu', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2367, 344, '450327', '灌阳', '县', 'guanyang', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2368, 344, '450328', '龙胜', '自治县', 'longsheng', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2369, 344, '450329', '资源', '县', 'ziyuan', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2370, 344, '450330', '平乐', '县', 'pingle', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2371, 344, '450331', '荔浦', '市', 'lipu', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2372, 344, '450332', '恭城', '自治县', 'gongcheng', 17);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2373, 345, '', '龙圩', '区', 'longwei', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2374, 345, '450403', '万秀', '区', 'wanxiu', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2375, 345, '450405', '长洲', '区', 'changzhou', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2376, 345, '450421', '苍梧', '县', 'cangwu', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2377, 345, '450422', '藤县', '', 'tengxian', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2378, 345, '450423', '蒙山', '县', 'mengshan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2379, 345, '450481', '岑溪', '市', 'cenxi', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2380, 346, '450502', '海城', '区', 'haicheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2381, 346, '450503', '银海', '区', 'yinhai', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2382, 346, '450512', '铁山港', '区', 'tieshangang', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2383, 346, '450521', '合浦', '县', 'hepu', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2384, 347, '450602', '港口', '区', 'gangkou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2385, 347, '450603', '防城', '区', 'fangcheng', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2386, 347, '450621', '上思', '县', 'shangsi', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2387, 347, '450681', '东兴', '市', 'dongxing', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2388, 348, '450702', '钦南', '区', 'qinnan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2389, 348, '450703', '钦北', '区', 'qinbei', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2390, 348, '450721', '灵山', '县', 'lingshan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2391, 348, '450722', '浦北', '县', 'pubei', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2392, 349, '450802', '港北', '区', 'gangbei', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2393, 349, '450803', '港南', '区', 'gangnan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2394, 349, '450804', '覃塘', '区', 'tantang', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2395, 349, '450821', '桂平', '市', 'guiping', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2396, 349, '450881', '平南', '县', 'pingnan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2397, 350, '450902', '玉州', '区', 'yuzhou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2398, 350, '450921', '容县', '', 'rongxian', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2399, 350, '450922', '陆川', '县', 'luchuan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2400, 350, '450923', '博白', '县', 'bobai', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2401, 350, '450924', '兴业', '县', 'xingye', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2402, 350, '450981', '北流', '市', 'beiliu', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2403, 351, '451002', '右江', '区', 'youjiang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2404, 351, '451003', '田阳', '区', 'tianyang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2405, 351, '451022', '田东', '县', 'tiandong', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2406, 351, '451082', '平果', '市', 'pingguo', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2407, 351, '451024', '德保', '县', 'debao', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2408, 351, '451081', '靖西', '市', 'jingxi', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2409, 351, '451026', '那坡', '县', 'neipo', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2410, 351, '451027', '凌云', '县', 'lingyun', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2411, 351, '451028', '乐业', '县', 'leye', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2412, 351, '451029', '田林', '县', 'tianlin', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2413, 351, '451030', '西林', '县', 'xilin', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2414, 351, '451031', '隆林', '自治县', 'longlin', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2415, 352, '451102', '八步', '区', 'babu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2416, 352, '451121', '昭平', '县', 'zhaoping', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2417, 352, '451122', '钟山', '县', 'zhongshan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2418, 352, '451123', '富川', '自治县', 'fuchuan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2419, 353, '451202', '金城江', '区', 'jinchengjiang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2420, 353, '451221', '南丹', '县', 'nandan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2421, 353, '451222', '天峨', '县', 'tiane', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2422, 353, '451223', '凤山', '县', 'fengshan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2423, 353, '451224', '东兰', '县', 'donglan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2424, 353, '451225', '罗城', '自治县', 'luocheng', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2425, 353, '451226', '环江', '自治县', 'huanjiang', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2426, 353, '451227', '巴马', '自治县', 'bama', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2427, 353, '451228', '都安', '自治县', 'duan', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2428, 353, '451229', '大化', '自治县', 'dahua', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2429, 353, '451203', '宜州', '区', 'yizhou', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2430, 354, '451302', '兴宾', '区', 'xingbin', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2431, 354, '451321', '忻城', '县', 'xincheng', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2432, 354, '451322', '象州', '县', 'xiangzhou', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2433, 354, '451323', '武宣', '县', 'wuxuan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2434, 354, '451324', '金秀', '自治县', 'jinxiu', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2435, 354, '451381', '合山', '市', 'heshan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2436, 355, '451402', '江州', '区', 'jiangzhou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2437, 355, '451421', '扶绥', '县', 'fusui', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2438, 355, '451422', '宁明', '县', 'ningming', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2439, 355, '451423', '龙州', '县', 'longzhou', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2440, 355, '451424', '大新', '县', 'daxin', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2441, 355, '451425', '天等', '县', 'tiandeng', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2442, 355, '451481', '凭祥', '市', 'pingxiang', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2443, 356, '460105', '秀英', '区', 'xiuying', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2444, 356, '460106', '龙华', '区', 'longhua', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2445, 356, '460107', '琼山', '区', 'qiongshan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2446, 356, '460108', '美兰', '区', 'meilan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2447, 375, '510104', '锦江', '区', 'jinjiang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2448, 375, '510105', '青羊', '区', 'qingyang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2449, 375, '510106', '金牛', '区', 'jinniu', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2450, 375, '510107', '武侯', '区', 'wuhou', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2451, 375, '510108', '成华', '区', 'chenghua', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2452, 375, '510112', '龙泉驿', '区', 'longquanyi', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2453, 375, '510113', '青白江', '区', 'qingbaijiang', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2454, 375, '510114', '新都', '区', 'xindu', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2455, 375, '510115', '温江', '区', 'wenjiang', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2456, 375, '510121', '金堂', '县', 'jintang', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2457, 375, '510116', '双流', '区', 'shuangliu', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2458, 375, '510117', '郫都', '区', 'pidu', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2459, 375, '510129', '大邑', '县', 'dayi', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2460, 375, '510131', '蒲江', '县', 'pujiang', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2461, 375, '510132', '新津', '县', 'xinjin', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2462, 375, '510181', '都江堰', '市', 'dujiangyan', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2463, 375, '510182', '彭州', '市', 'pengzhou', 17);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2464, 375, '510183', '邛崃', '市', 'qionglai', 18);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2465, 375, '510184', '崇州', '市', 'chongzhou', 19);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2466, 376, '510302', '自流井', '区', 'ziliujing', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2467, 376, '510303', '贡井', '区', 'gongjing', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2468, 376, '510304', '大安', '区', 'daan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2469, 376, '510311', '沿滩', '区', 'yantan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2470, 376, '510321', '荣县', '', 'rongxian', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2471, 376, '510322', '富顺', '县', 'fushun', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2472, 377, '510402', '东区', '', 'dongqu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2473, 377, '510403', '西区', '', 'xiqu', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2474, 377, '510411', '仁和', '区', 'renhe', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2475, 377, '510421', '米易', '县', 'miyi', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2476, 377, '510422', '盐边', '县', 'yanbian', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2477, 378, '510502', '江阳', '区', 'jiangyang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2478, 378, '510503', '纳溪', '区', 'naxi', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2479, 378, '510504', '龙马潭', '区', 'longmatan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2480, 378, '510521', '泸县', '', 'luxian', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2481, 378, '510522', '合江', '县', 'hejiang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2482, 378, '510524', '叙永', '县', 'xuyong', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2483, 378, '510525', '古蔺', '县', 'gulin', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2484, 379, '510603', '旌阳', '区', 'jingyang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2485, 379, '510623', '中江', '县', 'zhongjiang', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2486, 379, '510604', '罗江', '区', 'luojiang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2487, 379, '510681', '广汉', '市', 'guanghan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2488, 379, '510682', '什邡', '市', 'shenfang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2489, 379, '510683', '绵竹', '市', 'mianzhu', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2490, 380, '510703', '涪城', '区', 'fucheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2491, 380, '510704', '游仙', '区', 'youxian', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2492, 380, '510722', '三台', '县', 'santai', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2493, 380, '510723', '盐亭', '县', 'yanting', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2494, 380, '510705', '安州', '区', 'anzhou', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2495, 380, '510725', '梓潼', '县', 'zitong', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2496, 380, '510726', '北川', '自治县', 'beichuan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2497, 380, '510727', '平武', '县', 'pingwu', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2498, 380, '510781', '江油', '市', 'jiangyou', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2499, 381, '510802', '利州', '区', 'lizhou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2500, 381, '510811', '昭化', '区', 'zhaohua', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2501, 381, '510812', '朝天', '区', 'chaotian', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2502, 381, '510821', '旺苍', '县', 'wangcang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2503, 381, '510822', '青川', '县', 'qingchuan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2504, 381, '510823', '剑阁', '县', 'jiange', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2505, 381, '510824', '苍溪', '县', 'cangxi', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2506, 382, '510903', '船山', '区', 'chuanshan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2507, 382, '510904', '安居', '区', 'anju', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2508, 382, '510921', '蓬溪', '县', 'pengxi', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2509, 382, '510981', '射洪', '市', 'shehong', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2510, 382, '510923', '大英', '县', 'daying', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2511, 383, '511002', '市中', '区', 'shizhong', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2512, 383, '511011', '东兴', '区', 'dongxing', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2513, 383, '511024', '威远', '县', 'weiyuan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2514, 383, '511025', '资中', '县', 'zizhong', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2515, 383, '511083', '隆昌', '市', 'longchang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2516, 384, '511102', '市中', '区', 'shizhong', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2517, 384, '511111', '沙湾', '区', 'shawan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2518, 384, '511112', '五通桥', '区', 'wutongqiao', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2519, 384, '511113', '金口河', '区', 'jinkouhe', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2520, 384, '511123', '犍为', '县', 'jianwei', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2521, 384, '511124', '井研', '县', 'jingyan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2522, 384, '511126', '夹江', '县', 'jiajiang', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2523, 384, '511129', '沐川', '县', 'muchuan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2524, 384, '511132', '峨边', '自治县', 'ebian', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2525, 384, '511133', '马边', '自治县', 'mabian', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2526, 384, '511181', '峨眉山', '市', 'emeishan', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2527, 385, '511302', '顺庆', '区', 'shunqing', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2528, 385, '511303', '高坪', '区', 'gaoping', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2529, 385, '511304', '嘉陵', '区', 'jialing', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2530, 385, '511321', '南部', '县', 'nanbu', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2531, 385, '511322', '营山', '县', 'yingshan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2532, 385, '511323', '蓬安', '县', 'pengan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2533, 385, '511324', '仪陇', '县', 'yilong', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2534, 385, '511325', '西充', '县', 'xichong', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2535, 385, '511381', '阆中', '市', 'langzhong', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2536, 386, '511402', '东坡', '区', 'dongpo', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2537, 386, '511421', '仁寿', '县', 'renshou', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2538, 386, '511422', '彭山', '区', 'pengshan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2539, 386, '511423', '洪雅', '县', 'hongya', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2540, 386, '511424', '丹棱', '县', 'danleng', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2541, 386, '511425', '青神', '县', 'qingshen', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2542, 387, '511502', '翠屏', '区', 'cuiping', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2543, 387, '511503', '南溪', '区', 'nanxi', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2544, 387, '511504', '叙州', '区', 'xuzhou', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2545, 387, '511523', '江安', '县', 'jiangan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2546, 387, '511524', '长宁', '县', 'changning', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2547, 387, '511525', '高县', '', 'gaoxian', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2548, 387, '511526', '珙县', '', 'gongxian', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2549, 387, '511527', '筠连', '县', 'yunlian', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2550, 387, '511528', '兴文', '县', 'xingwen', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2551, 387, '511529', '屏山', '县', 'pingshan', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2552, 388, '511602', '广安', '区', 'guangan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2553, 388, '511621', '岳池', '县', 'yuechi', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2554, 388, '511622', '武胜', '县', 'wusheng', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2555, 388, '511623', '邻水', '县', 'linshui', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2556, 388, '511681', '华蓥', '市', 'huaying', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2557, 389, '511702', '通川', '区', 'tongchuan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2558, 389, '511721', '达川', '区', 'dachuan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2559, 389, '511722', '宣汉', '县', 'xuanhan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2560, 389, '511723', '开江', '县', 'kaijiang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2561, 389, '511724', '大竹', '县', 'dazhu', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2562, 389, '511725', '渠县', '', 'quxian', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2563, 389, '511781', '万源', '市', 'wanyuan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2564, 390, '511802', '雨城', '区', 'yucheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2565, 390, '511803', '名山', '区', 'mingshan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2566, 390, '511822', '荥经', '县', 'yingjing', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2567, 390, '511823', '汉源', '县', 'hanyuan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2568, 390, '511824', '石棉', '县', 'shimian', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2569, 390, '511825', '天全', '县', 'tianquan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2570, 390, '511826', '芦山', '县', 'lushan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2571, 390, '511827', '宝兴', '县', 'baoxing', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2572, 391, '511902', '巴州', '区', 'bazhou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2573, 391, '511921', '通江', '县', 'tongjiang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2574, 391, '511922', '南江', '县', 'nanjiang', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2575, 391, '511923', '平昌', '县', 'pingchang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2576, 392, '512002', '雁江', '区', 'yanjiang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2577, 392, '512021', '安岳', '县', 'anyue', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2578, 392, '512022', '乐至', '县', 'lezhi', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2579, 375, '510185', '简阳', '市', 'jianyang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2580, 393, '513229', '马尔康', '市', 'maerkang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2581, 393, '513221', '汶川', '县', 'wenchuan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2582, 393, '513222', '理县', '', 'lixian', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2583, 393, '513223', '茂县', '', 'maoxian', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2584, 393, '513224', '松潘', '县', 'songpan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2585, 393, '513225', '九寨沟', '县', 'jiuzhaigou', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2586, 393, '513226', '金川', '县', 'jinchuan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2587, 393, '513227', '小金', '县', 'xiaojin', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2588, 393, '513228', '黑水', '县', 'heishui', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2589, 393, '513230', '壤塘', '县', 'rangtang', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2590, 393, '513231', '阿坝', '县', 'aba', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2591, 393, '513232', '若尔盖', '县', 'ruoergai', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2592, 393, '513233', '红原', '县', 'hongyuan', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2593, 394, '513301', '康定', '市', 'kangding', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2594, 394, '513322', '泸定', '县', 'luding', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2595, 394, '513323', '丹巴', '县', 'danba', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2596, 394, '513324', '九龙', '县', 'jiulong', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2597, 394, '513325', '雅江', '县', 'yajiang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2598, 394, '513326', '道孚', '县', 'daofu', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2599, 394, '513327', '炉霍', '县', 'luhuo', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2600, 394, '513328', '甘孜', '县', 'ganzi', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2601, 394, '513329', '新龙', '县', 'xinlong', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2602, 394, '513330', '德格', '县', 'dege', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2603, 394, '513331', '白玉', '县', 'baiyu', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2604, 394, '513332', '石渠', '县', 'shiqu', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2605, 394, '513333', '色达', '县', 'seda', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2606, 394, '513334', '理塘', '县', 'litang', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2607, 394, '513335', '巴塘', '县', 'batang', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2608, 394, '513336', '乡城', '县', 'xiangcheng', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2609, 394, '513337', '稻城', '县', 'daocheng', 17);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2610, 394, '513338', '得荣', '县', 'derong', 18);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2611, 395, '513401', '西昌', '市', 'xichang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2612, 395, '513422', '木里', '自治县', 'muli', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2613, 395, '513423', '盐源', '县', 'yanyuan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2614, 395, '513424', '德昌', '县', 'dechang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2615, 395, '513425', '会理', '县', 'huili', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2616, 395, '513426', '会东', '县', 'huidong', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2617, 395, '513427', '宁南', '县', 'ningnan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2618, 395, '513428', '普格', '县', 'puge', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2619, 395, '513429', '布拖', '县', 'butuo', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2620, 395, '513430', '金阳', '县', 'jinyang', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2621, 395, '513431', '昭觉', '县', 'zhaojue', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2622, 395, '513432', '喜德', '县', 'xide', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2623, 395, '513433', '冕宁', '县', 'mianning', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2624, 395, '513434', '越西', '县', 'yuexi', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2625, 395, '513435', '甘洛', '县', 'ganluo', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2626, 395, '513436', '美姑', '县', 'meigu', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2627, 395, '513437', '雷波', '县', 'leibo', 17);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2628, 396, '', '观山湖', '区', 'guanshanhu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2629, 396, '520102', '南明', '区', 'nanming', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2630, 396, '520103', '云岩', '区', 'yunyan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2631, 396, '520111', '花溪', '区', 'huaxi', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2632, 396, '520112', '乌当', '区', 'wudang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2633, 396, '520113', '白云', '区', 'baiyun', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2634, 396, '520121', '开阳', '县', 'kaiyang', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2635, 396, '520122', '息烽', '县', 'xifeng', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2636, 396, '520123', '修文', '县', 'xiuwen', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2637, 396, '520181', '清镇', '市', 'qingzhen', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2638, 397, '520201', '钟山', '区', 'zhongshan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2639, 397, '520203', '六枝特', '区', 'liuzhite', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2640, 397, '520221', '水城', '县', 'shuicheng', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2641, 397, '520281', '盘州', '市', 'panzhou', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2642, 398, '520302', '红花岗', '区', 'honghuagang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2643, 398, '520303', '汇川', '区', 'huichuan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2644, 398, '520304', '播州', '区', 'bozhou', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2645, 398, '520322', '桐梓', '县', 'tongzi', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2646, 398, '520323', '绥阳', '县', 'suiyang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2647, 398, '520324', '正安', '县', 'zhengan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2648, 398, '520325', '道真', '自治县', 'daozhen', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2649, 398, '520326', '务川', '自治县', 'wuchuan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2650, 398, '520327', '凤冈', '县', 'fenggang', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2651, 398, '520328', '湄潭', '县', 'meitan', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2652, 398, '520329', '余庆', '县', 'yuqing', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2653, 398, '520330', '习水', '县', 'xishui', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2654, 398, '520381', '赤水', '市', 'chishui', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2655, 398, '520382', '仁怀', '市', 'renhuai', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2656, 399, '520402', '西秀', '区', 'xixiu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2657, 399, '520403', '平坝', '区', 'pingba', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2658, 399, '520422', '普定', '县', 'puding', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2659, 399, '520423', '镇宁', '自治县', 'zhenning', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2660, 399, '520424', '关岭', '自治县', 'guanling', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2661, 399, '520425', '紫云', '自治县', 'ziyun', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2662, 400, '520502', '七星关', '区', 'qixingguan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2663, 400, '520521', '大方', '县', 'dafang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2664, 400, '520522', '黔西', '县', 'qianxi', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2665, 400, '520523', '金沙', '县', 'jinsha', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2666, 400, '520524', '织金', '县', 'zhijin', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2667, 400, '520525', '纳雍', '县', 'nayong', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2668, 400, '520526', '威宁', '自治县', 'weining', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2669, 400, '520527', '赫章', '县', 'hezhang', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2670, 401, '520602', '碧江', '区', 'bijiang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2671, 401, '520603', '万山', '区', 'wanshan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2672, 401, '520621', '江口', '县', 'jiangkou', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2673, 401, '520622', '玉屏', '自治县', 'yuping', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2674, 401, '520623', '石阡', '县', 'shiqian', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2675, 401, '520624', '思南', '县', 'sinan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2676, 401, '520625', '印江', '自治县', 'yinjiang', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2677, 401, '520626', '德江', '县', 'dejiang', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2678, 401, '520627', '沿河', '自治县', 'yanhe', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2679, 401, '520628', '松桃', '自治县', 'songtao', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2680, 402, '522301', '兴义', '市', 'xingyi', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2681, 402, '522322', '兴仁', '市', 'xingren', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2682, 402, '522323', '普安', '县', 'puan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2683, 402, '522324', '晴隆', '县', 'qinglong', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2684, 402, '522325', '贞丰', '县', 'zhenfeng', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2685, 402, '522326', '望谟', '县', 'wangmo', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2686, 402, '522327', '册亨', '县', 'ceheng', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2687, 402, '522328', '安龙', '县', 'anlong', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2688, 403, '522601', '凯里', '市', 'kaili', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2689, 403, '522622', '黄平', '县', 'huangping', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2690, 403, '522623', '施秉', '县', 'shibing', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2691, 403, '522624', '三穗', '县', 'sansui', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2692, 403, '522625', '镇远', '县', 'zhenyuan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2693, 403, '522626', '岑巩', '县', 'cengong', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2694, 403, '522627', '天柱', '县', 'tianzhu', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2695, 403, '522628', '锦屏', '县', 'jinping', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2696, 403, '522629', '剑河', '县', 'jianhe', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2697, 403, '522630', '台江', '县', 'taijiang', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2698, 403, '522631', '黎平', '县', 'liping', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2699, 403, '522632', '榕江', '县', 'rongjiang', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2700, 403, '522633', '从江', '县', 'congjiang', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2701, 403, '522634', '雷山', '县', 'leishan', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2702, 403, '522635', '麻江', '县', 'majiang', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2703, 403, '522636', '丹寨', '县', 'danzhai', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2704, 404, '522701', '都匀', '市', 'duyun', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2705, 404, '522702', '福泉', '市', 'fuquan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2706, 404, '522722', '荔波', '县', 'libo', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2707, 404, '522723', '贵定', '县', 'guiding', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2708, 404, '522725', '瓮安', '县', 'wengan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2709, 404, '522726', '独山', '县', 'dushan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2710, 404, '522727', '平塘', '县', 'pingtang', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2711, 404, '522728', '罗甸', '县', 'luodian', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2712, 404, '522729', '长顺', '县', 'changshun', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2713, 404, '522730', '龙里', '县', 'longli', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2714, 404, '522731', '惠水', '县', 'huishui', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2715, 404, '522732', '三都', '自治县', 'sandu', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2716, 405, '530102', '五华', '区', 'wuhua', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2717, 405, '530103', '盘龙', '区', 'panlong', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2718, 405, '530111', '官渡', '区', 'guandu', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2719, 405, '530112', '西山', '区', 'xishan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2720, 405, '530113', '东川', '区', 'dongchuan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2721, 405, '530114', '呈贡', '区', 'chenggong', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2722, 405, '530115', '晋宁', '区', 'jinning', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2723, 405, '530124', '富民', '县', 'fumin', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2724, 405, '530125', '宜良', '县', 'yiliang', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2725, 405, '530126', '石林', '自治县', 'shilin', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2726, 405, '530127', '嵩明', '县', 'songming', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2727, 405, '530128', '禄劝', '自治县', 'luquan', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2728, 405, '530129', '寻甸', '自治县', 'xundian', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2729, 405, '530181', '安宁', '市', 'anning', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2730, 406, '530302', '麒麟', '区', 'qilin', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2731, 406, '530304', '马龙', '区', 'malong', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2732, 406, '530322', '陆良', '县', 'luliang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2733, 406, '530323', '师宗', '县', 'shizong', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2734, 406, '530324', '罗平', '县', 'luoping', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2735, 406, '530325', '富源', '县', 'fuyuan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2736, 406, '530326', '会泽', '县', 'huize', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2737, 406, '530303', '沾益', '区', 'zhanyi', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2738, 406, '530381', '宣威', '市', 'xuanwei', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2739, 407, '530402', '红塔', '区', 'hongta', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2740, 407, '530421', '江川', '区', 'jiangchuan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2741, 407, '530481', '澄江', '市', 'chengjiang', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2742, 407, '530423', '通海', '县', 'tonghai', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2743, 407, '530424', '华宁', '县', 'huaning', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2744, 407, '530425', '易门', '县', 'yimen', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2745, 407, '530426', '峨山', '自治县', 'eshan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2746, 407, '530427', '新平', '自治县', 'xinping', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2747, 407, '530428', '元江', '自治县', 'yuanjiang', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2748, 408, '530602', '昭阳', '区', 'zhaoyang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2749, 408, '530621', '鲁甸', '县', 'ludian', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2750, 408, '530622', '巧家', '县', 'qiaojia', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2751, 408, '530623', '盐津', '县', 'yanjin', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2752, 408, '530624', '大关', '县', 'daguan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2753, 408, '530625', '永善', '县', 'yongshan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2754, 408, '530626', '绥江', '县', 'suijiang', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2755, 408, '530627', '镇雄', '县', 'zhenxiong', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2756, 408, '530628', '彝良', '县', 'yiliang', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2757, 408, '530629', '威信', '县', 'weixin', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2758, 408, '530630', '水富', '市', 'shuifu', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2759, 409, '530702', '古城', '区', 'gucheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2760, 409, '530721', '玉龙', '自治县', 'yulong', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2761, 409, '530722', '永胜', '县', 'yongsheng', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2762, 409, '530723', '华坪', '县', 'huaping', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2763, 409, '530724', '宁蒗', '自治县', 'ninglang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2764, 410, '530802', '思茅', '区', 'simao', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2765, 410, '530821', '宁洱', '县', 'ninger', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2766, 410, '530822', '墨江', '县', 'mojiang', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2767, 410, '530823', '景东', '县', 'jingdong', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2768, 410, '530824', '景谷', '县', 'jinggu', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2769, 410, '530825', '镇沅', '县', 'zhenyuan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2770, 410, '530826', '江城', '县', 'jiangcheng', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2771, 410, '530827', '孟连', '县', 'menglian', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2772, 410, '530828', '澜沧', '县', 'lancang', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2773, 410, '530829', '西盟', '县', 'ximeng', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2774, 411, '530902', '临翔', '区', 'linxiang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2775, 411, '530921', '凤庆', '县', 'fengqing', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2776, 411, '530922', '云县', '', 'yunxian', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2777, 411, '530923', '永德', '县', 'yongde', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2778, 411, '530924', '镇康', '县', 'zhenkang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2779, 411, '530925', '双江', '自治县', 'shuangjiang', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2780, 411, '530926', '耿马', '自治县', 'gengma', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2781, 411, '530927', '沧源', '自治县', 'cangyuan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2782, 412, '532301', '楚雄', '市', 'chuxiong', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2783, 412, '532322', '双柏', '县', 'shuangbo', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2784, 412, '532323', '牟定', '县', 'mouding', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2785, 412, '532324', '南华', '县', 'nanhua', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2786, 412, '532325', '姚安', '县', 'yaoan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2787, 412, '532326', '大姚', '县', 'dayao', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2788, 412, '532327', '永仁', '县', 'yongren', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2789, 412, '532328', '元谋', '县', 'yuanmou', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2790, 412, '532329', '武定', '县', 'wuding', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2791, 412, '532331', '禄丰', '县', 'lufeng', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2792, 413, '532501', '个旧', '市', 'gejiu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2793, 413, '532502', '开远', '市', 'kaiyuan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2794, 413, '532503', '蒙自', '市', 'mengzi', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2795, 413, '532523', '屏边', '自治县', 'pingbian', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2796, 413, '532524', '建水', '县', 'jianshui', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2797, 413, '532525', '石屏', '县', 'shiping', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2798, 413, '532526', '弥勒', '市', 'mile', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2799, 413, '532527', '泸西', '县', 'luxi', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2800, 413, '532528', '元阳', '县', 'yuanyang', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2801, 413, '532529', '红河', '县', 'honghe', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2802, 413, '532530', '金平', '自治县', 'jinping', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2803, 413, '532531', '绿春', '县', 'lu:chun', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2804, 413, '532532', '河口', '自治县', 'hekou', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2805, 414, '532601', '文山', '县', 'wenshan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2806, 414, '532622', '砚山', '县', 'yanshan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2807, 414, '532623', '西畴', '县', 'xichou', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2808, 414, '532624', '麻栗坡', '县', 'malipo', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2809, 414, '532625', '马关', '县', 'maguan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2810, 414, '532626', '丘北', '县', 'qiubei', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2811, 414, '532627', '广南', '县', 'guangnan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2812, 414, '532628', '富宁', '县', 'funing', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2813, 415, '532801', '景洪', '市', 'jinghong', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2814, 415, '532822', '勐海', '县', 'menghai', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2815, 415, '532823', '勐腊', '县', 'mengla', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2816, 416, '532901', '大理', '市', 'dali', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2817, 416, '532922', '漾濞', '自治县', 'yangbi', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2818, 416, '532923', '祥云', '县', 'xiangyun', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2819, 416, '532924', '宾川', '县', 'binchuan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2820, 416, '532925', '弥渡', '县', 'midu', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2821, 416, '532926', '南涧', '自治县', 'nanjian', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2822, 416, '532927', '巍山', '自治县', 'weishan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2823, 416, '532928', '永平', '县', 'yongping', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2824, 416, '532929', '云龙', '县', 'yunlong', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2825, 416, '532930', '洱源', '县', 'eryuan', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2826, 416, '532931', '剑川', '县', 'jianchuan', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2827, 416, '532932', '鹤庆', '县', 'heqing', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2828, 417, '533102', '瑞丽', '市', 'ruili', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2829, 417, '533103', '芒市', '', 'mangshi', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2830, 417, '533122', '梁河', '县', 'lianghe', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2831, 417, '533123', '盈江', '县', 'yingjiang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2832, 417, '533124', '陇川', '县', 'longchuan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2833, 418, '533301', '泸水', '市', 'lushui', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2834, 418, '533323', '福贡', '县', 'fugong', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2835, 418, '533324', '贡山', '县', 'gongshan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2836, 418, '533325', '兰坪', '县', 'lanping', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2837, 419, '533421', '香格里拉', '市', 'xianggelila', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2838, 419, '533422', '德钦', '县', 'deqin', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2839, 419, '533423', '维西', '县', 'weixi', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2840, 420, '530502', '隆阳', '区', 'longyang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2841, 420, '530521', '施甸', '县', 'shidian', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2842, 420, '530522', '腾冲', '市', 'tengchong', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2843, 420, '530523', '龙陵', '县', 'longling', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2844, 420, '530524', '昌宁', '县', 'changning', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2845, 421, '540102', '城关', '区', 'chengguan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2846, 421, '540121', '林周', '县', 'linzhou', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2847, 421, '540122', '当雄', '县', 'dangxiong', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2848, 421, '540123', '尼木', '县', 'nimu', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2849, 421, '540124', '曲水', '县', 'qushui', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2850, 421, '540125', '堆龙德庆', '区', 'duilongdeqing', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2851, 421, '540104', '达孜', '区', 'dazi', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2852, 421, '540127', '墨竹工卡', '县', 'mozhugongka', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2853, 422, '542121', '卡若', '区', 'karuo', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2854, 422, '542122', '江达', '县', 'jiangda', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2855, 422, '542123', '贡觉', '县', 'gongjue', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2856, 422, '542124', '类乌齐', '县', 'leiwuqi', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2857, 422, '542125', '丁青', '县', 'dingqing', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2858, 422, '542126', '察雅', '县', 'chaya', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2859, 422, '542127', '八宿', '县', 'basu', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2860, 422, '542128', '左贡', '县', 'zuogong', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2861, 422, '542129', '芒康', '县', 'mangkang', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2862, 422, '542132', '洛隆', '县', 'luolong', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2863, 422, '542133', '边坝', '县', 'bianba', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2864, 423, '540502', '乃东', '区', 'naidong', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2865, 423, '540521', '扎囊', '县', 'zhanang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2866, 423, '540522', '贡嘎', '县', 'gongga', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2867, 423, '540523', '桑日', '县', 'sangri', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2868, 423, '540524', '琼结', '县', 'qiongjie', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2869, 423, '540525', '曲松', '县', 'qusong', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2870, 423, '540526', '措美', '县', 'cuomei', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2871, 423, '540527', '洛扎', '县', 'luozha', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2872, 423, '540528', '加查', '县', 'jiacha', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2873, 423, '540529', '隆子', '县', 'longzi', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2874, 423, '540530', '错那', '县', 'cuonei', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2875, 423, '540531', '浪卡子', '县', 'langkazi', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2876, 424, '542301', '桑珠孜', '区', 'sangzhuzi', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2877, 424, '542322', '南木林', '县', 'nanmulin', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2878, 424, '542323', '江孜', '县', 'jiangzi', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2879, 424, '542324', '定日', '县', 'dingri', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2880, 424, '542325', '萨迦', '县', 'sajia', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2881, 424, '542326', '拉孜', '县', 'lazi', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2882, 424, '542327', '昂仁', '县', 'angren', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2883, 424, '542328', '谢通门', '县', 'xietongmen', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2884, 424, '542329', '白朗', '县', 'bailang', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2885, 424, '542330', '仁布', '县', 'renbu', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2886, 424, '542331', '康马', '县', 'kangma', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2887, 424, '542332', '定结', '县', 'dingjie', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2888, 424, '542333', '仲巴', '县', 'zhongba', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2889, 424, '542334', '亚东', '县', 'yadong', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2890, 424, '542335', '吉隆', '县', 'jilong', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2891, 424, '542336', '聂拉木', '县', 'nielamu', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2892, 424, '542337', '萨嘎', '县', 'saga', 17);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2893, 424, '542338', '岗巴', '县', 'gangba', 18);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2894, 425, '540630', '双湖', '县', 'shuanghu', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2895, 425, '540602', '色尼', '区', 'seni', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2896, 425, '540621', '嘉黎', '县', 'jiali', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2897, 425, '540622', '比如', '县', 'biru', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2898, 425, '540623', '聂荣', '县', 'nierong', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2899, 425, '540624', '安多', '县', 'anduo', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2900, 425, '540625', '申扎', '县', 'shenzha', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2901, 425, '540626', '索县', '', 'suoxian', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2902, 425, '540627', '班戈', '县', 'bange', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2903, 425, '540628', '巴青', '县', 'baqing', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2904, 425, '540629', '尼玛', '县', 'nima', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2905, 426, '542521', '普兰', '县', 'pulan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2906, 426, '542522', '札达', '县', 'zhada', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2907, 426, '542523', '噶尔', '县', 'gaer', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2908, 426, '542524', '日土', '县', 'ritu', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2909, 426, '542525', '革吉', '县', 'geji', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2910, 426, '542526', '改则', '县', 'gaize', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2911, 426, '542527', '措勤', '县', 'cuoqin', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2912, 427, '540402', '巴宜', '区', 'bayi', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2913, 427, '542621', '工布江达', '县', 'gongbujiangda', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2914, 427, '542621', '米林', '县', 'milin', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2915, 427, '542621', '墨脱', '县', 'motuo', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2916, 427, '542621', '波密', '县', 'bomi', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2917, 427, '542621', '察隅', '县', 'chayu', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2918, 427, '542621', '朗县', '', 'langxian', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2919, 428, '610102', '新城', '区', 'xincheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2920, 428, '610103', '碑林', '区', 'beilin', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2921, 428, '610104', '莲湖', '区', 'lianhu', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2922, 428, '610111', '灞桥', '区', 'baqiao', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2923, 428, '610112', '未央', '区', 'weiyang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2924, 428, '610113', '雁塔', '区', 'yanta', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2925, 428, '610114', '阎良', '区', 'yanliang', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2926, 428, '610115', '临潼', '区', 'lintong', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2927, 428, '610116', '长安', '区', 'changan', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2928, 428, '610122', '蓝田', '县', 'lantian', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2929, 428, '610124', '周至', '县', 'zhouzhi', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2930, 428, '610118', '鄠邑', '区', 'huyi', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2931, 428, '610117', '高陵', '区', 'gaoling', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2932, 429, '610202', '王益', '区', 'wangyi', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2933, 429, '610203', '印台', '区', 'yintai', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2934, 429, '610204', '耀州', '区', 'yaozhou', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2935, 429, '610222', '宜君', '县', 'yijun', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2936, 430, '610302', '渭滨', '区', 'weibin', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2937, 430, '610303', '金台', '区', 'jintai', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2938, 430, '610304', '陈仓', '区', 'chencang', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2939, 430, '610322', '凤翔', '县', 'fengxiang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2940, 430, '610323', '岐山', '县', 'qishan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2941, 430, '610324', '扶风', '县', 'fufeng', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2942, 430, '610326', '眉县', '', 'meixian', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2943, 430, '610327', '陇县', '', 'longxian', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2944, 430, '610328', '千阳', '县', 'qianyang', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2945, 430, '610329', '麟游', '县', 'linyou', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2946, 430, '610330', '凤县', '', 'fengxian', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2947, 430, '610331', '太白', '县', 'taibai', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2948, 431, '610402', '秦都', '区', 'qindu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2949, 431, '610403', '杨陵', '区', 'yangling', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2950, 431, '610404', '渭城', '区', 'weicheng', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2951, 431, '610422', '三原', '县', 'sanyuan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2952, 431, '610423', '泾阳', '县', 'jingyang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2953, 431, '610424', '乾县', '', 'qianxian', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2954, 431, '610425', '礼泉', '县', 'liquan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2955, 431, '610426', '永寿', '县', 'yongshou', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2956, 431, '610482', '彬州', '市', 'binzhou', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2957, 431, '610428', '长武', '县', 'changwu', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2958, 431, '610429', '旬邑', '县', 'xunyi', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2959, 431, '610430', '淳化', '县', 'chunhua', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2960, 431, '610431', '武功', '县', 'wugong', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2961, 431, '610481', '兴平', '市', 'xingping', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2962, 432, '610502', '临渭', '区', 'linwei', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2963, 432, '610521', '华州', '区', 'huazhou', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2964, 432, '610522', '潼关', '县', 'tongguan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2965, 432, '610523', '大荔', '县', 'dali', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2966, 432, '610524', '合阳', '县', 'heyang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2967, 432, '610525', '澄城', '县', 'chengcheng', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2968, 432, '610526', '蒲城', '县', 'pucheng', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2969, 432, '610527', '白水', '县', 'baishui', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2970, 432, '610528', '富平', '县', 'fuping', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2971, 432, '610581', '韩城', '市', 'hancheng', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2972, 432, '610582', '华阴', '市', 'huayin', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2973, 433, '610602', '宝塔', '区', 'baota', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2974, 433, '610621', '延长', '县', 'yanchang', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2975, 433, '610622', '延川', '县', 'yanchuan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2976, 433, '610681', '子长', '市', 'zichang', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2977, 433, '610603', '安塞', '区', 'ansai', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2978, 433, '610625', '志丹', '县', 'zhidan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2979, 433, '610626', '吴起', '县', 'wuqi', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2980, 433, '610627', '甘泉', '县', 'ganquan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2981, 433, '610628', '富县', '', 'fuxian', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2982, 433, '610629', '洛川', '县', 'luochuan', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2983, 433, '610630', '宜川', '县', 'yichuan', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2984, 433, '610631', '黄龙', '县', 'huanglong', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2985, 433, '610632', '黄陵', '县', 'huangling', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2986, 434, '610702', '汉台', '区', 'hantai', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2987, 434, '610703', '南郑', '区', 'nanzheng', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2988, 434, '610722', '城固', '县', 'chenggu', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2989, 434, '610723', '洋县', '', 'yangxian', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2990, 434, '610724', '西乡', '县', 'xixiang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2991, 434, '610725', '勉县', '', 'mianxian', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2992, 434, '610726', '宁强', '县', 'ningqiang', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2993, 434, '610727', '略阳', '县', 'lu:eyang', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2994, 434, '610728', '镇巴', '县', 'zhenba', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2995, 434, '610729', '留坝', '县', 'liuba', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2996, 434, '610730', '佛坪', '县', 'foping', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2997, 435, '610802', '榆阳', '区', 'yuyang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2998, 435, '610881', '神木', '市', 'shenmu', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (2999, 435, '610822', '府谷', '县', 'fugu', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3000, 435, '610823', '横山', '区', 'hengshan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3001, 435, '610824', '靖边', '县', 'jingbian', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3002, 435, '610825', '定边', '县', 'dingbian', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3003, 435, '610826', '绥德', '县', 'suide', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3004, 435, '610827', '米脂', '县', 'mizhi', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3005, 435, '610828', '佳县', '', 'jiaxian', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3006, 435, '610829', '吴堡', '县', 'wubao', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3007, 435, '610830', '清涧', '县', 'qingjian', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3008, 435, '610831', '子洲', '县', 'zizhou', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3009, 436, '610902', '汉滨', '区', 'hanbin', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3010, 436, '610921', '汉阴', '县', 'hanyin', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3011, 436, '610922', '石泉', '县', 'shiquan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3012, 436, '610923', '宁陕', '县', 'ningshan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3013, 436, '610924', '紫阳', '县', 'ziyang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3014, 436, '610925', '岚皋', '县', 'langao', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3015, 436, '610926', '平利', '县', 'pingli', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3016, 436, '610927', '镇坪', '县', 'zhenping', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3017, 436, '610928', '旬阳', '县', 'xunyang', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3018, 436, '610929', '白河', '县', 'baihe', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3019, 437, '611002', '商州', '区', 'shangzhou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3020, 437, '611021', '洛南', '县', 'luonan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3021, 437, '611022', '丹凤', '县', 'danfeng', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3022, 437, '611023', '商南', '县', 'shangnan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3023, 437, '611024', '山阳', '县', 'shanyang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3024, 437, '611025', '镇安', '县', 'zhenan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3025, 437, '611026', '柞水', '县', 'zuoshui', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3026, 438, '620102', '城关', '区', 'chengguan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3027, 438, '620103', '七里河', '区', 'qilihe', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3028, 438, '620104', '西固', '区', 'xigu', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3029, 438, '620105', '安宁', '区', 'anning', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3030, 438, '620111', '红古', '区', 'honggu', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3031, 438, '620121', '永登', '县', 'yongdeng', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3032, 438, '620122', '皋兰', '县', 'gaolan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3033, 438, '620123', '榆中', '县', 'yuzhong', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3034, 439, '620201', '镜铁', '区', 'jingtie', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3035, 439, '620201', '长城', '区', 'changcheng', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3036, 439, '620201', '雄关', '区', 'xiongguan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3037, 440, '620302', '金川', '区', 'jinchuan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3038, 440, '620321', '永昌', '县', 'yongchang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3039, 441, '620402', '白银', '区', 'baiyin', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3040, 441, '620403', '平川', '区', 'pingchuan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3041, 441, '620421', '靖远', '县', 'jingyuan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3042, 441, '620422', '会宁', '县', 'huining', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3043, 441, '620423', '景泰', '县', 'jingtai', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3044, 442, '620502', '秦州', '区', 'qinzhou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3045, 442, '620503', '麦积', '区', 'maiji', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3046, 442, '620521', '清水', '县', 'qingshui', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3047, 442, '620522', '秦安', '县', 'qinan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3048, 442, '620523', '甘谷', '县', 'gangu', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3049, 442, '620524', '武山', '县', 'wushan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3050, 442, '620525', '张家川', '自治县', 'zhangjiachuan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3051, 443, '620602', '凉州', '区', 'liangzhou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3052, 443, '620621', '民勤', '县', 'minqin', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3053, 443, '620622', '古浪', '县', 'gulang', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3054, 443, '620623', '天祝', '自治县', 'tianzhu', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3055, 444, '620702', '甘州', '区', 'ganzhou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3056, 444, '620721', '肃南', '自治县', 'sunan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3057, 444, '620722', '民乐', '县', 'minle', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3058, 444, '620723', '临泽', '县', 'linze', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3059, 444, '620724', '高台', '县', 'gaotai', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3060, 444, '620725', '山丹', '县', 'shandan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3061, 445, '620802', '崆峒', '区', 'kongtong', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3062, 445, '620821', '泾川', '县', 'jingchuan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3063, 445, '620822', '灵台', '县', 'lingtai', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3064, 445, '620823', '崇信', '县', 'chongxin', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3065, 445, '620881', '华亭', '市', 'huating', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3066, 445, '620825', '庄浪', '县', 'zhuanglang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3067, 445, '620826', '静宁', '县', 'jingning', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3068, 446, '620902', '肃州', '区', 'suzhou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3069, 446, '620921', '金塔', '县', 'jinta', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3070, 446, '620922', '瓜州', '县', 'guazhou', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3071, 446, '620923', '肃北', '自治县', 'subei', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3072, 446, '620924', '阿克塞', '自治县', 'akesai', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3073, 446, '620981', '玉门', '市', 'yumen', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3074, 446, '620982', '敦煌', '市', 'dunhuang', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3075, 447, '621002', '西峰', '区', 'xifeng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3076, 447, '621021', '庆城', '县', 'qingcheng', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3077, 447, '621022', '环县', '', 'huanxian', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3078, 447, '621023', '华池', '县', 'huachi', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3079, 447, '621024', '合水', '县', 'heshui', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3080, 447, '621025', '正宁', '县', 'zhengning', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3081, 447, '621026', '宁县', '', 'ningxian', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3082, 447, '621027', '镇原', '县', 'zhenyuan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3083, 448, '621102', '安定', '区', 'anding', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3084, 448, '621121', '通渭', '县', 'tongwei', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3085, 448, '621122', '陇西', '县', 'longxi', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3086, 448, '621123', '渭源', '县', 'weiyuan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3087, 448, '621124', '临洮', '县', 'lintao', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3088, 448, '621125', '漳县', '', 'zhangxian', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3089, 448, '621126', '岷县', '', 'minxian', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3090, 449, '621202', '武都', '区', 'wudu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3091, 449, '621221', '成县', '', 'chengxian', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3092, 449, '621222', '文县', '', 'wenxian', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3093, 449, '621223', '宕昌', '县', 'dangchang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3094, 449, '621224', '康县', '', 'kangxian', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3095, 449, '621225', '西和', '县', 'xihe', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3096, 449, '621226', '礼县', '', 'lixian', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3097, 449, '621227', '徽县', '', 'huixian', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3098, 449, '621228', '两当', '县', 'liangdang', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3099, 450, '622901', '临夏', '市', 'linxia', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3100, 450, '622921', '临夏', '县', 'linxia', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3101, 450, '622922', '康乐', '县', 'kangle', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3102, 450, '622923', '永靖', '县', 'yongjing', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3103, 450, '622924', '广河', '县', 'guanghe', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3104, 450, '622925', '和政', '县', 'hezheng', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3105, 450, '622926', '东乡族', '自治县', 'dongxiangzu', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3106, 450, '622927', '积石山', '自治县', 'jishishan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3107, 451, '623001', '合作', '市', 'hezuo', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3108, 451, '623021', '临潭', '县', 'lintan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3109, 451, '623022', '卓尼', '县', 'zhuoni', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3110, 451, '623023', '舟曲', '县', 'zhouqu', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3111, 451, '623024', '迭部', '县', 'diebu', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3112, 451, '623025', '玛曲', '县', 'maqu', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3113, 451, '623026', '碌曲', '县', 'liuqu', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3114, 451, '623027', '夏河', '县', 'xiahe', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3115, 452, '630102', '城东', '区', 'chengdong', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3116, 452, '630103', '城中', '区', 'chengzhong', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3117, 452, '630104', '城西', '区', 'chengxi', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3118, 452, '630105', '城北', '区', 'chengbei', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3119, 452, '630121', '大通', '自治县', 'datong', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3120, 452, '630106', '湟中', '区', 'huangzhong', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3121, 452, '630123', '湟源', '县', 'huangyuan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3122, 453, '630202', '乐都', '区', 'ledu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3123, 453, '632121', '平安', '区', 'pingan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3124, 453, '632122', '民和', '自治县', 'minhe', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3125, 453, '632126', '互助', '自治县', 'huzhu', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3126, 453, '632127', '化隆', '自治县', 'hualong', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3127, 453, '632128', '循化', '自治县', 'xunhua', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3128, 454, '632221', '门源', '自治县', 'menyuan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3129, 454, '632222', '祁连', '县', 'qilian', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3130, 454, '632223', '海晏', '县', 'haiyan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3131, 454, '632224', '刚察', '县', 'gangcha', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3132, 455, '632321', '同仁', '县', 'tongren', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3133, 455, '632322', '尖扎', '县', 'jianzha', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3134, 455, '632323', '泽库', '县', 'zeku', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3135, 455, '632324', '河南', '自治县', 'henan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3136, 456, '632521', '共和', '县', 'gonghe', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3137, 456, '632522', '同德', '县', 'tongde', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3138, 456, '632523', '贵德', '县', 'guide', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3139, 456, '632524', '兴海', '县', 'xinghai', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3140, 456, '632525', '贵南', '县', 'guinan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3141, 457, '632621', '玛沁', '县', 'maqin', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3142, 457, '632622', '班玛', '县', 'banma', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3143, 457, '632623', '甘德', '县', 'gande', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3144, 457, '632624', '达日', '县', 'dari', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3145, 457, '632625', '久治', '县', 'jiuzhi', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3146, 457, '632626', '玛多', '县', 'maduo', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3147, 458, '632721', '玉树', '市', 'yushu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3148, 458, '632722', '杂多', '县', 'zaduo', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3149, 458, '632724', '治多', '县', 'zhiduo', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3150, 458, '632725', '囊谦', '县', 'nangqian', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3151, 458, '632726', '曲麻莱', '县', 'qumalai', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3154, 459, '632803', '茫崖', '市', 'mangya', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3155, 459, '632801', '格尔木', '市', 'geermu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3156, 459, '632802', '德令哈', '市', 'delingha', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3157, 459, '632821', '乌兰', '县', 'wulan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3158, 459, '632822', '都兰', '县', 'dulan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3159, 459, '632823', '天峻', '县', 'tianjun', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3160, 460, '640104', '兴庆', '区', 'xingqing', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3161, 460, '640105', '西夏', '区', 'xixia', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3162, 460, '640106', '金凤', '区', 'jinfeng', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3163, 460, '640121', '永宁', '县', 'yongning', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3164, 460, '640122', '贺兰', '县', 'helan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3165, 460, '640181', '灵武', '市', 'lingwu', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3166, 461, '640202', '大武口', '区', 'dawukou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3167, 461, '640205', '惠农', '区', 'huinong', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3168, 461, '640221', '平罗', '县', 'pingluo', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3169, 462, '', '红寺堡', '区', 'hongsibao', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3170, 462, '640302', '利通', '区', 'litong', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3171, 462, '640323', '盐池', '县', 'yanchi', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3172, 462, '640324', '同心', '县', 'tongxin', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3173, 462, '640381', '青铜峡', '市', 'qingtongxia', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3174, 463, '640402', '原州', '区', 'yuanzhou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3175, 463, '640422', '西吉', '县', 'xiji', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3176, 463, '640423', '隆德', '县', 'longde', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3177, 463, '640424', '泾源', '县', 'jingyuan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3178, 463, '640425', '彭阳', '县', 'pengyang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3179, 464, '640502', '沙坡头', '区', 'shapotou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3180, 464, '640521', '中宁', '县', 'zhongning', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3181, 464, '640522', '海原', '县', 'haiyuan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3182, 465, '650102', '天山', '区', 'tianshan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3183, 465, '650103', '沙依巴克', '区', 'shayibake', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3184, 465, '650104', '新市', '区', 'xinshi', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3185, 465, '650105', '水磨沟', '区', 'shuimogou', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3186, 465, '650106', '头屯河', '区', 'toutunhe', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3187, 465, '650107', '达坂城', '区', 'dabancheng', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3188, 465, '650109', '米东', '区', 'midong', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3189, 465, '650121', '乌鲁木齐', '县', 'wulumuqi', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3190, 466, '650202', '独山子', '区', 'dushanzi', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3191, 466, '650203', '克拉玛依', '区', 'kelamayi', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3192, 466, '650204', '白碱滩', '区', 'baijiantan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3193, 466, '650205', '乌尔禾', '区', 'wuerhe', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3194, 467, '652101', '高昌', '区', 'gaochang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3195, 467, '652122', '鄯善', '县', 'shanshan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3196, 467, '652123', '托克逊', '县', 'tuokexun', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3197, 468, '650502', '伊州', '区', 'yizhou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3198, 468, '650521', '巴里坤', '自治县', 'balikun', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3199, 468, '650522', '伊吾', '县', 'yiwu', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3200, 469, '652301', '昌吉', '市', 'changji', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3201, 469, '652302', '阜康', '市', 'fukang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3202, 469, '652323', '呼图壁', '县', 'hutubi', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3203, 469, '652324', '玛纳斯', '县', 'manasi', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3204, 469, '652325', '奇台', '县', 'qitai', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3205, 469, '652327', '吉木萨尔', '县', 'jimusaer', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3206, 469, '652328', '木垒', '自治县', 'mulei', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3207, 470, '', '阿拉山口', '市', 'alashankou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3208, 470, '652701', '博乐', '市', 'bole', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3209, 470, '652722', '精河', '县', 'jinghe', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3210, 470, '652723', '温泉', '县', 'wenquan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3211, 471, '652801', '库尔勒', '市', 'kuerle', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3212, 471, '652822', '轮台', '县', 'luntai', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3213, 471, '652823', '尉犁', '县', 'weili', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3214, 471, '652824', '若羌', '县', 'ruoqiang', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3215, 471, '652825', '且末', '县', 'qiemo', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3216, 471, '652826', '焉耆', '自治县', 'yanqi', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3217, 471, '652827', '和静', '县', 'hejing', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3218, 471, '652828', '和硕', '县', 'heshuo', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3219, 471, '652829', '博湖', '县', 'bohu', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3220, 472, '652901', '阿克苏', '市', 'akesu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3221, 472, '652922', '温宿', '县', 'wensu', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3222, 472, '652902', '库车', '市', 'kuche', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3223, 472, '652924', '沙雅', '县', 'shaya', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3224, 472, '652925', '新和', '县', 'xinhe', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3225, 472, '652926', '拜城', '县', 'baicheng', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3226, 472, '652927', '乌什', '县', 'wushen', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3227, 472, '652928', '阿瓦提', '县', 'awati', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3228, 472, '652929', '柯坪', '县', 'keping', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3229, 473, '653001', '阿图什', '市', 'atushen', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3230, 473, '653022', '阿克陶', '县', 'aketao', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3231, 473, '653023', '阿合奇', '县', 'aheqi', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3232, 473, '653024', '乌恰', '县', 'wuqia', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3233, 474, '653101', '喀什', '市', 'kashen', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3234, 474, '653121', '疏附', '县', 'shufu', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3235, 474, '653122', '疏勒', '县', 'shule', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3236, 474, '653123', '英吉沙', '县', 'yingjisha', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3237, 474, '653124', '泽普', '县', 'zepu', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3238, 474, '653125', '莎车', '县', 'shache', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3239, 474, '653126', '叶城', '县', 'yecheng', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3240, 474, '653127', '麦盖提', '县', 'maigaiti', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3241, 474, '653128', '岳普湖', '县', 'yuepuhu', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3242, 474, '653129', '伽师', '县', 'jiashi', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3243, 474, '653130', '巴楚', '县', 'bachu', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3244, 474, '653131', '塔什库尔干', '自治县', 'tashenkuergan', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3245, 475, '653201', '和田', '市', 'hetian', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3246, 475, '653221', '和田', '县', 'hetian', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3247, 475, '653222', '墨玉', '县', 'moyu', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3248, 475, '653223', '皮山', '县', 'pishan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3249, 475, '653224', '洛浦', '县', 'luopu', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3250, 475, '653225', '策勒', '县', 'cele', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3251, 475, '653226', '于田', '县', 'yutian', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3252, 475, '653227', '民丰', '县', 'minfeng', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3253, 476, '654002', '伊宁', '市', 'yining', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3254, 476, '654003', '奎屯', '市', 'kuitun', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3255, 476, '654021', '伊宁', '县', 'yining', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3256, 476, '654022', '察布查尔锡伯', '自治县', 'chabuchaerxibo', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3257, 476, '654023', '霍城', '县', 'huocheng', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3258, 476, '654024', '巩留', '县', 'gongliu', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3259, 476, '654025', '新源', '县', 'xinyuan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3260, 476, '654026', '昭苏', '县', 'zhaosu', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3261, 476, '654027', '特克斯', '县', 'tekesi', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3262, 476, '654028', '尼勒克', '县', 'nileke', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3263, 477, '654201', '塔城', '市', 'tacheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3264, 477, '654202', '乌苏', '市', 'wusu', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3265, 477, '654221', '额敏', '县', 'emin', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3266, 477, '654223', '沙湾', '县', 'shawan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3267, 477, '654224', '托里', '县', 'tuoli', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3268, 477, '654225', '裕民', '县', 'yumin', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3269, 477, '654226', '和布克赛尔', '自治县', 'hebukesaier', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3270, 478, '654301', '阿勒泰', '市', 'aletai', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3271, 478, '654321', '布尔津', '县', 'buerjin', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3272, 478, '654322', '富蕴', '县', 'fuyun', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3273, 478, '654323', '福海', '县', 'fuhai', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3274, 478, '654324', '哈巴河', '县', 'habahe', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3275, 478, '654325', '青河', '县', 'qinghe', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3276, 478, '654326', '吉木乃', '县', 'jimunai', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3277, 485, '6300100', '松山', '区', 'songshan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3278, 485, '6300200', '信义', '区', 'xinyi', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3279, 485, '6300300', '大安', '区', 'daan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3280, 485, '6300400', '中山', '区', 'zhongshan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3281, 485, '6300500', '中正', '区', 'zhongzheng', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3282, 485, '6300600', '大同', '区', 'datong', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3283, 485, '6300700', '万华', '区', 'wanhua', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3284, 485, '6300800', '文山', '区', 'wenshan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3285, 485, '6300900', '南港', '区', 'nangang', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3286, 485, '6301000', '内湖', '区', 'neihu', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3287, 485, '6301100', '士林', '区', 'shilin', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3288, 485, '6301200', '北投', '区', 'beitou', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3289, 486, '6400100', '盐埕', '区', 'yancheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3290, 486, '6400200', '鼓山', '区', 'gushan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3291, 486, '6400300', '左营', '区', 'zuoying', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3292, 486, '6400400', '楠梓', '区', 'nanzi', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3293, 486, '6400500', '三民', '区', 'sanmin', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3294, 486, '6400600', '新兴', '区', 'xinxing', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3295, 486, '6400700', '前金', '区', 'qianjin', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3296, 486, '6400800', '苓雅', '区', 'lingya', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3297, 486, '6400900', '前镇', '区', 'qianzhen', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3298, 486, '6401000', '旗津', '区', 'qijin', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3299, 486, '6401100', '小港', '区', 'xiaogang', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3300, 487, '1001701', '中正', '区', 'zhongzheng', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3301, 487, '1001702', '七堵', '区', 'qidu', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3302, 487, '1001703', '暖暖', '区', 'nuannuan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3303, 487, '1001704', '仁爱', '区', 'renai', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3304, 487, '1001705', '中山', '区', 'zhongshan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3305, 487, '1001706', '安乐', '区', 'anle', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3306, 487, '1001707', '信义', '区', 'xinyi', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3307, 488, '', '大安', '区', 'daan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3308, 488, '', '神冈', '区', 'shengang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3309, 488, '', '石冈', '区', 'shigang', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3310, 488, '', '东势', '区', 'dongshi', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3311, 488, '', '新社', '区', 'xinshe', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3312, 488, '', '和平', '区', 'heping', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3313, 488, '', '大肚', '区', 'dadu', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3314, 488, '', '沙鹿', '区', 'shalu', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3315, 488, '', '龙井', '区', 'longjing', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3316, 488, '', '梧栖', '区', 'wuqi', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3317, 488, '', '清水', '区', 'qingshui', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3318, 488, '', '大甲', '区', 'dajia', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3319, 488, '', '外埔', '区', 'waipu', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3320, 488, '', '大雅', '区', 'daya', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3321, 488, '', '潭子', '区', 'tanzi', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3322, 488, '', '后里', '区', 'houli', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3323, 488, '', '丰原', '区', 'fengyuan', 17);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3324, 488, '', '乌日', '区', 'wuri', 18);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3325, 488, '', '雾峰', '区', 'wufeng', 19);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3326, 488, '', '大里', '区', 'dali', 20);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3327, 488, '', '太平', '区', 'taiping', 21);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3328, 488, '1001901', '中区', '', 'zhongqu', 22);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3329, 488, '1001902', '东区', '', 'dongqu', 23);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3330, 488, '1001903', '南区', '', 'nanqu', 24);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3331, 488, '1001904', '西区', '', 'xiqu', 25);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3332, 488, '1001905', '北区', '', 'beiqu', 26);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3333, 488, '1001906', '西屯', '区', 'xitun', 27);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3334, 488, '1001907', '南屯', '区', 'nantun', 28);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3335, 488, '1001908', '北屯', '区', 'beitun', 29);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3336, 489, '1002101', '东区', '', 'dongqu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3337, 489, '1002102', '南区', '', 'nanqu', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3338, 489, '1002104', '北区', '', 'beiqu', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3339, 489, '1002106', '安南', '区', 'annan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3340, 489, '1002107', '安平', '区', 'anping', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3341, 489, '1002108', '中西', '区', 'zhongxi', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3342, 490, '1001801', '东区', '', 'dongqu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3343, 490, '1001802', '北区', '', 'beiqu', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3344, 490, '1001803', '香山', '区', 'xiangshan', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3345, 491, '1002001', '东区', '', 'dongqu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3346, 491, '1002002', '西区', '', 'xiqu', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3347, 492, '', '板桥', '区', 'banqiao', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3348, 492, '', '瑞芳', '区', 'ruifang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3349, 492, '', '八里', '区', 'bali', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3350, 492, '', '深坑', '区', 'shenkeng', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3351, 492, '', '三芝', '区', 'sanzhi', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3352, 492, '', '金山', '区', 'jinshan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3353, 492, '', '万里', '区', 'wanli', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3354, 492, '', '贡寮', '区', 'gongliao', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3355, 492, '', '石门', '区', 'shimen', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3356, 492, '', '双溪', '区', 'shuangxi', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3357, 492, '', '石碇', '区', 'shiding', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3358, 492, '', '坪林', '区', 'pinglin', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3359, 492, '', '乌来', '区', 'wulai', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3360, 492, '', '泰山', '区', 'taishan', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3361, 492, '', '五股', '区', 'wugu', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3362, 492, '', '莺歌', '区', 'yingge', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3363, 492, '', '中和', '区', 'zhonghe', 17);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3364, 492, '', '新庄', '区', 'xinzhuang', 18);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3365, 492, '', '三重', '区', 'sanzhong', 19);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3366, 492, '', '新店', '区', 'xindian', 20);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3367, 492, '', '土城', '区', 'tucheng', 21);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3368, 492, '', '永和', '区', 'yonghe', 22);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3369, 492, '', '芦洲', '区', 'luzhou', 23);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3370, 492, '', '汐止', '区', 'xizhi', 24);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3371, 492, '', '树林', '区', 'shulin', 25);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3372, 492, '', '淡水', '区', 'danshui', 26);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3373, 492, '', '三峡', '区', 'sanxia', 27);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3374, 492, '', '林口', '区', 'linkou', 28);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3375, 492, '', '平溪', '区', 'pingxi', 29);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3376, 493, '1000201', '宜兰', '市', 'yilan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3377, 493, '1000202', '罗东', '镇', 'luodong', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3378, 493, '1000203', '苏澳', '镇', 'suao', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3379, 493, '1000204', '头城', '乡', 'toucheng', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3380, 493, '1000205', '礁溪', '乡', 'jiaoxi', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3381, 493, '1000206', '壮围', '乡', 'zhuangwei', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3382, 493, '1000207', '员山', '乡', 'yuanshan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3383, 493, '1000208', '冬山', '乡', 'dongshan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3384, 493, '1000209', '五结', '乡', 'wujie', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3385, 493, '1000210', '三星', '乡', 'sanxing', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3386, 493, '1000211', '大同', '乡', 'datong', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3387, 493, '1000212', '南澳', '乡', 'nanao', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3388, 494, '1000301', '桃园', '市', 'taoyuan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3389, 494, '1000302', '中坜', '市', 'zhongli', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3390, 494, '1000303', '大溪', '镇', 'daxi', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3391, 494, '1000304', '杨梅', '镇', 'yangmei', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3392, 494, '1000305', '芦竹', '乡', 'luzhu', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3393, 494, '1000306', '大园', '乡', 'dayuan', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3394, 494, '1000307', '龟山', '乡', 'guishan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3395, 494, '1000308', '八德', '市', 'bade', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3396, 494, '1000309', '龙潭', '乡', 'longtan', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3397, 494, '1000310', '平镇', '市', 'pingzhen', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3398, 494, '1000311', '新屋', '乡', 'xinwu', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3399, 494, '1000312', '观音', '乡', 'guanyin', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3400, 494, '1000313', '复兴', '乡', 'fuxing', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3401, 495, '1000401', '竹北', '市', 'zhubei', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3402, 495, '1000402', '竹东', '镇', 'zhudong', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3403, 495, '1000403', '新埔', '镇', 'xinpu', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3404, 495, '1000404', '关西', '镇', 'guanxi', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3405, 495, '1000405', '湖口', '乡', 'hukou', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3406, 495, '1000406', '新丰', '乡', 'xinfeng', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3407, 495, '1000407', '芎林', '乡', 'xionglin', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3408, 495, '1000408', '横山', '乡', 'hengshan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3409, 495, '1000409', '北埔', '乡', 'beipu', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3410, 495, '1000410', '宝山', '乡', 'baoshan', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3411, 495, '1000411', '峨眉', '乡', 'emei', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3412, 495, '1000412', '尖石', '乡', 'jianshi', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3413, 495, '1000413', '五峰', '乡', 'wufeng', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3414, 496, '1000501', '苗栗', '市', 'miaoli', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3415, 496, '1000502', '苑里', '镇', 'yuanli', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3416, 496, '1000503', '通霄', '镇', 'tongxiao', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3417, 496, '1000504', '竹南', '镇', 'zhunan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3418, 496, '1000505', '头份', '镇', 'toufen', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3419, 496, '1000506', '后龙', '镇', 'houlong', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3420, 496, '1000507', '卓兰', '镇', 'zhuolan', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3421, 496, '1000508', '大湖', '乡', 'dahu', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3422, 496, '1000509', '公馆', '乡', 'gongguan', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3423, 496, '1000510', '铜锣', '乡', 'tongluo', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3424, 496, '1000511', '南庄', '乡', 'nanzhuang', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3425, 496, '1000512', '头屋', '乡', 'touwu', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3426, 496, '1000513', '三义', '乡', 'sanyi', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3427, 496, '1000514', '西湖', '乡', 'xihu', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3428, 496, '1000515', '造桥', '乡', 'zaoqiao', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3429, 496, '1000516', '三湾', '乡', 'sanwan', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3430, 496, '1000517', '狮潭', '乡', 'shitan', 17);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3431, 496, '1000518', '泰安', '乡', 'taian', 18);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3432, 497, '1000701', '彰化', '市', 'zhanghua', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3433, 497, '1000702', '鹿港', '镇', 'lugang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3434, 497, '1000703', '和美', '镇', 'hemei', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3435, 497, '1000704', '线西', '乡', 'xianxi', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3436, 497, '1000705', '伸港', '乡', 'shengang', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3437, 497, '1000706', '福兴', '乡', 'fuxing', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3438, 497, '1000707', '秀水', '乡', 'xiushui', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3439, 497, '1000708', '花坛', '乡', 'huatan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3440, 497, '1000709', '芬园', '乡', 'fenyuan', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3441, 497, '1000710', '员林', '镇', 'yuanlin', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3442, 497, '1000711', '溪湖', '镇', 'xihu', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3443, 497, '1000712', '田中', '镇', 'tianzhong', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3444, 497, '1000713', '大村', '乡', 'dacun', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3445, 497, '1000714', '埔盐', '乡', 'puyan', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3446, 497, '1000715', '埔心', '乡', 'puxin', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3447, 497, '1000716', '永靖', '乡', 'yongjing', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3448, 497, '1000717', '社头', '乡', 'shetou', 17);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3449, 497, '1000718', '二水', '乡', 'ershui', 18);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3450, 497, '1000719', '北斗', '镇', 'beidou', 19);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3451, 497, '1000720', '二林', '镇', 'erlin', 20);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3452, 497, '1000721', '田尾', '乡', 'tianwei', 21);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3453, 497, '1000722', '埤头', '乡', 'pitou', 22);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3454, 497, '1000723', '芳苑', '乡', 'fangyuan', 23);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3455, 497, '1000724', '大城', '乡', 'dacheng', 24);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3456, 497, '1000725', '竹塘', '乡', 'zhutang', 25);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3457, 497, '1000726', '溪州', '乡', 'xizhou', 26);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3458, 498, '1000801', '南投', '市', 'nantou', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3459, 498, '1000802', '南投', '镇', 'nantou', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3460, 498, '1000803', '草屯', '镇', 'caotun', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3461, 498, '1000804', '竹山', '镇', 'zhushan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3462, 498, '1000805', '集集', '镇', 'jiji', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3463, 498, '1000806', '名间', '乡', 'mingjian', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3464, 498, '1000807', '鹿谷', '乡', 'lugu', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3465, 498, '1000808', '中寮', '乡', 'zhongliao', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3466, 498, '1000809', '鱼池', '乡', 'yuchi', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3467, 498, '1000810', '国姓', '乡', 'guoxing', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3468, 498, '1000811', '水里', '乡', 'shuili', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3469, 498, '1000812', '信义', '乡', 'xinyi', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3470, 498, '1000813', '仁爱', '乡', 'renai', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3471, 499, '1000901', '斗六', '市', 'douliu', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3472, 499, '1000902', '斗南', '镇', 'dounan', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3473, 499, '1000903', '虎尾', '镇', 'huwei', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3474, 499, '1000904', '西螺', '镇', 'xiluo', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3475, 499, '1000905', '土库', '镇', 'tuku', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3476, 499, '1000906', '北港', '镇', 'beigang', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3477, 499, '1000907', '古坑', '乡', 'gukeng', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3478, 499, '1000908', '大埤', '乡', 'dapi', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3479, 499, '1000909', '莿桐', '乡', 'citong', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3480, 499, '1000910', '林内', '乡', 'linnei', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3481, 499, '1000911', '二仑', '乡', 'erlun', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3482, 499, '1000912', '仑背', '乡', 'lunbei', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3483, 499, '1000913', '麦寮', '乡', 'mailiao', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3484, 499, '1000914', '东势', '乡', 'dongshi', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3485, 499, '1000915', '褒忠', '乡', 'baozhong', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3486, 499, '1000916', '台西', '乡', 'taixi', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3487, 499, '1000917', '元长', '乡', 'yuanchang', 17);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3488, 499, '1000918', '四湖', '乡', 'sihu', 18);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3489, 499, '1000919', '口湖', '乡', 'kouhu', 19);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3490, 499, '1000920', '水林', '乡', 'shuilin', 20);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3491, 500, '', '太保', '市', 'taibao', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3492, 500, '', '朴子', '市', 'pozi', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3493, 500, '', '布袋', '镇', 'budai', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3494, 500, '10010', '大林', '镇', 'dalin', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3495, 500, '1001001', '民雄', '乡', 'minxiong', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3496, 500, '1001002', '溪口', '乡', 'xikou', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3497, 500, '1001003', '新港', '乡', 'xingang', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3498, 500, '1001004', '六脚', '乡', 'liujiao', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3499, 500, '1001005', '东石', '乡', 'dongshi', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3500, 500, '1001006', '义竹', '乡', 'yizhu', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3501, 500, '1001007', '鹿草', '乡', 'lucao', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3502, 500, '1001008', '水上', '乡', 'shuishang', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3503, 500, '1001009', '中埔', '乡', 'zhongpu', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3504, 500, '1001010', '竹崎', '乡', 'zhuqi', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3505, 500, '1001011', '梅山', '乡', 'meishan', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3506, 500, '1001012', '番路', '乡', 'fanlu', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3507, 500, '1001013', '大埔', '乡', 'dapu', 17);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3508, 500, '1001014', '阿里山', '乡', 'alishan', 18);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3509, 501, '1001301', '屏东', '市', 'pingdong', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3510, 501, '1001302', '潮州', '镇', 'chaozhou', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3511, 501, '1001303', '东港', '镇', 'donggang', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3512, 501, '1001304', '恒春', '镇', 'hengchun', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3513, 501, '1001305', '万丹', '乡', 'wandan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3514, 501, '1001306', '长治', '乡', 'changzhi', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3515, 501, '1001307', '麟洛', '乡', 'linluo', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3516, 501, '1001308', '九如', '乡', 'jiuru', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3517, 501, '1001309', '里港', '乡', 'ligang', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3518, 501, '1001310', '盐埔', '乡', 'yanpu', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3519, 501, '1001311', '高树', '乡', 'gaoshu', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3520, 501, '1001312', '万峦', '乡', 'wanluan', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3521, 501, '1001313', '内埔', '乡', 'neipu', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3522, 501, '1001314', '竹田', '乡', 'zhutian', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3523, 501, '1001315', '新埤', '乡', 'xinpi', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3524, 501, '1001316', '枋寮', '乡', 'fangliao', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3525, 501, '1001317', '新园', '乡', 'xinyuan', 17);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3526, 501, '1001318', '崁顶', '乡', 'kanding', 18);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3527, 501, '1001319', '林边', '乡', 'linbian', 19);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3528, 501, '1001320', '南州', '乡', 'nanzhou', 20);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3529, 501, '1001321', '佳冬', '乡', 'jiadong', 21);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3530, 501, '1001322', '琉球', '乡', 'liuqiu', 22);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3531, 501, '1001323', '车城', '乡', 'checheng', 23);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3532, 501, '1001324', '满州', '乡', 'manzhou', 24);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3533, 501, '1001325', '枋山', '乡', 'fangshan', 25);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3534, 501, '1001326', '三地门', '乡', 'sandimen', 26);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3535, 501, '1001327', '雾台', '乡', 'wutai', 27);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3536, 501, '1001328', '玛家', '乡', 'majia', 28);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3537, 501, '1001329', '泰武', '乡', 'taiwu', 29);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3538, 501, '1001330', '来义', '乡', 'laiyi', 30);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3539, 501, '1001331', '春日', '乡', 'chunri', 31);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3540, 501, '1001332', '狮子', '乡', 'shizi', 32);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3541, 501, '1001333', '牡丹', '乡', 'mudan', 33);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3542, 502, '', '卑南', '乡', 'beinan', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3543, 502, '1001401', '台东', '市', 'taidong', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3544, 502, '1001402', '成功', '镇', 'chenggong', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3545, 502, '1001403', '关山', '镇', 'guanshan', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3546, 502, '1001405', '鹿野', '乡', 'luye', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3547, 502, '1001406', '池上', '乡', 'chishang', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3548, 502, '1001407', '东河', '乡', 'donghe', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3549, 502, '1001408', '长滨', '乡', 'changbin', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3550, 502, '1001409', '太麻里', '乡', 'taimali', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3551, 502, '1001410', '大武', '乡', 'dawu', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3552, 502, '1001411', '绿岛', '乡', 'lu:dao', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3553, 502, '1001412', '海端', '乡', 'haiduan', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3554, 502, '1001413', '延平', '乡', 'yanping', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3555, 502, '1001414', '金峰', '乡', 'jinfeng', 14);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3556, 502, '1001415', '达仁', '乡', 'daren', 15);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3557, 502, '1001416', '兰屿', '乡', 'lanyu', 16);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3558, 503, '1001501', '花莲', '市', 'hualian', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3559, 503, '1001502', '凤林', '镇', 'fenglin', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3560, 503, '1001503', '玉里', '镇', 'yuli', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3561, 503, '1001504', '新城', '乡', 'xincheng', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3562, 503, '1001505', '吉安', '乡', 'jian', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3563, 503, '1001506', '寿丰', '乡', 'shoufeng', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3564, 503, '1001507', '光复', '乡', 'guangfu', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3565, 503, '1001508', '丰滨', '乡', 'fengbin', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3566, 503, '1001509', '瑞穗', '乡', 'ruisui', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3567, 503, '1001510', '富里', '乡', 'fuli', 10);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3568, 503, '1001511', '秀林', '乡', 'xiulin', 11);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3569, 503, '1001512', '万荣', '乡', 'wanrong', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3570, 503, '1001513', '卓溪', '乡', 'zhuoxi', 13);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3571, 504, '1001601', '马公', '市', 'magong', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3572, 504, '1001602', '湖西', '乡', 'huxi', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3573, 504, '1001603', '白沙', '乡', 'baisha', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3574, 504, '1001604', '西屿', '乡', 'xiyu', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3575, 504, '1001605', '望安', '乡', 'wangan', 5);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3576, 504, '1001606', '七美', '乡', 'qimei', 6);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3577, 31, '659007', '双河', '市', 'shuanghe', 21);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3578, 357, '', '海棠', '区', 'haitang', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3579, 357, '', '吉阳', '区', 'jiyang', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3580, 357, '', '天涯', '区', 'tianya', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3581, 357, '', '崖州', '区', 'yazhou', 4);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3582, 476, '654004', '霍尔果斯', '市', 'huoerguosi', 3);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3583, 388, '', '前锋', '区', 'qianfeng', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3584, 350, '450903', '福绵', '区', 'fumian', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (3585, 31, '659008', '可克达拉', '市', 'kedakela', 22);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (7036, 323, '440309', '龙华', '区', 'longhua', 7);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (7037, 323, '440310', '坪山', '区', 'pingshan', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (7038, 31, '659009', '昆玉', '市', 'kunyu', 23);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (7039, 352, '451103', '平桂', '区', 'pinggui', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (7040, 152, '150603', '巴什', '区', 'bashi', 2);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (7041, 231, '', '叶集', '区', 'yeji', 8);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (7042, 323, '440311', '光明', '区', 'guangming', 9);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (7043, 210, '330383', '龙港', '市', 'longgang', 12);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (7044, 31, '659010', '胡杨河', '市', 'huyanghe', 24);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (7045, 358, '460300', '西沙', '区', 'xisha', 1);
INSERT INTO dict_district (id, parent_id, code, name, suffix, pinyin, sort)
VALUES (7046, 358, '460300', '南沙', '区', 'nansha', 0);