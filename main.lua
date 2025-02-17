--- STEAMODDED HEADER
--- MOD_NAME: Join The Crowd
--- MOD_ID: JoinTheCrowd
--- VERSION: 1.0.0
--- BADGE_COLOUR: 4a3491
--- MOD_AUTHOR: [DynaLeet]
--- MOD_DESCRIPTION: Adds 22 Jokers, half of which being mainly unbalanced Legendaries based off of my main OCs. All art and coding has been done by me (which kind of explains why the art looks bad) with quite a lot of coding help from the Balatro Discord. thanks, lads!
--- PREFIX: jtc
----------------------------------------------
------------MOD CODE -------------------------

SMODS.Sound({
    pitch = 1,
    vol = 1,
    key = 'doubletime1',
    path = 'doubletime1.ogg'
})

SMODS.Atlas{
      key = 'X360',
      path = 'X360.png',
      px = 71,
      py = 95
}

    SMODS.Joker{
        key = 'x360',
        loc_txt = {
            name = 'Xbox 360',
            text = {
                '{C:green}+#1#{} Chips.'
            }
        },
        atlas = 'X360',
        rarity = 2,
        cost = 6,
        order = 1,
        unlocked = true,
        discovered = false,
        blueprint_compat = true,
        brainstorm_compat = true,
        eternal_compat = false,
        perishable_compat = true,
        pos = {x = 0, y = 0},
        config = { 
            extra = {
                chips = 360, 
            }
        },
        loc_vars = function(self, info_queue, card)
            return { vars = {card.ability.extra.chips} }
        end,
        calculate = function(self,card,context)
            if context.joker_main then
                return {
                    card = card,
                    chip_mod = card.ability.extra.chips,
                    message = '+' .. card.ability.extra.chips,
                    color = G.C.CHIPS 
                }
            end
        end
}



SMODS.Atlas{
    key = 'janmusi',
    path = 'janmusi.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'jm',
    loc_txt = {
        name = 'Jan Musi',
        text = {
            '{C:chips}+#1#{} Chips.',
            'increases by 1 for every',
            'new word added to {C:attention}Toki Pona.{}',
            '(currently {C:chips}181.{})'
        }
    },
    atlas = 'janmusi',
    rarity = 2,
    cost = 6,
    order = 2,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            chips = 181
    }
    },
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.chips}}
    end,
    calculate = function(self,card,context)
        if context.joker_main then
            return {
                card = card,
                chip_mod = card.ability.extra.chips,
                message = '+' .. card.ability.extra.chips,
                color = G.C.CHIPS 
            }
        end
    end
}

SMODS.Atlas{
    key = 'jollakai',
    path = 'jollakai.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'jollk',
    loc_txt = {
        name = "Jolla'kai",
        text = {
            '{C:mult}+#1#{} Mult.',
            'increases by 1 for every',
            'new word added to {C:attention}Utradunic.{}',
            '(currently {C:mult}53.{})'
        }
    },
    atlas = 'jollakai',
    rarity = 3,
    cost = 8,
    order = 3,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            mult = 53
    }
    },
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.mult}}
    end,
    calculate = function(self,card,context)
        if context.joker_main then
            return {
                card = card,
                mult_mod = card.ability.extra.mult,
                message = '+' .. card.ability.extra.mult,
                color = G.C.MULT
            }
        end
    end
}

    SMODS.Atlas{
        key = 'HereticalJoker',
        path = 'HereticalJoker.png',
        px = 71,
        py = 95
    }
    
    SMODS.Joker{
        key = 'heresy',
        loc_txt = {
            name = "Heretical Joker",
            text = {
                'Played cards with {C:hearts}Heart{} suit',
                'give {C:chips}+#1#{} Chips when scored.'

            }
        },
        atlas = 'HereticalJoker',
        rarity = 1,
        cost = 5,
        order = 5,
        unlocked = true,
        discovered = false,
        blueprint_compat = true,
        brainstorm_compat = true,
        eternal_compat = true,
        perishable_compat = true,
        pos = {x = 0, y = 0},
        config = { 
            extra = {
                chips = 30
        }
        },
        loc_vars = function(self,info_queue,center)
            return{vars = {center.ability.extra.chips}}
        end,
        calculate = function(self,card,context)
            if context.individual then
                if context.cardarea == G.play then
                    if context.other_card:is_suit("Hearts") then
                    return {
                        chips = card.ability.extra.chips,
                        color = G.C.CHIPS,
                        card = card,
                    }
                end
            end
        end
    end
}

