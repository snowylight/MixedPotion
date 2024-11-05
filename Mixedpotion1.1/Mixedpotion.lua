--- STEAMODDED HEADER
--- MOD_NAME: mixedpotion
--- MOD_ID: mixedpotion
--- MOD_AUTHOR: [sishui baimao]
--- MOD_DESCRIPTION: Customizable Consumables
--- BADGE_COLOUR: 9933FF
--- VERSION: 1.1.0
--- PREFIX: mipo
----------------------------------------------
------------MOD CODE -------------------------
SMODS.Atlas({key = 'kazakus', path = 'Kazakus.png', px = 71, py = 95 })
SMODS.Atlas({key = 'unlicensed_apothecary', path = 'Unlicensed_Apothecary.png', px = 71, py = 95 })
SMODS.Atlas({key = 'kabal_chemist', path = 'Kabal_Chemist.png', px = 71, py = 95 })
SMODS.Atlas({key = 'potion_vendor', path = 'Potion_Vendor.png', px = 71, py = 95 })
SMODS.Atlas({key = 'cloakscale_chemist', path = 'Cloakscale_Chemist.png', px = 71, py = 95 })
SMODS.Atlas({key = 'potion1', path = 'potion1.png', px = 71, py = 95 })
SMODS.Atlas({key = 'potion2', path = 'potion2.png', px = 71, py = 95 })
SMODS.Atlas({key = 'potion3', path = 'potion3.png', px = 71, py = 95 })
SMODS.Atlas({key = 'potion4', path = 'potion4.png', px = 71, py = 95 })
SMODS.Atlas({key = 'potion5', path = 'potion5.png', px = 71, py = 95 })
SMODS.Atlas({key = 'potion6', path = 'potion6.png', px = 71, py = 95 })
SMODS.Atlas({key = 'potion7', path = 'potion7.png', px = 71, py = 95 })
SMODS.Atlas({key = 'potion8', path = 'potion8.png', px = 71, py = 95 })
SMODS.Atlas({key = 'potion9', path = 'potion9.png', px = 71, py = 95 })
SMODS.Atlas({key = 'potionpack1', path = 'potionpack1.png', px = 71, py = 95 })
SMODS.Atlas({key = 'potionpack2', path = 'potionpack2.png', px = 71, py = 95 })

local generate_UIBox_ability_table_ref = Card.generate_UIBox_ability_table
function Card:generate_UIBox_ability_table()
    local generate_UIBox_ability_table_val = generate_UIBox_ability_table_ref(self)

    if self.ability and self.ability.set == 'Potion' then
        local main_text = generate_UIBox_ability_table_val.main
        if self.ability.potion1 == true then
        main_text[#main_text + 1] = {
            {
                n = G.UIT.T,
                config = {
                    text = "" .. localize('k_potion1'),
                    colour = G.C.CHIPS,
                    scale = 0.32
                }
            },
        }
        end

        if self.ability.potion2 == true then
            main_text[#main_text + 1] = {
                {
                    n = G.UIT.T,
                    config = {
                        text = "" .. localize('k_potion2'),
                        colour = G.C.MULT,
                        scale = 0.32
                    }
                },
            }
        end

        if self.ability.potion3 == true then
            main_text[#main_text + 1] = {
                {
                    n = G.UIT.T,
                    config = {
                        text = "" .. localize('k_potion3'),
                        colour = G.C.MONEY,
                        scale = 0.32
                    }
                },
            }
        end

        if self.ability.potion4 == true then
            main_text[#main_text + 1] = {
                {
                    n = G.UIT.T,
                    config = {
                        text = "" .. localize('k_potion4'),
                        colour = G.C.GREEN,
                        scale = 0.32
                    }
                },
            }
        end

        if self.ability.potion5 == true then
            main_text[#main_text + 1] = {
                {
                    n = G.UIT.T,
                    config = {
                        text = "" .. localize('k_potion5'),
                        colour = G.C.PURPLE,
                        scale = 0.32
                    }
                },
            }
        end

        if self.ability.potion6 == true then
            main_text[#main_text + 1] = {
                {
                    n = G.UIT.T,
                    config = {
                        text = "" .. localize('k_potion6'),
                        colour = G.C.ORANGE,
                        scale = 0.32
                    }
                },
            }
        end

        if self.ability.potion7 == true then
            main_text[#main_text + 1] = {
                {
                    n = G.UIT.T,
                    config = {
                        text = "" .. localize('k_potion7'),
                        colour = G.C.BLUE,
                        scale = 0.32
                    }
                },
            }
        end

        if self.ability.potion8 == true then
            main_text[#main_text + 1] = {
                {
                    n = G.UIT.T,
                    config = {
                        text = "" .. localize('k_potion8'),
                        colour = G.C.RED,
                        scale = 0.32
                    }
                },
            }
        end

        if self.ability.potion9 == true then
            main_text[#main_text + 1] = {
                {
                    n = G.UIT.T,
                    config = {
                        text = "" .. localize('k_potion9'),
                        colour = G.C.DARK_EDITION,
                        scale = 0.32
                    }
                },
            }
        end
    end

    return generate_UIBox_ability_table_val
end

local alias__G_UIDEF_use_and_sell_buttons = G.UIDEF.use_and_sell_buttons;
function G.UIDEF.use_and_sell_buttons(card)
    local ret = alias__G_UIDEF_use_and_sell_buttons(card)
    
    if card.config.center.key and (card.area == G.pack_cards and G.pack_cards) and card.ability.set == "Potion" then
        return {
            n=G.UIT.ROOT, config = {padding = 0, colour = G.C.CLEAR}, nodes={
                {n=G.UIT.R, config={mid = true}, nodes={
                }},
                {n=G.UIT.R, config={ref_table = card, r = 0.08, padding = 0.1, align = "bm", minw = 0.5*card.T.w - 0.15, minh = 0.8*card.T.h, maxw = 0.7*card.T.w - 0.15, hover = true, shadow = true, colour = G.C.UI.BACKGROUND_INACTIVE, one_press = true, button = 'select_potion', func = 'can_select_potion'}, nodes={
                {n=G.UIT.T, config={text = localize('b_select'),colour = G.C.UI.TEXT_LIGHT, scale = 0.55, shadow = true}}
            }},
        }}
    end
    
    return ret
end

