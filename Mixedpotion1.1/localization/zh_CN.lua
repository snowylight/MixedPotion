return {
    descriptions = {
        Joker = {
            j_mipo_kazakus={
                name="卡扎库斯",
                text={
                    "在选择{C:attention}盲注{}时",
                    "如果你没有相同的小丑",
                    "则生成一张{C:mult}混合所有",
                    "效果的强大{C:potion}药剂牌",
                    "{C:inactive}(必须有空位)",
                },
            },
            j_mipo_unlicensed_apothecary={
                name="无证药剂师",
                text={
                    "直接跳过{C:potion}药剂包{}时",
                    "获得等于选择数的{C:attention}资金",
                    "混合卡包内的所有{C:potion}药剂牌",
                    "添加到你的消耗牌槽位",
                    "{C:inactive}(必须有空位)",
                },
            },
            j_mipo_kabal_chemist={
                name="暗金教炼金师",
                text={
                    "{X:mult,C:white}X#1#{}倍率",
                    "如果本赛局中",
                    "你使用过{C:potion}药剂牌",
                    "则改为{X:mult,C:white}X#2#{}倍率",
                },
            },
            j_mipo_potion_vendor={
                name="药水商人",
                text={
                    "在跳过{C:attention}盲注{}时",
                    "生成一张基础{C:potion}药剂牌",
                    "{C:inactive}(必须有空位)",
                },
            },
            j_mipo_cloakscale_chemist={
                name="隐鳞药剂师",
                text={
                    "每当使用{C:potion}药剂牌{}时",
                    "{C:attention}翻倍{}此牌的倍率",
                    "{C:inactive}(当前为{C:mult}+#1#{C:inactive}倍率)",
                },
            },
        },
        Potion = {
            c_mipo_potion1 = {
                name = "虚空花",
                text = {
                    ''
                }
            },
            c_mipo_potion2 = {
                name = "暗影之油",
                text = {
                    ''
                }
            },
            c_mipo_potion3 = {
                name = "皇血草",
                text = {
                    ''
                }
            },
            c_mipo_potion4 = {
                name = "金棘花",
                text = {
                    ''
                }
            },
            c_mipo_potion5 = {
                name = "冰盖草",
                text = {
                    ''
                }
            },
            c_mipo_potion6 = {
                name = "邪能花",
                text = {
                    ''
                }
            },
            c_mipo_potion7 = {
                name = "石鳞鱼油",
                text = {
                    ''
                }
            },
            c_mipo_potion8 = {
                name = "火焰之心",
                text = {
                    ''
                }
            },
            c_mipo_potion9 = {
                name = "亡灵腐液",
                text = {
                    ''
                }
            },
        },
        Other = {
            potion_card={
                name = '药剂牌',
                text = {
                    '{C:potion}混合{}效果的消耗牌',
                    '只能在{C:attention}盲注{}中使用',
                },
            },
            p_mipo_potionpack1={
                name = '药剂包',
                text = {
                    '从最多{C:attention}#2#{}张{C:potion}药剂牌{}中',
                    '选择{C:attention}#1#{}张进行{C:potion}混合{}',
                    '并添加到你的槽位',
                },
            },
            p_mipo_potionpack2={
                name = '超级药剂包',
                text = {
                    '从最多{C:attention}#2#{}张{C:potion}药剂牌{}中',
                    '选择{C:attention}#1#{}张进行{C:potion}混合{}',
                    '并添加到你的槽位',
                },
            },
        },
    },
    misc={
        dictionary = {
            k_potion = "药剂牌",
            b_potion_cards = "药剂牌",
            k_potion_pack = "药剂包",
            k_plus_potion = "+1 药剂牌",
            k_potion_mix = "混合",
            k_cloakscale_chemist = "翻倍",
            k_choose_mix = "选择并混合",
            k_potion1 = "+1出牌次数",
            k_potion2 = "+1弃牌次数",
            k_potion3 = "+$8",
            k_potion4 = "抽2张牌",
            k_potion5 = "获得一张增强牌",
            k_potion6 = "复制最左侧手牌",
            k_potion7 = "升级上次打出牌型",
            k_potion8 = "获得一个代金券标签",
            k_potion9 = "获得一张负片命运之轮",
        },
    },
}