SMODS.Atlas{
    key = 'ViolentJoker',
    path = 'ViolentJoker.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'violence',
    loc_txt = {
        name = "Violent Joker",
        text = {
            'Played cards with {C:spades}Spade{} suit',
            'give {C:chips}+#1#{} Chips when scored.'

        }
    },
    atlas = 'ViolentJoker',
    rarity = 1,
    cost = 5,
    order = 6,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            chips = 30
    }
    },
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.chips}}
    end,
    calculate = function(self,card,context)
        if context.individual then
            if context.cardarea == G.play then
                if context.other_card:is_suit("Spades") then
                return {
                    chips = card.ability.extra.chips,
                    color = G.C.CHIPS,
                    card = card,
                }
            end
        end
    end
end
}

SMODS.Atlas{
    key = 'FraudulentJoker',
    path = 'FraudulentJoker.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'fraud',
    loc_txt = {
        name = "Fraudulent Joker",
        text = {
            'Played cards with {C:diamonds}Diamond{} suit',
            'give {C:chips}+#1#{} Chips when scored.'

        }
    },
    atlas = 'FraudulentJoker',
    rarity = 1,
    cost = 5,
    order = 7,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            chips = 30
    }
    },
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.chips}}
    end,
    calculate = function(self,card,context)
        if context.individual then
            if context.cardarea == G.play then
                if context.other_card:is_suit("Diamonds") then
                return {
                    chips = card.ability.extra.chips,
                    color = G.C.CHIPS,
                    card = card,
                }
            end
        end
    end
end
}

SMODS.Atlas{
    key = 'TreacherousJoker',
    path = 'TreacherousJoker.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'treachery',
    loc_txt = {
        name = "Treacherous Joker",
        text = {
            'Played cards with {C:clubs}Club{} suit',
            'give {C:chips}+#1#{} Chips when scored.'

        }
    },
    atlas = 'TreacherousJoker',
    rarity = 1,
    cost = 5,
    order = 8,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            chips = 30
    }
    },
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.chips}}
    end,
    calculate = function(self,card,context)
        if context.individual then
            if context.cardarea == G.play then
                if context.other_card:is_suit("Clubs") then
                return {
                    chips = card.ability.extra.chips,
                    color = G.C.CHIPS,
                    card = card,
                }
            end
        end
    end
end
}

SMODS.Atlas{
    key = 'BigFace',
    path = "BigFace.png",
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'bigpicture',
    loc_txt = {
        name = "The Bigger Picture",
        text = {
            'all scored {C:attention}Face{} cards give',
            '{X:purple,C:white}X#1#{} Mult and Chips when scored.',
            '{C:inactive}(will not work with Pareidolia.)'
        }
    },
    atlas = 'BigFace',
    rarity = 3,
    cost = 8,
    order = 9,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            Xmult = 1.5, x_chips = 1.5
    }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xmult } }
    end,
    calculate = function(self,card,context)
        if context.individual
        and (context.other_card:get_id() == 11 or context.other_card:get_id() == 12 or context.other_card:get_id() == 13)
        and context.cardarea == G.play then
            return {
                xmult = card.ability.extra.Xmult,
                chips = 0.5 * hand_chips,
                message = "X1.5 All",
                sound = 'jtc_doubletime1',
                colour = G.C.PURPLE,
                remove_default_message = true
              }
        end
    end
}

SMODS.Atlas{
    key = 'CueCard',
    path = 'CueCard.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'cuecard',
    loc_txt = {
        name = "Cue Card Joker",
        text = {
            'This Joker gains {X:mult,C:white}X0.35{} Mult',
            'for every round beaten. {C:inactive}(Currently {X:mult,C:white}X#1#{} {C:inactive}Mult.){}'
        }
    },
    atlas = 'CueCard',
    rarity = 3,
    cost = 8,
    order = 10,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            Xmult = 1, Xmult_mod = 0.05
        }
    },
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.Xmult}}
    end,
    calculate = function(self,card,context)
        if context.joker_main then
            return {
                xmult = card.ability.extra.Xmult,
                card = card,
                }
            elseif context.end_of_round then
                card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
            end
        end
}