G.FUNCS.can_select_potion = function(e)
    if G.GAME.modifiers.potionpackcanmix == false or (e.config.ref_table.ability.set ~= 'Potion' or (e.config.ref_table.edition and e.config.ref_table.edition.negative) or #G.consumeables.cards < G.consumeables.config.card_limit) then 
        e.config.colour = G.C.GREEN
        e.config.button = 'select_potion'
    else
      e.config.colour = G.C.UI.BACKGROUND_INACTIVE
      e.config.button = nil
    end
end

G.FUNCS.select_potion = function(e)
    local c1 = e.config.ref_table
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.1,
        func = function()
          if G.GAME.modifiers.potionpackcanmix == true then
          cmix0 = e.config.ref_table
          cmix0.area:remove_card(cmix0)
          cmix0:add_to_deck()
          if cmix0.children.price then cmix0.children.price:remove() end
          cmix0.children.price = nil
          if cmix0.children.buy_button then cmix0.children.buy_button:remove() end
          cmix0.children.buy_button = nil
          remove_nils(cmix0.children)
          G.consumeables:emplace(cmix0)
          G.GAME.pack_choices = G.GAME.pack_choices - 1
          else
          c1:remove()
          if c1.children.price then c1.children.price:remove() end
          c1.children.price = nil
          if c1.children.buy_button then c1.children.buy_button:remove() end
          c1.children.buy_button = nil
          remove_nils(c1.children)
          cmix0.ability[c1.ability.name] = true
          card_eval_status_text(cmix0, 'extra', nil, nil, nil, {message = "" .. localize('k_potion_mix'), colour = G.C.MULT})
          G.GAME.pack_choices = G.GAME.pack_choices - 1
          end
          if G.GAME.pack_choices <= 0 then
            G.FUNCS.end_consumeable(nil, delay_fac)
          end
          G.GAME.modifiers.potionpackcanmix = false
          return true
        end
    }))
end

SMODS.ConsumableType{
    key = "Potion",
    primary_colour = HEX("9933FF"),
    secondary_colour = HEX("9933FF"),
    collection_rows = {4,5},
    shop_rate = 0,
    loc_txt = {},
    default = "c_emperor",
}

SMODS.Booster{
    name = "potionpack1",
    key = "potionpack1",
    atlas = 'potionpack1',
    pos = {x = 0, y = 0},
    weight = 0.8,
    cost = 4,
    config = {extra = 4, choose = 2},
    discovered = true,
    loc_txt ={},
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {key = "potion_card", set = "Other"}
        return { vars = {card.ability.choose, card.ability.extra} }
    end,
    create_card = function(self, card)
        return {set = "Potion", area = G.pack_cards, skip_materialize = true, soulable = false, key_append = "pot1"}
    end,
    ease_background_colour = function(self)
        ease_colour(G.C.DYN_UI.MAIN, G.C.FILTER)
        ease_background_colour{new_colour = G.C.PURPLE, special_colour = G.C.DARK_EDITION, contrast = 5}
    end,
    create_UIBox = function(self)
        G.GAME.modifiers.potionpackcanmix = true
        local _size = SMODS.OPENED_BOOSTER.ability.extra
        G.pack_cards = CardArea(
            G.ROOM.T.x + 9 + G.hand.T.x, G.hand.T.y,
            math.max(1,math.min(_size,5))*G.CARD_W*1.1,
            1.05*G.CARD_H, 
            {card_limit = _size, type = 'consumeable', highlight_limit = 1})

        local t = {n=G.UIT.ROOT, config = {align = 'tm', r = 0.15, colour = G.C.CLEAR, padding = 0.15}, nodes={
            {n=G.UIT.R, config={align = "cl", colour = G.C.CLEAR,r=0.15, padding = 0.1, minh = 2, shadow = true}, nodes={
                {n=G.UIT.R, config={align = "cm"}, nodes={
                {n=G.UIT.C, config={align = "cm", padding = 0.1}, nodes={
                    {n=G.UIT.C, config={align = "cm", r=0.2, colour = G.C.CLEAR, shadow = true}, nodes={
                        {n=G.UIT.O, config={object = G.pack_cards}},}}}}}},
            {n=G.UIT.R, config={align = "cm"}, nodes={}},
            {n=G.UIT.R, config={align = "tm"}, nodes={
                {n=G.UIT.C,config={align = "tm", padding = 0.05, minw = 2.4}, nodes={}},
                {n=G.UIT.C,config={align = "tm", padding = 0.05}, nodes={
                    UIBox_dyn_container({
                        {n=G.UIT.C, config={align = "cm", padding = 0.05, minw = 4}, nodes={
                            {n=G.UIT.R,config={align = "bm", padding = 0.05}, nodes={
                                {n=G.UIT.O, config={object = DynaText({string = {localize('k_potion_pack')..' '}, colours = {G.C.WHITE},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.7, maxw = 4, pop_in = 0.5})}}}},
                            {n=G.UIT.R,config={align = "bm", padding = 0.05}, nodes={
                                {n=G.UIT.O, config={object = DynaText({string = {localize('k_choose_mix')..' '}, colours = {G.C.WHITE},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.5, pop_in = 0.7})}},
                                {n=G.UIT.O, config={object = DynaText({string = {{ref_table = G.GAME, ref_value = 'pack_choices'}}, colours = {G.C.WHITE},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.5, pop_in = 0.7})}}}},}}
                    }),}},
                {n=G.UIT.C,config={align = "tm", padding = 0.05, minw = 2.4}, nodes={
                    {n=G.UIT.R,config={minh =0.2}, nodes={}},
                    {n=G.UIT.R,config={align = "tm",padding = 0.2, minh = 1.2, minw = 1.8, r=0.15,colour = G.C.GREY, one_press = true, button = 'skip_booster', hover = true,shadow = true, func = 'can_skip_booster'}, nodes = {
                        {n=G.UIT.T, config={text = localize('b_skip'), scale = 0.5, colour = G.C.WHITE, shadow = true, focus_args = {button = 'y', orientation = 'bm'}, func = 'set_button_pip'}}}}}}}}}}}}
        return t
    end,
}