SMODS.Atlas{
    key = 'Dorito',
    path = 'TheRito.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'dorito',
    loc_txt = {
        name = "The 'Rito Joker",
        text = {
            'All played {C:attention}3s{} give',
            '{C:mult}+#1#{} Mult when scored.',
            "{C:inactive}'For the bold! (and low-balled.)'{}"
        }
    },
    atlas = 'Dorito',
    rarity = 1,
    cost = 3,
    order = 10,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            mult = 3
        }
    },
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.mult}}
    end,
    calculate = function(self,card,context)
        if context.individual
        and (context.other_card:get_id() == 3)
        and context.cardarea == G.play then
            return {
                mult = card.ability.extra.mult,
                card = card,
                }
            end
        end
}

SMODS.Atlas{
    key = 'King1',
    path = 'YourUndoing.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'leftking',
    loc_txt = {
        name = "Fighting For Power",
        text = {
            'all played and scored {C:attention}Kings{}',
            'give {X:mult,C:white}X#1#{} Mult.'
        }
    },
    atlas = 'King1',
    rarity = 3,
    cost = 8,
    order = 11,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            Xmult = 3
        }
    },
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.Xmult}}
    end,
    calculate = function(self,card,context)
        if context.individual
        and (context.other_card:get_id() == 13)
        and context.cardarea == G.play then
            return {
                Xmult_mod = card.ability.extra.Xmult,
                message = 'X' .. card.ability.extra.Xmult,
                color = G.C.MULT,
                card = card,
                }
            end
        end
}

SMODS.Atlas{
    key = 'King2',
    path = 'YourUndoing.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'rightking',
    loc_txt = {
        name = "Falling From Grace",
        text = {
            'all played and scored {C:attention}Kings{}',
            'give {X:chips,C:white}X#1#{} Chips.'
        }
    },
    atlas = 'King2',
    rarity = 3,
    cost = 8,
    order = 12,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 1, y = 0},
    config = { 
        extra = {
            Xchips = 3
        }
    },
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.Xchips}}
    end,
    calculate = function(self,card,context)
        if context.individual
        and (context.other_card:get_id() == 13)
        and context.cardarea == G.play then
            return {
                chip_mod = mod_chips((4-1) * hand_chips),
                message = 'X' .. card.ability.extra.Xchips,
                color = G.C.CHIPS,
                card = card,
                }
            end
        end
}

SMODS.Atlas{
    key = 'CoupdeCreme',
    path = 'CoupdeCreme.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'creme',
    loc_txt = {
        name = "- Milky -",
        text = {
            '{X:mult,C:white}X#1#{} Mult.',
            '{C:green}#2# in #3#{} chance this Joker creates 4',
            '{C:dark_edition}Negative{} {C:purple}Justice{} cards at end of round.',
            "{C:inactive}'Im a fucking Joker!'{}"
        }
    },
    atlas = 'CoupdeCreme',
    rarity = 4,
    cost = 20,
    order = 46,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            Xmult = 20, odds = 6
    }
    },
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.Xmult}}
    end,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xmult, (G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
    end,
    calculate = function(self,card,context)
        if context.joker_main then
            return {
                card = card,
                Xmult_mod = card.ability.extra.Xmult,
                message = 'X' .. card.ability.extra.Xmult,
                color = G.C.MULT
            }
        end

    if context.end_of_round and not context.repetition and context.game_over == false and not context.blueprint then
        if pseudorandom('CoupdeCreme') < G.GAME.probabilities.normal / card.ability.extra.odds then
          G.E_MANAGER:add_event(Event({
            func = function()
              play_sound('tarot1')
              card.T.r = -0.2
              card:juice_up(0.3, 0.4)
              G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.3,
                blockable = false,
                func = function()
                    local card = create_card(nil,G.consumeables, nil, nil, nil, nil, 'c_justice')
                    card:set_edition('e_negative', true)
                    card:add_to_deck()
                    G.consumeables:emplace(card)
                    local card = create_card(nil,G.consumeables, nil, nil, nil, nil, 'c_justice')
                    card:set_edition('e_negative', true)
                    card:add_to_deck()
                    G.consumeables:emplace(card)
                    local card = create_card(nil,G.consumeables, nil, nil, nil, nil, 'c_justice')
                    card:set_edition('e_negative', true)
                    card:add_to_deck()
                    G.consumeables:emplace(card)
                    local card = create_card(nil,G.consumeables, nil, nil, nil, nil, 'c_justice')
                    card:set_edition('e_negative', true)
                    card:add_to_deck()
                    G.consumeables:emplace(card)
                  return true;
                end
              }))
              return true
            end
          }))
          G.GAME.pool_flags.creme_justice = true
          return {
            message = 'Yep!'
          }
        else
          return {
            message = 'Nope!'
          }
        end
      end
    end
}

SMODS.Atlas{
    key = 'Benjamin',
    path = 'Benjamin.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'benji',
    loc_txt = {
        name = "- Benjamin -",
        text = {
            '{X:chips,C:white}X#1#{} Chips.',
            '{C:green}#2# in #3#{} chance this Joker creates',
            '2 {C:dark_edition}Negative{} {C:purple}Magician{} cards',
            'at end of round.',
            "{C:inactive}'Fuck yea! Balatro!'{}"
        }
    },
    atlas = 'Benjamin',
    rarity = 4,
    cost = 20,
    order = 47,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            Xchips = 7,
            odds = 2
    }
    },
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.Xchips}}
    end,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xchips, (G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
    end,
    calculate = function(self,card,context)
        if context.joker_main then
            return {
                card = card,
                chip_mod = mod_chips((7-1) * hand_chips),
                message = 'X' .. card.ability.extra.Xchips,
                color = G.C.CHIPS
            }
        end

    if context.end_of_round and not context.repetition and context.game_over == false and not context.blueprint then
        if pseudorandom('benji') < G.GAME.probabilities.normal / card.ability.extra.odds then
          G.E_MANAGER:add_event(Event({
            func = function()
              play_sound('tarot1')
              card.T.r = -0.2
              card:juice_up(0.3, 0.4)
              G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.3,
                blockable = false,
                func = function()
                    local card = create_card(nil,G.consumeables, nil, nil, nil, nil, 'c_magician')
                    card:set_edition('e_negative', true)
                    card:add_to_deck()
                    G.consumeables:emplace(card)
                    local card = create_card(nil,G.consumeables, nil, nil, nil, nil, 'c_magician')
                    card:set_edition('e_negative', true)
                    card:add_to_deck()
                    G.consumeables:emplace(card)
                  return true;
                end
              }))
              return true
            end
          }))
          G.GAME.pool_flags.benji_lucky = true
          return {
            message = 'Yep!'
          }
        else
          return {
            message = 'Nope!'
          }
        end
      end
    end
}


SMODS.Atlas{
    key = 'Rath',
    path = "Ra'th.png",
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'rath',
    loc_txt = {
        name = "- Ra'th -",
        text = {
            '{C:money}$#1#{} at end of round.',
            "{C:inactive}'What the- WHO DID THIS TO ME!?'{}"
        }
    },
    atlas = 'Rath',
    rarity = 4,
    cost = 20,
    order = 48,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            money = 35,
            odds = 3
    }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.money, (G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
    end,
    calc_dollar_bonus = function(self, card)
    local bonus = card.ability.extra.money
    if bonus > 0 then return bonus end


    if context.end_of_round and not context.repetition and context.game_over == false and not context.blueprint then
        if pseudorandom('rath') < G.GAME.probabilities.normal / card.ability.extra.odds then
          G.E_MANAGER:add_event(Event({
            func = function()
              play_sound('tarot1')
              card.T.r = -0.2
              card:juice_up(0.3, 0.4)
              G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.3,
                blockable = false,
                func = function()
                    local card = create_card(nil,G.consumeables, nil, nil, nil, nil, 'c_temperance')
                    card:set_edition('e_negative', true)
                    card:add_to_deck()
                    G.consumeables:emplace(card)
                  return true;
                end
              }))
              return true
            end
          }))
          G.GAME.pool_flags.rath_money = true
          return {
            message = 'Yep!'
          }
        else
          return {
            message = 'Nope!'
          }
        end
      end
    end
}

SMODS.Atlas{
    key = 'Dante',
    path = "Dante.png",
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'dante',
    loc_txt = {
        name = "- Dante -",
        text = {
            '{X:mult,C:white}X#1#{} Mult for every',
            'played and scored {C:attention}Ace{} through {C:attention}9.{}',
            "{C:inactive}'I went through hell and this is how im repaid? damn.'{}"
        }
    },
    atlas = 'Dante',
    rarity = 4,
    cost = 20,
    order = 49,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            Xmult = 2
    }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xmult } }
    end,
    calculate = function(self,card,context)
        if context.individual
        and (context.other_card:get_id() == 14 or context.other_card:get_id() == 2 or context.other_card:get_id() == 3 or context.other_card:get_id() == 4 or context.other_card:get_id() == 5 or context.other_card:get_id() == 6 or context.other_card:get_id() == 7 or context.other_card:get_id() == 8 or context.other_card:get_id() == 9)
        and context.cardarea == G.play then
            return {
                    Xmult_mod = card.ability.extra.Xmult,
                    message = 'X' .. card.ability.extra.Xmult,
                    color = G.C.MULT,
                    card = card,
                }
            end
        end

}