SMODS.Booster{
    name = "potionpack2",
    key = "potionpack2",
    atlas = 'potionpack2',
    pos = {x = 0, y = 0},
    weight = 0.7,
    cost = 6,
    config = {extra = 5, choose = 3},
    discovered = true,
    loc_txt ={},
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {key = "potion_card", set = "Other"}
        return { vars = {card.ability.choose, card.ability.extra} }
    end,
    create_card = function(self, card)
        return {set = "Potion", area = G.pack_cards, skip_materialize = true, soulable = false, key_append = "pot2"}
    end,
    ease_background_colour = function(self)
        ease_colour(G.C.DYN_UI.MAIN, G.C.FILTER)
        ease_background_colour{new_colour = G.C.PURPLE, special_colour = G.C.DARK_EDITION, contrast = 5}
    end,
    create_UIBox = function(self)
        G.GAME.modifiers.potionpackcanmix = true
        local _size = SMODS.OPENED_BOOSTER.ability.extra
        G.pack_cards = CardArea(
            G.ROOM.T.x + 9 + G.hand.T.x, G.hand.T.y,
            math.max(1,math.min(_size,5))*G.CARD_W*1.1,
            1.05*G.CARD_H, 
            {card_limit = _size, type = 'consumeable', highlight_limit = 1})

        local t = {n=G.UIT.ROOT, config = {align = 'tm', r = 0.15, colour = G.C.CLEAR, padding = 0.15}, nodes={
            {n=G.UIT.R, config={align = "cl", colour = G.C.CLEAR,r=0.15, padding = 0.1, minh = 2, shadow = true}, nodes={
                {n=G.UIT.R, config={align = "cm"}, nodes={
                {n=G.UIT.C, config={align = "cm", padding = 0.1}, nodes={
                    {n=G.UIT.C, config={align = "cm", r=0.2, colour = G.C.CLEAR, shadow = true}, nodes={
                        {n=G.UIT.O, config={object = G.pack_cards}},}}}}}},
            {n=G.UIT.R, config={align = "cm"}, nodes={}},
            {n=G.UIT.R, config={align = "tm"}, nodes={
                {n=G.UIT.C,config={align = "tm", padding = 0.05, minw = 2.4}, nodes={}},
                {n=G.UIT.C,config={align = "tm", padding = 0.05}, nodes={
                    UIBox_dyn_container({
                        {n=G.UIT.C, config={align = "cm", padding = 0.05, minw = 4}, nodes={
                            {n=G.UIT.R,config={align = "bm", padding = 0.05}, nodes={
                                {n=G.UIT.O, config={object = DynaText({string = {localize('k_potion_pack')..' '}, colours = {G.C.WHITE},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.7, maxw = 4, pop_in = 0.5})}}}},
                            {n=G.UIT.R,config={align = "bm", padding = 0.05}, nodes={
                                {n=G.UIT.O, config={object = DynaText({string = {localize('k_choose_mix')..' '}, colours = {G.C.WHITE},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.5, pop_in = 0.7})}},
                                {n=G.UIT.O, config={object = DynaText({string = {{ref_table = G.GAME, ref_value = 'pack_choices'}}, colours = {G.C.WHITE},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.5, pop_in = 0.7})}}}},}}
                    }),}},
                {n=G.UIT.C,config={align = "tm", padding = 0.05, minw = 2.4}, nodes={
                    {n=G.UIT.R,config={minh =0.2}, nodes={}},
                    {n=G.UIT.R,config={align = "tm",padding = 0.2, minh = 1.2, minw = 1.8, r=0.15,colour = G.C.GREY, one_press = true, button = 'skip_booster', hover = true,shadow = true, func = 'can_skip_booster'}, nodes = {
                        {n=G.UIT.T, config={text = localize('b_skip'), scale = 0.5, colour = G.C.WHITE, shadow = true, focus_args = {button = 'y', orientation = 'bm'}, func = 'set_button_pip'}}}}}}}}}}}}
        return t
    end,
}

SMODS.Consumable{
    key = 'potion1',
    name = 'potion1',
    set = 'Potion',
    atlas = 'potion1',
    pos = { x = 0, y = 0 },
    config = {potion1=true, potion2=false, potion3=false, potion4=false, potion5=false, potion6=false, potion7=false, potion8=false, potion9=false},
    cost = 2,
    unlocked = true,
    discovered = true,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {key = "potion_card", set = "Other"}
        return { vars = {} }
    end,
    use = function(self, card, area, copier)
        if card.ability.potion1 == true then
        G.E_MANAGER:add_event(Event({func = function()
            ease_hands_played(1)
        return true end}))
        end
        if card.ability.potion2 == true then
        G.E_MANAGER:add_event(Event({func = function()
            ease_discard(1)
        return true end}))
        end
        if card.ability.potion3 == true then
        G.E_MANAGER:add_event(Event({func = function()
            ease_dollars(8)
        return true end}))
        end
        if card.ability.potion4 == true then
        if G.deck.cards[1] then
            local amount = math.min(#G.deck.cards, 2)
            G.E_MANAGER:add_event(Event({func = function()
            for i = 1, amount do
                draw_card(G.deck, G.hand, i*100/amount, 'up', true)
            end
            return true end}))
        end
        end
        if card.ability.potion5 == true then
        G.E_MANAGER:add_event(Event({func = function()
            create_playing_card({center = pseudorandom_element(G.P_CENTER_POOLS["Enhanced"], pseudoseed('potionenhanced'))}, G.hand, nil, nil, {G.C.SECONDARY_SET.Spectral})
        return true end}))
        end
        if card.ability.potion6 == true then
        G.E_MANAGER:add_event(Event({func = function()
            local leftmost = G.hand.cards[1]
            for i = 1, #G.hand.cards do
                if G.hand.cards[i].T.x < leftmost.T.x then
                    leftmost = G.hand.cards[i]
                end
            end
            G.playing_card = (G.playing_card and G.playing_card + 1) or 1
            local _card = copy_card(leftmost, nil, nil, G.playing_card)
            _card:add_to_deck()
            G.deck.config.card_limit = G.deck.config.card_limit + 1
            table.insert(G.playing_cards, _card)
            G.hand:emplace(_card)
            _card:start_materialize()
        return true end}))
        end
        if card.ability.potion7 == true then
        G.E_MANAGER:add_event(Event({func = function()
            if G.GAME.last_hand_played then
                update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize(G.GAME.last_hand_played, 'poker_hands'),chips = G.GAME.hands[G.GAME.last_hand_played].chips, mult = G.GAME.hands[G.GAME.last_hand_played].mult, level=G.GAME.hands[G.GAME.last_hand_played].level})
                level_up_hand(card, G.GAME.last_hand_played, nil, 1)
                update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
            else
                update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize('High Card', 'poker_hands'),chips = G.GAME.hands['High Card'].chips, mult = G.GAME.hands['High Card'].mult, level=G.GAME.hands['High Card'].level})
                level_up_hand(card, 'High Card', nil, 1)
                update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
            end
        return true end}))
        end
        if card.ability.potion8 == true then
        G.E_MANAGER:add_event(Event({func = function()
            add_tag(Tag('tag_coupon'))
            play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
            play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
        return true end}))
        end
        if card.ability.potion9 == true then
        G.E_MANAGER:add_event(Event({func = function()
            local card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_wheel_of_fortune', 'potionwheel')
            card:set_edition({negative = true}, true)
            card:add_to_deck()
            G.consumeables:emplace(card)
        return true end}))
        end
    end,
    can_use = function(self, card)
        if G.STATE == G.STATES.SELECTING_HAND then
            return true
        else
            return false
        end
    end
}

SMODS.Consumable{
    key = 'potion2',
    name = 'potion2',
    set = 'Potion',
    atlas = 'potion2',
    pos = { x = 0, y = 0 },
    config = {potion1=false, potion2=true, potion3=false, potion4=false, potion5=false, potion6=false, potion7=false, potion8=false, potion9=false},
    cost = 2,
    unlocked = true,
    discovered = true,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {key = "potion_card", set = "Other"}
        return { vars = {} }
    end,
    use = function(self, card, area, copier)
        if card.ability.potion1 == true then
            G.E_MANAGER:add_event(Event({func = function()
                ease_hands_played(1)
            return true end}))
            end
            if card.ability.potion2 == true then
            G.E_MANAGER:add_event(Event({func = function()
                ease_discard(1)
            return true end}))
            end
            if card.ability.potion3 == true then
            G.E_MANAGER:add_event(Event({func = function()
                ease_dollars(8)
            return true end}))
            end
            if card.ability.potion4 == true then
            if G.deck.cards[1] then
                local amount = math.min(#G.deck.cards, 2)
                G.E_MANAGER:add_event(Event({func = function()
                for i = 1, amount do
                    draw_card(G.deck, G.hand, i*100/amount, 'up', true)
                end
                return true end}))
            end
            end
            if card.ability.potion5 == true then
            G.E_MANAGER:add_event(Event({func = function()
                create_playing_card({center = pseudorandom_element(G.P_CENTER_POOLS["Enhanced"], pseudoseed('potionenhanced'))}, G.hand, nil, nil, {G.C.SECONDARY_SET.Spectral})
            return true end}))
            end
            if card.ability.potion6 == true then
            G.E_MANAGER:add_event(Event({func = function()
                local leftmost = G.hand.cards[1]
                for i = 1, #G.hand.cards do
                    if G.hand.cards[i].T.x < leftmost.T.x then
                        leftmost = G.hand.cards[i]
                    end
                end
                G.playing_card = (G.playing_card and G.playing_card + 1) or 1
                local _card = copy_card(leftmost, nil, nil, G.playing_card)
                _card:add_to_deck()
                G.deck.config.card_limit = G.deck.config.card_limit + 1
                table.insert(G.playing_cards, _card)
                G.hand:emplace(_card)
                _card:start_materialize()
            return true end}))
            end
            if card.ability.potion7 == true then
            G.E_MANAGER:add_event(Event({func = function()
                if G.GAME.last_hand_played then
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize(G.GAME.last_hand_played, 'poker_hands'),chips = G.GAME.hands[G.GAME.last_hand_played].chips, mult = G.GAME.hands[G.GAME.last_hand_played].mult, level=G.GAME.hands[G.GAME.last_hand_played].level})
                    level_up_hand(card, G.GAME.last_hand_played, nil, 1)
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
                else
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize('High Card', 'poker_hands'),chips = G.GAME.hands['High Card'].chips, mult = G.GAME.hands['High Card'].mult, level=G.GAME.hands['High Card'].level})
                    level_up_hand(card, 'High Card', nil, 1)
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
                end
            return true end}))
            end
            if card.ability.potion8 == true then
            G.E_MANAGER:add_event(Event({func = function()
                add_tag(Tag('tag_coupon'))
                play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
                play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
            return true end}))
            end
            if card.ability.potion9 == true then
            G.E_MANAGER:add_event(Event({func = function()
                local card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_wheel_of_fortune', 'potionwheel')
                card:set_edition({negative = true}, true)
                card:add_to_deck()
                G.consumeables:emplace(card)
            return true end}))
            end
    end,
    can_use = function(self, card)
        if G.STATE == G.STATES.SELECTING_HAND then
            return true
        else
            return false
        end
    end
}

SMODS.Consumable{
    key = 'potion3',
    name = 'potion3',
    set = 'Potion',
    atlas = 'potion3',
    pos = { x = 0, y = 0 },
    config = {potion1=false, potion2=false, potion3=true, potion4=false, potion5=false, potion6=false, potion7=false, potion8=false, potion9=false},
    cost = 2,
    unlocked = true,
    discovered = true,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {key = "potion_card", set = "Other"}
        return { vars = {} }
    end,
    use = function(self, card, area, copier)
        if card.ability.potion1 == true then
            G.E_MANAGER:add_event(Event({func = function()
                ease_hands_played(1)
            return true end}))
            end
            if card.ability.potion2 == true then
            G.E_MANAGER:add_event(Event({func = function()
                ease_discard(1)
            return true end}))
            end
            if card.ability.potion3 == true then
            G.E_MANAGER:add_event(Event({func = function()
                ease_dollars(8)
            return true end}))
            end
            if card.ability.potion4 == true then
            if G.deck.cards[1] then
                local amount = math.min(#G.deck.cards, 2)
                G.E_MANAGER:add_event(Event({func = function()
                for i = 1, amount do
                    draw_card(G.deck, G.hand, i*100/amount, 'up', true)
                end
                return true end}))
            end
            end
            if card.ability.potion5 == true then
            G.E_MANAGER:add_event(Event({func = function()
                create_playing_card({center = pseudorandom_element(G.P_CENTER_POOLS["Enhanced"], pseudoseed('potionenhanced'))}, G.hand, nil, nil, {G.C.SECONDARY_SET.Spectral})
            return true end}))
            end
            if card.ability.potion6 == true then
            G.E_MANAGER:add_event(Event({func = function()
                local leftmost = G.hand.cards[1]
                for i = 1, #G.hand.cards do
                    if G.hand.cards[i].T.x < leftmost.T.x then
                        leftmost = G.hand.cards[i]
                    end
                end
                G.playing_card = (G.playing_card and G.playing_card + 1) or 1
                local _card = copy_card(leftmost, nil, nil, G.playing_card)
                _card:add_to_deck()
                G.deck.config.card_limit = G.deck.config.card_limit + 1
                table.insert(G.playing_cards, _card)
                G.hand:emplace(_card)
                _card:start_materialize()
            return true end}))
            end
            if card.ability.potion7 == true then
            G.E_MANAGER:add_event(Event({func = function()
                if G.GAME.last_hand_played then
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize(G.GAME.last_hand_played, 'poker_hands'),chips = G.GAME.hands[G.GAME.last_hand_played].chips, mult = G.GAME.hands[G.GAME.last_hand_played].mult, level=G.GAME.hands[G.GAME.last_hand_played].level})
                    level_up_hand(card, G.GAME.last_hand_played, nil, 1)
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
                else
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize('High Card', 'poker_hands'),chips = G.GAME.hands['High Card'].chips, mult = G.GAME.hands['High Card'].mult, level=G.GAME.hands['High Card'].level})
                    level_up_hand(card, 'High Card', nil, 1)
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
                end
            return true end}))
            end
            if card.ability.potion8 == true then
            G.E_MANAGER:add_event(Event({func = function()
                add_tag(Tag('tag_coupon'))
                play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
                play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
            return true end}))
            end
            if card.ability.potion9 == true then
            G.E_MANAGER:add_event(Event({func = function()
                local card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_wheel_of_fortune', 'potionwheel')
                card:set_edition({negative = true}, true)
                card:add_to_deck()
                G.consumeables:emplace(card)
            return true end}))
            end
    end,
    can_use = function(self, card)
        if G.STATE == G.STATES.SELECTING_HAND then
            return true
        else
            return false
        end
    end
}