SMODS.Atlas{
key = 'Virgil',
path = "Virgil.png",
px = 71,
py = 95
}

SMODS.Joker{
key = 'virgil',
loc_txt = {
    name = "- Virgil -",
    text = {
        '{X:chips,C:white}X#1#{} Chips for every',
        '{C:attention}Ace{} through {C:attention}9{} played and scored.',
        "{C:inactive}(he doesn't move, but he does work!){}",
        "{C:inactive}'Try me, mothafucka.'{}"
    }
},
atlas = 'Virgil',
rarity = 4,
cost = 20,
order = 50,
unlocked = true,
discovered = false,
blueprint_compat = true,
brainstorm_compat = true,
eternal_compat = true,
perishable_compat = true,
pos = {x = 0, y = 0},
config = { 
    extra = {
        Xchips = 2
}
},
loc_vars = function(self, info_queue, card)
    return { vars = { card.ability.extra.Xchips } }
end,
calculate = function(self,card,context)
    if context.individual
    and (context.other_card:get_id() == 14 or context.other_card:get_id() == 2 or context.other_card:get_id() == 3 or context.other_card:get_id() == 4 or context.other_card:get_id() == 5 or context.other_card:get_id() == 6 or context.other_card:get_id() == 7 or context.other_card:get_id() == 8 or context.other_card:get_id() == 9)
    and context.cardarea == G.play then
        return {
            chip_mod = mod_chips((2-1) * hand_chips),
            message = 'X' .. card.ability.extra.Xchips,
            color = G.C.CHIPS,
            card = context.other_card
            }
        end
    end

}

SMODS.Atlas{
    key = 'Marc',
    path = "Marc.png",
    px = 71,
    py = 95
    }

SMODS.Joker{
    key = 'marc',
    loc_txt = {
        name = "- Marc -",
        text = {
            'Gives {X:mult,C:white}X#1#{} Mult and {C:attention}2 retriggers{}',
            'for every played and scored card with {C:clubs}Club{} suit.',
            "{C:inactive}'Lets win this poker game, mate!'{}"
        }
    },
    atlas = 'Marc',
    rarity = 4,
    cost = 20,
    order = 51,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            Xmult = 1.5, repetitions = 2
    }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xmult } }
    end,
    calculate = function(self,card,context)
        if context.cardarea == G.play and context.repetition and not context.repetition_only then
            if context.other_card:is_suit("Clubs") then
            return {
                message = 'Again!',
                repetitions = card.ability.extra.repetitions,
                card = card,
                }
            end
        elseif context.individual then
			if context.cardarea == G.play then
                if context.other_card:is_suit("Clubs") then
                    return {
                        x_mult = card.ability.extra.Xmult,
                        colour = G.C.RED,

                        card = card
                        }
                    end
                end
            end
        end
}

SMODS.Atlas{
    key = 'Preston',
    path = "Preston.png",
    px = 71,
    py = 95
    }

SMODS.Joker{
    key = 'preston',
    loc_txt = {
        name = "- Preston -",
        text = {
            'all scored cards that include a listed {C:attention}Fish{} hand',
            'recieve {X:mult,C:white}X#1#{} Mult and {X:chips,C:white}X2{} Chips.',
            '{C:attention}Fish hands:{} High Card, Pair, Two Pair, Three of a Kind',
            "{C:inactive}'Catch a small one, win a big one!'{}"
        }
    },
    atlas = 'Preston',
    rarity = 4,
    cost = 20,
    order = 52,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            Xmult = 2, Xchips = 2
    }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xmult } }
    end,
    calculate = function(self,card,context)
        if context.cardarea == G.play and not context.blueprint then
            if context.before and next(context.poker_hands["High Card"]) or next(context.poker_hands["Pair"]) or next(context.poker_hands["Two Pair"]) or next(context.poker_hands["Three of a Kind"]) then
                return {
                        x_mult = card.ability.extra.Xmult,
                        chip_mod = mod_chips((2-1) * hand_chips),
                        message = 'X' .. card.ability.extra.Xchips,
                        color = G.C.CHIPS,
                        card = card,
                    } --note to self: learn how to make it so that things with full houses, four-kinds and five-kinds are excluded from the pool.
                end
            end
        end
}