SMODS.Consumable{
    key = 'potion4',
    name = 'potion4',
    set = 'Potion',
    atlas = 'potion4',
    pos = { x = 0, y = 0 },
    config = {potion1=false, potion2=false, potion3=false, potion4=true, potion5=false, potion6=false, potion7=false, potion8=false, potion9=false},
    cost = 2,
    unlocked = true,
    discovered = true,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {key = "potion_card", set = "Other"}
        return { vars = {} }
    end,
    use = function(self, card, area, copier)
        if card.ability.potion1 == true then
            G.E_MANAGER:add_event(Event({func = function()
                ease_hands_played(1)
            return true end}))
            end
            if card.ability.potion2 == true then
            G.E_MANAGER:add_event(Event({func = function()
                ease_discard(1)
            return true end}))
            end
            if card.ability.potion3 == true then
            G.E_MANAGER:add_event(Event({func = function()
                ease_dollars(8)
            return true end}))
            end
            if card.ability.potion4 == true then
            if G.deck.cards[1] then
                local amount = math.min(#G.deck.cards, 2)
                G.E_MANAGER:add_event(Event({func = function()
                for i = 1, amount do
                    draw_card(G.deck, G.hand, i*100/amount, 'up', true)
                end
                return true end}))
            end
            end
            if card.ability.potion5 == true then
            G.E_MANAGER:add_event(Event({func = function()
                create_playing_card({center = pseudorandom_element(G.P_CENTER_POOLS["Enhanced"], pseudoseed('potionenhanced'))}, G.hand, nil, nil, {G.C.SECONDARY_SET.Spectral})
            return true end}))
            end
            if card.ability.potion6 == true then
            G.E_MANAGER:add_event(Event({func = function()
                local leftmost = G.hand.cards[1]
                for i = 1, #G.hand.cards do
                    if G.hand.cards[i].T.x < leftmost.T.x then
                        leftmost = G.hand.cards[i]
                    end
                end
                G.playing_card = (G.playing_card and G.playing_card + 1) or 1
                local _card = copy_card(leftmost, nil, nil, G.playing_card)
                _card:add_to_deck()
                G.deck.config.card_limit = G.deck.config.card_limit + 1
                table.insert(G.playing_cards, _card)
                G.hand:emplace(_card)
                _card:start_materialize()
            return true end}))
            end
            if card.ability.potion7 == true then
            G.E_MANAGER:add_event(Event({func = function()
                if G.GAME.last_hand_played then
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize(G.GAME.last_hand_played, 'poker_hands'),chips = G.GAME.hands[G.GAME.last_hand_played].chips, mult = G.GAME.hands[G.GAME.last_hand_played].mult, level=G.GAME.hands[G.GAME.last_hand_played].level})
                    level_up_hand(card, G.GAME.last_hand_played, nil, 1)
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
                else
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize('High Card', 'poker_hands'),chips = G.GAME.hands['High Card'].chips, mult = G.GAME.hands['High Card'].mult, level=G.GAME.hands['High Card'].level})
                    level_up_hand(card, 'High Card', nil, 1)
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
                end
            return true end}))
            end
            if card.ability.potion8 == true then
            G.E_MANAGER:add_event(Event({func = function()
                add_tag(Tag('tag_coupon'))
                play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
                play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
            return true end}))
            end
            if card.ability.potion9 == true then
            G.E_MANAGER:add_event(Event({func = function()
                local card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_wheel_of_fortune', 'potionwheel')
                card:set_edition({negative = true}, true)
                card:add_to_deck()
                G.consumeables:emplace(card)
            return true end}))
            end
    end,
    can_use = function(self, card)
        if G.STATE == G.STATES.SELECTING_HAND then
            return true
        else
            return false
        end
    end
}

SMODS.Consumable{
    key = 'potion5',
    name = 'potion5',
    set = 'Potion',
    atlas = 'potion5',
    pos = { x = 0, y = 0 },
    config = {potion1=false, potion2=false, potion3=false, potion4=false, potion5=true, potion6=false, potion7=false, potion8=false, potion9=false},
    cost = 2,
    unlocked = true,
    discovered = true,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {key = "potion_card", set = "Other"}
        return { vars = {} }
    end,
    use = function(self, card, area, copier)
        if card.ability.potion1 == true then
            G.E_MANAGER:add_event(Event({func = function()
                ease_hands_played(1)
            return true end}))
            end
            if card.ability.potion2 == true then
            G.E_MANAGER:add_event(Event({func = function()
                ease_discard(1)
            return true end}))
            end
            if card.ability.potion3 == true then
            G.E_MANAGER:add_event(Event({func = function()
                ease_dollars(8)
            return true end}))
            end
            if card.ability.potion4 == true then
            if G.deck.cards[1] then
                local amount = math.min(#G.deck.cards, 2)
                G.E_MANAGER:add_event(Event({func = function()
                for i = 1, amount do
                    draw_card(G.deck, G.hand, i*100/amount, 'up', true)
                end
                return true end}))
            end
            end
            if card.ability.potion5 == true then
            G.E_MANAGER:add_event(Event({func = function()
                create_playing_card({center = pseudorandom_element(G.P_CENTER_POOLS["Enhanced"], pseudoseed('potionenhanced'))}, G.hand, nil, nil, {G.C.SECONDARY_SET.Spectral})
            return true end}))
            end
            if card.ability.potion6 == true then
            G.E_MANAGER:add_event(Event({func = function()
                local leftmost = G.hand.cards[1]
                for i = 1, #G.hand.cards do
                    if G.hand.cards[i].T.x < leftmost.T.x then
                        leftmost = G.hand.cards[i]
                    end
                end
                G.playing_card = (G.playing_card and G.playing_card + 1) or 1
                local _card = copy_card(leftmost, nil, nil, G.playing_card)
                _card:add_to_deck()
                G.deck.config.card_limit = G.deck.config.card_limit + 1
                table.insert(G.playing_cards, _card)
                G.hand:emplace(_card)
                _card:start_materialize()
            return true end}))
            end
            if card.ability.potion7 == true then
            G.E_MANAGER:add_event(Event({func = function()
                if G.GAME.last_hand_played then
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize(G.GAME.last_hand_played, 'poker_hands'),chips = G.GAME.hands[G.GAME.last_hand_played].chips, mult = G.GAME.hands[G.GAME.last_hand_played].mult, level=G.GAME.hands[G.GAME.last_hand_played].level})
                    level_up_hand(card, G.GAME.last_hand_played, nil, 1)
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
                else
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize('High Card', 'poker_hands'),chips = G.GAME.hands['High Card'].chips, mult = G.GAME.hands['High Card'].mult, level=G.GAME.hands['High Card'].level})
                    level_up_hand(card, 'High Card', nil, 1)
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
                end
            return true end}))
            end
            if card.ability.potion8 == true then
            G.E_MANAGER:add_event(Event({func = function()
                add_tag(Tag('tag_coupon'))
                play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
                play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
            return true end}))
            end
            if card.ability.potion9 == true then
            G.E_MANAGER:add_event(Event({func = function()
                local card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_wheel_of_fortune', 'potionwheel')
                card:set_edition({negative = true}, true)
                card:add_to_deck()
                G.consumeables:emplace(card)
            return true end}))
            end
    end,
    can_use = function(self, card)
        if G.STATE == G.STATES.SELECTING_HAND then
            return true
        else
            return false
        end
    end
}

SMODS.Consumable{
    key = 'potion6',
    name = 'potion6',
    set = 'Potion',
    atlas = 'potion6',
    pos = { x = 0, y = 0 },
    config = {potion1=false, potion2=false, potion3=false, potion4=false, potion5=false, potion6=true, potion7=false, potion8=false, potion9=false},
    cost = 2,
    unlocked = true,
    discovered = true,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {key = "potion_card", set = "Other"}
        return { vars = {} }
    end,
    use = function(self, card, area, copier)
        if card.ability.potion1 == true then
            G.E_MANAGER:add_event(Event({func = function()
                ease_hands_played(1)
            return true end}))
            end
            if card.ability.potion2 == true then
            G.E_MANAGER:add_event(Event({func = function()
                ease_discard(1)
            return true end}))
            end
            if card.ability.potion3 == true then
            G.E_MANAGER:add_event(Event({func = function()
                ease_dollars(8)
            return true end}))
            end
            if card.ability.potion4 == true then
            if G.deck.cards[1] then
                local amount = math.min(#G.deck.cards, 2)
                G.E_MANAGER:add_event(Event({func = function()
                for i = 1, amount do
                    draw_card(G.deck, G.hand, i*100/amount, 'up', true)
                end
                return true end}))
            end
            end
            if card.ability.potion5 == true then
            G.E_MANAGER:add_event(Event({func = function()
                create_playing_card({center = pseudorandom_element(G.P_CENTER_POOLS["Enhanced"], pseudoseed('potionenhanced'))}, G.hand, nil, nil, {G.C.SECONDARY_SET.Spectral})
            return true end}))
            end
            if card.ability.potion6 == true then
            G.E_MANAGER:add_event(Event({func = function()
                local leftmost = G.hand.cards[1]
                for i = 1, #G.hand.cards do
                    if G.hand.cards[i].T.x < leftmost.T.x then
                        leftmost = G.hand.cards[i]
                    end
                end
                G.playing_card = (G.playing_card and G.playing_card + 1) or 1
                local _card = copy_card(leftmost, nil, nil, G.playing_card)
                _card:add_to_deck()
                G.deck.config.card_limit = G.deck.config.card_limit + 1
                table.insert(G.playing_cards, _card)
                G.hand:emplace(_card)
                _card:start_materialize()
            return true end}))
            end
            if card.ability.potion7 == true then
            G.E_MANAGER:add_event(Event({func = function()
                if G.GAME.last_hand_played then
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize(G.GAME.last_hand_played, 'poker_hands'),chips = G.GAME.hands[G.GAME.last_hand_played].chips, mult = G.GAME.hands[G.GAME.last_hand_played].mult, level=G.GAME.hands[G.GAME.last_hand_played].level})
                    level_up_hand(card, G.GAME.last_hand_played, nil, 1)
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
                else
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize('High Card', 'poker_hands'),chips = G.GAME.hands['High Card'].chips, mult = G.GAME.hands['High Card'].mult, level=G.GAME.hands['High Card'].level})
                    level_up_hand(card, 'High Card', nil, 1)
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
                end
            return true end}))
            end
            if card.ability.potion8 == true then
            G.E_MANAGER:add_event(Event({func = function()
                add_tag(Tag('tag_coupon'))
                play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
                play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
            return true end}))
            end
            if card.ability.potion9 == true then
            G.E_MANAGER:add_event(Event({func = function()
                local card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_wheel_of_fortune', 'potionwheel')
                card:set_edition({negative = true}, true)
                card:add_to_deck()
                G.consumeables:emplace(card)
            return true end}))
            end
    end,
    can_use = function(self, card)
        if G.STATE == G.STATES.SELECTING_HAND then
            return true
        else
            return false
        end
    end
}

SMODS.Consumable{
    key = 'potion7',
    name = 'potion7',
    set = 'Potion',
    atlas = 'potion7',
    pos = { x = 0, y = 0 },
    config = {potion1=false, potion2=false, potion3=false, potion4=false, potion5=false, potion6=false, potion7=true, potion8=false, potion9=false},
    cost = 2,
    unlocked = true,
    discovered = true,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {key = "potion_card", set = "Other"}
        return { vars = {} }
    end,
    use = function(self, card, area, copier)
        if card.ability.potion1 == true then
            G.E_MANAGER:add_event(Event({func = function()
                ease_hands_played(1)
            return true end}))
            end
            if card.ability.potion2 == true then
            G.E_MANAGER:add_event(Event({func = function()
                ease_discard(1)
            return true end}))
            end
            if card.ability.potion3 == true then
            G.E_MANAGER:add_event(Event({func = function()
                ease_dollars(8)
            return true end}))
            end
            if card.ability.potion4 == true then
            if G.deck.cards[1] then
                local amount = math.min(#G.deck.cards, 2)
                G.E_MANAGER:add_event(Event({func = function()
                for i = 1, amount do
                    draw_card(G.deck, G.hand, i*100/amount, 'up', true)
                end
                return true end}))
            end
            end
            if card.ability.potion5 == true then
            G.E_MANAGER:add_event(Event({func = function()
                create_playing_card({center = pseudorandom_element(G.P_CENTER_POOLS["Enhanced"], pseudoseed('potionenhanced'))}, G.hand, nil, nil, {G.C.SECONDARY_SET.Spectral})
            return true end}))
            end
            if card.ability.potion6 == true then
            G.E_MANAGER:add_event(Event({func = function()
                local leftmost = G.hand.cards[1]
                for i = 1, #G.hand.cards do
                    if G.hand.cards[i].T.x < leftmost.T.x then
                        leftmost = G.hand.cards[i]
                    end
                end
                G.playing_card = (G.playing_card and G.playing_card + 1) or 1
                local _card = copy_card(leftmost, nil, nil, G.playing_card)
                _card:add_to_deck()
                G.deck.config.card_limit = G.deck.config.card_limit + 1
                table.insert(G.playing_cards, _card)
                G.hand:emplace(_card)
                _card:start_materialize()
            return true end}))
            end
            if card.ability.potion7 == true then
            G.E_MANAGER:add_event(Event({func = function()
                if G.GAME.last_hand_played then
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize(G.GAME.last_hand_played, 'poker_hands'),chips = G.GAME.hands[G.GAME.last_hand_played].chips, mult = G.GAME.hands[G.GAME.last_hand_played].mult, level=G.GAME.hands[G.GAME.last_hand_played].level})
                    level_up_hand(card, G.GAME.last_hand_played, nil, 1)
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
                else
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize('High Card', 'poker_hands'),chips = G.GAME.hands['High Card'].chips, mult = G.GAME.hands['High Card'].mult, level=G.GAME.hands['High Card'].level})
                    level_up_hand(card, 'High Card', nil, 1)
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
                end
            return true end}))
            end
            if card.ability.potion8 == true then
            G.E_MANAGER:add_event(Event({func = function()
                add_tag(Tag('tag_coupon'))
                play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
                play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
            return true end}))
            end
            if card.ability.potion9 == true then
            G.E_MANAGER:add_event(Event({func = function()
                local card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_wheel_of_fortune', 'potionwheel')
                card:set_edition({negative = true}, true)
                card:add_to_deck()
                G.consumeables:emplace(card)
            return true end}))
            end
    end,
    can_use = function(self, card)
        if G.STATE == G.STATES.SELECTING_HAND then
            return true
        else
            return false
        end
    end
}