SMODS.Atlas{
    key = 'Dibbles',
    path = "Dibbles.png",
    px = 71,
    py = 95
    }

SMODS.Joker{
    key = 'dibbles',
    loc_txt = {
        name = "- Dibbles -",
        text = {
            'Gives {X:mult,C:white}X#1#{} Mult and {C:attention}2 retriggers{}',
            'for every played and scored card with {C:spades}Spade{} suit.',
            "{C:inactive}'Balatro tip: don't lose, you fuck!'{}"
        }
    },
    atlas = 'Dibbles',
    rarity = 4,
    cost = 20,
    order = 53,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            Xmult = 1.5, repetitions = 2
    }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xmult } }
    end,
    calculate = function(self,card,context)
        if context.cardarea == G.play and context.repetition and not context.repetition_only then
            if context.other_card:is_suit("Spades") then
            return {
                message = 'Again!',
                repetitions = card.ability.extra.repetitions,
                card = card,
                }
            end
        elseif context.individual then
			if context.cardarea == G.play then
                if context.other_card:is_suit("Spades") then
                    return {
                        x_mult = card.ability.extra.Xmult,
                        colour = G.C.RED,
                        card = card
                        }
                    end
                end
            end
        end
    }

    SMODS.Atlas{
        key = 'Rose',
        path = "Rose.png",
        px = 71,
        py = 95
        }
    
    SMODS.Joker{
        key = 'rose',
        loc_txt = {
            name = "- Rose -",
            text = {
                'Gives {X:mult,C:white}X#1#{} Mult and {C:attention}2 retriggers{}',
                'for every played and scored card with {C:hearts}Heart{} suit.',
                "{C:inactive}'There will be no loss, as long as I'm a part.'{}"
            }
        },
        atlas = 'Rose',
        rarity = 4,
        cost = 20,
        order = 54,
        unlocked = true,
        discovered = false,
        blueprint_compat = true,
        brainstorm_compat = true,
        eternal_compat = true,
        perishable_compat = true,
        pos = {x = 0, y = 0},
        config = { 
            extra = {
                Xmult = 1.5, repetitions = 2
        }
        },
        loc_vars = function(self, info_queue, card)
            return { vars = { card.ability.extra.Xmult } }
        end,
        calculate = function(self,card,context)
            if context.cardarea == G.play and context.repetition and not context.repetition_only then
                if context.other_card:is_suit("Hearts") then
                return {
                    message = 'Again!',
                    repetitions = card.ability.extra.repetitions,
                    card = card,
                    }
                end
            elseif context.individual then
                if context.cardarea == G.play then
                    if context.other_card:is_suit("Hearts") then
                        return {
                            x_mult = card.ability.extra.Xmult,
                            colour = G.C.RED,
                            card = card
                        }
                    end
                end
            end
        end
}

        SMODS.Atlas{
            key = 'Jasper',
            path = "Jasper.png",
            px = 71,
            py = 95
            }
        
        SMODS.Joker{
            key = 'jasper',
            loc_txt = {
                name = "- Jasper -",
                text = {
                    'Gives {X:mult,C:white}X#1#{} Mult and {C:attention}2 retriggers{}',
                    'for every played and scored card with {C:diamonds}Diamond{} suit.',
                    "{C:inactive}'You're a bitch if you lose this!'{}"
                }
            },
            atlas = 'Jasper',
            rarity = 4,
            cost = 20,
            order = 55,
            unlocked = true,
            discovered = false,
            blueprint_compat = true,
            brainstorm_compat = true,
            eternal_compat = true,
            perishable_compat = true,
            pos = {x = 0, y = 0},
            config = { 
                extra = {
                    Xmult = 1.5, repetitions = 2
            }
            },
            loc_vars = function(self, info_queue, card)
                return { vars = { card.ability.extra.Xmult } }
            end,
            calculate = function(self,card,context)
                if context.cardarea == G.play and context.repetition and not context.repetition_only then
                    if context.other_card:is_suit("Diamonds") then
                    return {
                        message = 'Again!',
                        repetitions = card.ability.extra.repetitions,
                        card = card,
                        }
                    end
                elseif context.individual then
                    if context.cardarea == G.play then
                        if context.other_card:is_suit("Diamonds") then
                            return {
                                x_mult = card.ability.extra.Xmult,
                                colour = G.C.RED,
                                card = card
                                }
                            end
                        end
                    end
                end
            }
----------------------------------------------
------------MOD CODE END----------------------