SMODS.Consumable{
    key = 'potion8',
    name = 'potion8',
    set = 'Potion',
    atlas = 'potion8',
    pos = { x = 0, y = 0 },
    config = {potion1=false, potion2=false, potion3=false, potion4=false, potion5=false, potion6=false, potion7=false, potion8=true, potion9=false},
    cost = 2,
    unlocked = true,
    discovered = true,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {key = "potion_card", set = "Other"}
        info_queue[#info_queue+1] = {key = 'tag_coupon', set = 'Tag'}
        return { vars = {} }
    end,
    use = function(self, card, area, copier)
        if card.ability.potion1 == true then
            G.E_MANAGER:add_event(Event({func = function()
                ease_hands_played(1)
            return true end}))
            end
            if card.ability.potion2 == true then
            G.E_MANAGER:add_event(Event({func = function()
                ease_discard(1)
            return true end}))
            end
            if card.ability.potion3 == true then
            G.E_MANAGER:add_event(Event({func = function()
                ease_dollars(8)
            return true end}))
            end
            if card.ability.potion4 == true then
            if G.deck.cards[1] then
                local amount = math.min(#G.deck.cards, 2)
                G.E_MANAGER:add_event(Event({func = function()
                for i = 1, amount do
                    draw_card(G.deck, G.hand, i*100/amount, 'up', true)
                end
                return true end}))
            end
            end
            if card.ability.potion5 == true then
            G.E_MANAGER:add_event(Event({func = function()
                create_playing_card({center = pseudorandom_element(G.P_CENTER_POOLS["Enhanced"], pseudoseed('potionenhanced'))}, G.hand, nil, nil, {G.C.SECONDARY_SET.Spectral})
            return true end}))
            end
            if card.ability.potion6 == true then
            G.E_MANAGER:add_event(Event({func = function()
                local leftmost = G.hand.cards[1]
                for i = 1, #G.hand.cards do
                    if G.hand.cards[i].T.x < leftmost.T.x then
                        leftmost = G.hand.cards[i]
                    end
                end
                G.playing_card = (G.playing_card and G.playing_card + 1) or 1
                local _card = copy_card(leftmost, nil, nil, G.playing_card)
                _card:add_to_deck()
                G.deck.config.card_limit = G.deck.config.card_limit + 1
                table.insert(G.playing_cards, _card)
                G.hand:emplace(_card)
                _card:start_materialize()
            return true end}))
            end
            if card.ability.potion7 == true then
            G.E_MANAGER:add_event(Event({func = function()
                if G.GAME.last_hand_played then
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize(G.GAME.last_hand_played, 'poker_hands'),chips = G.GAME.hands[G.GAME.last_hand_played].chips, mult = G.GAME.hands[G.GAME.last_hand_played].mult, level=G.GAME.hands[G.GAME.last_hand_played].level})
                    level_up_hand(card, G.GAME.last_hand_played, nil, 1)
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
                else
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize('High Card', 'poker_hands'),chips = G.GAME.hands['High Card'].chips, mult = G.GAME.hands['High Card'].mult, level=G.GAME.hands['High Card'].level})
                    level_up_hand(card, 'High Card', nil, 1)
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
                end
            return true end}))
            end
            if card.ability.potion8 == true then
            G.E_MANAGER:add_event(Event({func = function()
                add_tag(Tag('tag_coupon'))
                play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
                play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
            return true end}))
            end
            if card.ability.potion9 == true then
            G.E_MANAGER:add_event(Event({func = function()
                local card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_wheel_of_fortune', 'potionwheel')
                card:set_edition({negative = true}, true)
                card:add_to_deck()
                G.consumeables:emplace(card)
            return true end}))
            end
    end,
    can_use = function(self, card)
        if G.STATE == G.STATES.SELECTING_HAND then
            return true
        else
            return false
        end
    end
}

SMODS.Consumable{
    key = 'potion9',
    name = 'potion9',
    set = 'Potion',
    atlas = 'potion9',
    pos = { x = 0, y = 0 },
    config = {potion1=false, potion2=false, potion3=false, potion4=false, potion5=false, potion6=false, potion7=false, potion8=false, potion9=true},
    cost = 2,
    unlocked = true,
    discovered = true,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {key = "potion_card", set = "Other"}
        if not card.edition or (card.edition and not card.edition.negative) then
        info_queue[#info_queue+1] = {key = 'e_negative_consumable', set = 'Edition', config = {extra = 1}}
        end
        return { vars = {} }
    end,
    use = function(self, card, area, copier)
        if card.ability.potion1 == true then
            G.E_MANAGER:add_event(Event({func = function()
                ease_hands_played(1)
            return true end}))
            end
            if card.ability.potion2 == true then
            G.E_MANAGER:add_event(Event({func = function()
                ease_discard(1)
            return true end}))
            end
            if card.ability.potion3 == true then
            G.E_MANAGER:add_event(Event({func = function()
                ease_dollars(8)
            return true end}))
            end
            if card.ability.potion4 == true then
            if G.deck.cards[1] then
                local amount = math.min(#G.deck.cards, 2)
                G.E_MANAGER:add_event(Event({func = function()
                for i = 1, amount do
                    draw_card(G.deck, G.hand, i*100/amount, 'up', true)
                end
                return true end}))
            end
            end
            if card.ability.potion5 == true then
            G.E_MANAGER:add_event(Event({func = function()
                create_playing_card({center = pseudorandom_element(G.P_CENTER_POOLS["Enhanced"], pseudoseed('potionenhanced'))}, G.hand, nil, nil, {G.C.SECONDARY_SET.Spectral})
            return true end}))
            end
            if card.ability.potion6 == true then
            G.E_MANAGER:add_event(Event({func = function()
                local leftmost = G.hand.cards[1]
                for i = 1, #G.hand.cards do
                    if G.hand.cards[i].T.x < leftmost.T.x then
                        leftmost = G.hand.cards[i]
                    end
                end
                G.playing_card = (G.playing_card and G.playing_card + 1) or 1
                local _card = copy_card(leftmost, nil, nil, G.playing_card)
                _card:add_to_deck()
                G.deck.config.card_limit = G.deck.config.card_limit + 1
                table.insert(G.playing_cards, _card)
                G.hand:emplace(_card)
                _card:start_materialize()
            return true end}))
            end
            if card.ability.potion7 == true then
            G.E_MANAGER:add_event(Event({func = function()
                if G.GAME.last_hand_played then
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize(G.GAME.last_hand_played, 'poker_hands'),chips = G.GAME.hands[G.GAME.last_hand_played].chips, mult = G.GAME.hands[G.GAME.last_hand_played].mult, level=G.GAME.hands[G.GAME.last_hand_played].level})
                    level_up_hand(card, G.GAME.last_hand_played, nil, 1)
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
                else
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize('High Card', 'poker_hands'),chips = G.GAME.hands['High Card'].chips, mult = G.GAME.hands['High Card'].mult, level=G.GAME.hands['High Card'].level})
                    level_up_hand(card, 'High Card', nil, 1)
                    update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
                end
            return true end}))
            end
            if card.ability.potion8 == true then
            G.E_MANAGER:add_event(Event({func = function()
                add_tag(Tag('tag_coupon'))
                play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
                play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
            return true end}))
            end
            if card.ability.potion9 == true then
            G.E_MANAGER:add_event(Event({func = function()
                local card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, 'c_wheel_of_fortune', 'potionwheel')
                card:set_edition({negative = true}, true)
                card:add_to_deck()
                G.consumeables:emplace(card)
            return true end}))
            end
    end,
    can_use = function(self, card)
        if G.STATE == G.STATES.SELECTING_HAND then
            return true
        else
            return false
        end
    end
}

SMODS.Joker{
    key = 'kazakus',
    rarity = 4,
    cost = 20,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 0, y = 0 },
    soul_pos = { x = 1, y = 0 },
    loc_txt ={},
    atlas = 'kazakus',
    config = {},
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {key = "potion_card", set = "Other"}
        return { vars = {} }
    end,
    calculate = function(self, card, context)
        if context.setting_blind then
            local encounteredNames = {}
            local cancreatepotion = true
            for k, v in pairs(G.jokers.cards) do
                if encounteredNames[v.ability.name] then
                    cancreatepotion = false
                else
                    encounteredNames[v.ability.name] = true
                end
            end
            if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit and cancreatepotion == true then
                local card = create_card('Potion', G.consumeables, nil, nil, nil, nil, nil, 'kazakus')
                card.ability.potion1 = true
                card.ability.potion2 = true
                card.ability.potion3 = true
                card.ability.potion4 = true
                card.ability.potion5 = true
                card.ability.potion6 = true
                card.ability.potion7 = true
                card.ability.potion8 = true
                card.ability.potion9 = true
                card:add_to_deck()
                G.consumeables:emplace(card)
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_plus_potion'), colour = G.C.PURPLE}) 
            end
        end
    end
}

SMODS.Joker{
    name = 'unlicensed_apothecary',
    key = 'unlicensed_apothecary',
    rarity = 3,
    cost = 8,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 0, y = 0 },
    loc_txt ={},
    atlas = 'unlicensed_apothecary',
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {key = "potion_card", set = "Other"}
        return { vars = {} }
    end,
    calculate = function(self, card, context)
        if G.GAME.modifiers.potionpackcanmix == true and context.skipping_booster and not context.blueprint then
            G.E_MANAGER:add_event(Event({func = function()
                ease_dollars(G.GAME.pack_choices)
            return true end}))
            if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                local card = create_card('Potion', G.consumeables, nil, nil, nil, nil, G.pack_cards.cards[1].config.center.key, 'unlicensed')
                for i=1, SMODS.OPENED_BOOSTER.ability.extra do
                    card.ability[G.pack_cards.cards[i].ability.name] = true
                end
                card:add_to_deck()
                G.consumeables:emplace(card)
                card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_plus_potion'), colour = G.C.PURPLE}) 
            end
        end
    end
}

SMODS.Joker{
    key = 'kabal_chemist',
    rarity = 2,
    cost = 5,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 0, y = 0 },
    loc_txt ={},
    atlas = 'kabal_chemist',
    config = { extra = {inxmult = 1.2, nixmult = 3} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {key = "potion_card", set = "Other"}
        return { vars = {card.ability.extra.inxmult, card.ability.extra.nixmult} }
    end,
    calculate = function(self, card, context)
        if context.joker_main and context.cardarea == G.jokers then
            local nixmult = false
            for k, v in pairs(G.GAME.consumeable_usage) do
                if v.set == 'Potion' then
                nixmult = true
                end
            end
            if nixmult == true then
            return {
                message = localize { type = 'variable', key = 'a_xmult', vars = { card.ability.extra.nixmult } },
                Xmult_mod = card.ability.extra.nixmult
            }
            else
            return {
                message = localize { type = 'variable', key = 'a_xmult', vars = { card.ability.extra.inxmult } },
                 Xmult_mod = card.ability.extra.inxmult
            }
            end
        end
    end
}

SMODS.Joker{
    key = 'potion_vendor',
    rarity = 1,
    cost = 3,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 0, y = 0 },
    loc_txt ={},
    atlas = 'potion_vendor',
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {key = "potion_card", set = "Other"}
        return { vars = {} }
    end,
    calculate = function(self, card, context)
        if context.skip_blind then
            if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                local card = create_card('Potion', G.consumeables, nil, nil, nil, nil, nil, 'povendor')
                card:add_to_deck()
                G.consumeables:emplace(card)
                card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_plus_potion'), colour = G.C.PURPLE})
            end
        end
    end
}

SMODS.Joker{
    key = 'cloakscale_chemist',
    rarity = 1,
    cost = 4,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = { x = 0, y = 0 },
    loc_txt ={},
    atlas = 'cloakscale_chemist',
    config = { extra = {mult = 1} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {key = "potion_card", set = "Other"}
        return { vars = {card.ability.extra.mult} }
    end,
    calculate = function(self, card, context)
        if not context.blueprint and context.using_consumeable and context.consumeable.ability.set == 'Potion' and not context.consumeable.beginning_end then
            card.ability.extra.mult = card.ability.extra.mult * 2
            card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_cloakscale_chemist'), colour = G.C.PURPLE})
        end
        if context.joker_main and context.cardarea == G.jokers then
            return {
                message = localize { type = 'variable', key = 'a_mult', vars = { card.ability.extra.mult } },
                mult_mod = card.ability.extra.mult
            }
        end
    end
}
----------------------------------------------
------------MOD CODE END----------------------