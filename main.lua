--- STEAMODDED HEADER
--- MOD_NAME: Join The Crowd
--- MOD_ID: JoinTheCrowd
--- VERSION: 1.2.0
--- BADGE_COLOUR: 4a3491
--- MOD_AUTHOR: [DynaLeet]
--- MOD_DESCRIPTION: Adds 32 Jokers, some of which being mainly unbalanced Legendaries based off of my main OCs. All art and coding has been done by me (which kind of explains why the art looks bad) with quite a lot of coding help from the Balatro Discord (cuz i don't understand a GOD DAMN THING!). thanks, lads!
--- PREFIX: jtc
----------------------------------------------
------------MOD CODE -------------------------

SMODS.Sound({
    pitch = 1,
    vol = 1,
    key = 'doubletime1',
    path = 'doubletime1.ogg'
})

SMODS.Sound({
    pitch = 1,
    vol = 1,
    key = 'orchestrahit',
    path = 'orchestrahit.ogg'
})

SMODS.Sound({
    pitch = 1,
    vol = 1,
    key = 'editionadd',
    path = 'editionadd.ogg'
})

SMODS.Sound({
    pitch = 1,
    vol = 1,
    key = 'bownling',
    path = 'bownling.ogg'
})

SMODS.Sound({
    pitch = 1,
    vol = 1,
    key = 'goteem',
    path = 'HAH.ogg'
})

-- atlas below is for when jokers or consumables dont have a sprite.
SMODS.Atlas{
    key = 'BASE',
    path = 'jonklebase.png',
    px = 71,
    py = 95
}
-- all other atlases are meant for the Crowd consumables.

SMODS.Atlas{
    key = 'thecrowd',
    path = 'thecrowd.png',
    px = 71,
    py = 95
}

SMODS.Atlas{
    key = 'thevisionary',
    path = 'thevisionary.png',
    px = 71,
    py = 95
}

SMODS.Atlas{
    key = 'themosaic',
    path = 'themosaic.png',
    px = 71,
    py = 95
}
SMODS.Atlas{
    key = 'thetinman',
    path = 'thetinman.png',
    px = 71,
    py = 95
}

SMODS.Atlas{
    key = 'crowdpack1',
    path = 'CrowdPack1.png',
    px = 57,
    py = 93
}

SMODS.ConsumableType{
    key = 'Crowd',
    collection_rows = {2,2},
    primary_colour = G.C.MULT,
    secondary_colour = G.C.MULT,
    loc_txt = {
        collection = 'Crowd Cards',
        name = 'Crowd Card',
        undiscovered = {
            name = 'Hidden Card',
            text = {
            'Purchase me in a booster pack',
            'in order to unlock me!'
            }
        }
    },
    shop_rate = 1,

}

SMODS.UndiscoveredSprite{
    key = 'Crowd',
    atlas = 'undiscovered',
    pos = {x = 0, y = 0}
}

SMODS.Consumable{
    key = 'CrowdCard',
    set = 'Crowd',
    atlas = 'thecrowd',
    cost = 8,
    loc_txt = {
        name = 'The Crowd',
        text = {
            'Add {C:dark_edition}Negative{} to {C:attention}#1#{} cards in hand.'
        }
    },
    config = {
        extra = {
            cards = 2,
        }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.cards}}
    end,
    can_use = function(self,card)
        if G and G.hand then
            if #G.hand.highlighted ~= 0 and #G.hand.highlighted <= card.ability.extra.cards then
                return true
            end
        end
        return false
    end,
    use = function(self,card,area,copier)
        for i = 1, #G.hand.highlighted do 
            G.hand.highlighted[i]:set_edition({negative = true},true)
        end
    end,
}

SMODS.Consumable{
    key = 'MosaicCard',
    set = 'Crowd',
    atlas = 'themosaic',
    cost = 8,
    loc_txt = {
        name = 'The Mosaic',
        text = {
            'Add {C:dark_edition}Polychrome{} to {C:attention}#1#{} cards in hand.'
        }
    },
    config = {
        extra = {
            cards = 3,
        }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.cards}}
    end,
    can_use = function(self,card)
        if G and G.hand then
            if #G.hand.highlighted ~= 0 and #G.hand.highlighted <= card.ability.extra.cards then
                return true
            end
        end
        return false
    end,
    use = function(self,card,area,copier)
        for i = 1, #G.hand.highlighted do 
            G.hand.highlighted[i]:set_edition({polychrome = true},true)
        end
    end,
}

SMODS.Consumable{
    key = 'VisionaryCard',
    set = 'Crowd',
    atlas = 'thevisionary',
    cost = 8,
    loc_txt = {
        name = 'The Visionary',
        text = {
            'Add {C:dark_edition}Holographic{} to {C:attention}#1#{} cards in hand.'
        }
    },
    config = {
        extra = {
            cards = 3,
        }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.cards}}
    end,
    can_use = function(self,card)
        if G and G.hand then
            if #G.hand.highlighted ~= 0 and #G.hand.highlighted <= card.ability.extra.cards then
                return true
            end
        end
        return false
    end,
    use = function(self,card,area,copier)
        for i = 1, #G.hand.highlighted do 
            G.hand.highlighted[i]:set_edition({holo = true},true)
        end
    end,
}

SMODS.Consumable{
    key = 'TinCard',
    set = 'Crowd',
    atlas = 'thetinman',
    cost = 8,
    loc_txt = {
        name = 'The Tin Man',
        text = {
            'Add {C:dark_edition}Foil{} to {C:attention}#1#{} cards in hand.'
        }
    },
    config = {
        extra = {
            cards = 4,
        }
    },
    loc_vars = function(self,info_queue,center)
        return {vars = {center.ability.extra.cards}}
    end,
    can_use = function(self,card)
        if G and G.hand then
            if #G.hand.highlighted ~= 0 and #G.hand.highlighted <= card.ability.extra.cards then
                return true
            end
        end
        return false
    end,
    use = function(self,card,area,copier)
        for i = 1, #G.hand.highlighted do 
            G.hand.highlighted[i]:set_edition({foil = true},true)
        end
    end,
}

-- afterwards, all jokers here are formatted by Atlas first, then Joker info. all atlases are NOT in a bushel of their own and are always near the joker thats utilizing it cuz why not.

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
            '{X:tarot,C:white}X#1#{} Double Time when scored.',
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
                chips = 0.5  * hand_chips,
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
            Xmult = 1, mult_gain = 0.05
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
                card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.mult_gain
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
            '{C:inactive}(OC Joker){}',
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
            Xmult = 2
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
            '{C:inactive}(OC Joker){}',
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
            Xchips = 2
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
                chip_mod = mod_chips(2 * hand_chips),
                message = 'X' .. card.ability.extra.Xchips,
                color = G.C.CHIPS,
                card = card,
                }
            end
        end
}

SMODS.Atlas{
    key = 'MadQueen',
    path = 'MadQueen.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'madqueen',
    loc_txt = {
        name = "Mad Queen",
        text = {
            '{C:inactive}(OC Joker){}',
            'all played and scored {C:attention}Queens{} give',
            '{X:mult,C:white}X#1#{} Mult and are retriggered {C:attention}once.{}'
        }
    },
    atlas = 'MadQueen',
    rarity = 3,
    cost = 8,
    order = 13,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            Xmult = 1.5, repetitions = 1
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xmult } }
    end,
    calculate = function(self,card,context)
        if context.cardarea == G.play and context.repetition and not context.repetition_only then
            if (context.other_card:get_id() == 12) then
            return {
                message = 'Again!',
                repetitions = card.ability.extra.repetitions,
                card = card,
                }
            end
        elseif context.individual then
			if context.cardarea == G.play then
                if (context.other_card:get_id() == 12) then
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
    key = 'Bownling',
    path = 'TheBrunswick.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'brunswick',
    loc_txt = {
        name = "The Brunswick",
        text = {
            'All played {C:attention}10s{} give',
            '{C:mult}+#1#{} Mult and {C:chips}+100{} Chips when scored.',
            "{C:inactive}'Nice throw! Perfect!'{}"
        }
    },
    atlas = 'Bownling',
    rarity = 2,
    cost = 5,
    order = 14,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            mult = 10, chips = 100
        }
    },
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.mult}}
    end,
    calculate = function(self,card,context)
        if context.individual
        and (context.other_card:get_id() == 10)
        and context.cardarea == G.play then
            return {
                mult = card.ability.extra.mult,
                chips = card.ability.extra.chips,
                card = card,
                }
            end
        end
}
SMODS.Atlas{
    key = 'DubT',
    path = 'DoubleTime.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'doubletime',
    loc_txt = {
        name = "Double Time",
        text = {
            'Performs {C:tarot}Double Time{} at the end of a round.',
            '({X:mult,C:white}X3{} Mult and {X:chips,C:white}X3{} Chips, simultaneously.)'
        }
    },
    atlas = 'DubT',
    rarity = 3,
    cost = 10,
    order = 15,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            Xmult = 3, x_chips = 3
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xmult } }
    end,
    calculate = function(self,card,context)
        if context.joker_main then
            return {
                xmult = card.ability.extra.Xmult,
                chips = 3 * hand_chips,
                message = "X3 All",
                sound = 'jtc_doubletime1',
                colour = G.C.PURPLE,
                remove_default_message = true
              }
        end
    end
}


SMODS.Atlas{
    key = 'jebaited',
    path = 'Jebaited.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'Jebaited',
    loc_txt = {
        name = "Jebaited",
        text = {
            '{C:inactive}(Joke Joker)',
            '{X:mult,C:white}X#1#{} Mult at end of round.',
            "{C:inactive}(Buy this! It's good!){}"
        }
    },
    atlas = 'jebaited',
    rarity = 1,
    cost = 1,
    order = 16,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    allow_duplicates = true,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            chips = 5
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips } }
    end,
    calculate = function(self,card,context)
        if context.joker_main then
            return {
                chips = card.ability.extra.chips,
                message = "JEBAITED!",
                sound = 'jtc_goteem',
                colour = G.C.CHIPS,
                remove_default_message = true
              }
        end
    end
}

SMODS.Atlas{
    key = 'WildCard',
    path = 'WildCard.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'WILD',
    loc_txt = {
        name = "Wild Card",
        text = {
            'Ability varies depending on card suit.',
            '{C:chips}+70{} Chips for {C:spades}Spades{}, {X:mult,C:white}X1.35{} Mult for {C:hearts}Hearts{},',
            '{C:mult}+10{} Mult for {C:clubs}Clubs{}, {C:money}$3{} for {C:diamonds}Diamonds{}.'
        }
    },
    atlas = 'WildCard',
    rarity = 3,
    cost = 8,
    order = 17,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    allow_duplicates = true,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            chips = 70, mult = 10, Xmult = 1.35, money = 3
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips } }
    end,
    calculate = function(self,card,context)
        if context.cardarea == G.play and context.individual then
            if context.other_card:is_suit("Spades") then
                return {
                chips = card.ability.extra.chips,
                card = card,
                }
            end
            if context.other_card:is_suit("Hearts") then
                return {
                    Xmult_mod = card.ability.extra.Xmult,
                    message = 'X1.35 Mult',
                    colour = G.C.MULT,
                    card = card,
                }
            end
            if context.other_card:is_suit("Clubs") then
                return {
                        mult = card.ability.extra.mult,
                        card = card,
                    }
            end
            if context.other_card:is_suit("Diamonds") then
                return {
                        dollars = card.ability.extra.money,
                        card = card,
                    }
                end
            end
        end
}

SMODS.Atlas{
    key = 'Khronos',
    path = 'Khronos.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'khronos',
    loc_txt = {
        name = "Khronos",
        text = {
            '{C:inactive}(OC Joker){}',
            'Retriggers all played and',
            'scored cards {C:attention}once.{}'
        }
    },
    atlas = 'Khronos',
    rarity = 3,
    cost = 7,
    order = 18,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    allow_duplicates = true,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            repetitions = 1
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.repetitions } }
    end,
    calculate = function(self,card,context)
        if context.cardarea == G.play and context.repetition and not context.repetition_only then
            return {
                repetitions = card.ability.extra.repetitions,
                message = 'Again!',
                card = card,
            }
        end
    end
}

SMODS.Atlas{
    key = 'Rainbow',
    path = 'PrismaticSight.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'rainbow',
    loc_txt = {
        name = "Prismatic Sight",
        text = {
            'played and scored {C:dark_edition}Polychrome{} Cards',
            'give an additional {X:mult,C:white}X#1#{} Mult.'
        }
    },
    atlas = 'Rainbow',
    rarity = 2,
    cost = 8,
    order = 19,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    allow_duplicates = true,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            Xmult = 1.5
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xmult } }
    end,
    calculate = function(self,card,context)
        if context.cardarea == G.play and context.individual and context.other_card and context.other_card.edition and context.other_card.edition.polychrome == true and not context.repetition then
            return {
                Xmult_mod = card.ability.extra.Xmult,
                message = 'X1.5 Mult',
                sound = 'jtc_editionadd',
                color = G.C.PURPLE,
                card = card,
            }
        end
    end
}

SMODS.Atlas{
    key = 'J95',
    path = 'Joker95.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'joker95',
    loc_txt = {
        name = "Joker 95",
        text = {
            'all played {C:attention}9s{} and {C:attention}5s{} give',
            '{C:chips}+95{} chips when scored.'
        }
    },
    atlas = 'J95',
    rarity = 1,
    cost = 5,
    order = 20,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    allow_duplicates = true,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            chips = 95
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips} }
    end,
    calculate = function(self,card,context)
        if context.individual and (context.other_card:get_id() == 9 or context.other_card:get_id() == 5) and context.cardarea == G.play then
            return {
                chip_mod = card.ability.extra.chips,
                message = '+' .. card.ability.extra.chips,
                color = G.C.CHIPS, 
                card = card,
            }
        end
    end
}

SMODS.Atlas{
    key = 'Foil',
    path = 'AluminumFoil.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'foilman',
    loc_txt = {
        name = "Aluminum Foil",
        text = {
            'Cards with {C:dark_edition}Foil{} edition give',
            '{C:mult}+#1#{} Mult if held in hand.',
            "{C:inactive}(secondary count doesn't do anything.){}"
        }
    },
    atlas = 'Foil',
    rarity = 2,
    cost = 6,
    order = 21,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    allow_duplicates = true,
    pos = {x = 0, y = 0},
    soul_pos = {x = 1, y = 0},
    config = { 
        extra = {
            mult = 10
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult } }
    end,
    calculate = function(self,card,context)
        if context.cardarea == G.hand and context.individual and context.other_card and context.other_card.edition and context.other_card.edition.foil == true and not context.repetition then
            return {
                mult_mod = card.ability.extra.mult,
                message = '+10 Mult',
                sound = 'jtc_editionadd',
                color = G.C.MULT,
                card = card,
            }
        end
    end
}

SMODS.Joker{
    key = 'rainbow',
    loc_txt = {
        name = "Prismatic Sight",
        text = {
            'played and scored {C:dark_edition}Polychrome{} Cards',
            'give an additional {X:mult,C:white}X#1#{} Mult.'
        }
    },
    atlas = 'Rainbow',
    rarity = 2,
    cost = 8,
    order = 19,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    allow_duplicates = true,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            Xmult = 1.5
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xmult } }
    end,
    calculate = function(self,card,context)
        if context.cardarea == G.play and context.individual and context.other_card and context.other_card.edition and context.other_card.edition.polychrome == true and not context.repetition then
            return {
                Xmult_mod = card.ability.extra.Xmult,
                message = 'X1.5 Mult',
                sound = 'jtc_editionadd',
                color = G.C.PURPLE,
                card = card,
            }
        end
    end
}

-- Doppelganger is still pissing me off.

SMODS.Atlas{
    key = 'Milky',
    path = 'NewMilky.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'creme',
    loc_txt = {
        name = "- Milky -",
        text = {
            '{C:inactive}(OC Joker){}',
            '{X:mult,C:white}X#1#{} Mult.',
            '{C:green}#2# in #3#{} chance this Joker creates 4',
            '{C:dark_edition}Negative{} {C:purple}Justice{} cards at end of round.',
            "{C:inactive}'Im a fucking Joker!'{}"
        }
    },
    atlas = 'Milky',
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
    soul_pos = {x = 1, y = 0},
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
        if pseudorandom('creme') < G.GAME.probabilities.normal / card.ability.extra.odds then
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
    path = 'NewBenjamin.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'benji',
    loc_txt = {
        name = "- Benjamin -",
        text = {
            '{C:inactive}(OC Joker){}',
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
    soul_pos = {x = 1, y = 0},
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
                chip_mod = mod_chips(7 * hand_chips),
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
    path = "NewRa'th.png",
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'rath',
    loc_txt = {
        name = "- Ra'th -",
        text = {
            '{C:inactive}(OC Joker){}',
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
    soul_pos = {x = 1, y = 0},
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
            '{C:inactive}(OC Joker){}',
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
        '{C:inactive}(OC Joker){}',
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
            '{C:inactive}(OC Joker){}',
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
            '{C:inactive}(OC Joker){}',
            'all scored cards that include a listed {C:attention}Fish{} hand',
            'recieve {X:mult,C:white}X#1#{} Mult and {X:chips,C:white}X2{} Chips.',
            '{C:attention}Fish hands:{}Two Pair, Three of a Kind',
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
            if context.before and next(context.poker_hands["Two Pair"]) or next(context.poker_hands["Three of a Kind"]) then
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
            '{C:inactive}(OC Joker){}',
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
                '{C:inactive}(OC Joker){}',
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
                    '{C:inactive}(OC Joker){}',
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

SMODS.Atlas{
    key = 'Eric',
    path = "EricSanchez.png",
    px = 71,
    py = 95
    }

SMODS.Joker{
    key = 'eric',
    loc_txt = {
        name = "- Eric -",
        text = {
            '{C:inactive}(OC Joker){}',
            'played and scored {C:attention}6s{} and {C:attention}9s{}',
            'give {X:tarot,C:white}X#1#{} Double Time.',
            "{C:inactive}'Better than Memer University, i s'pose!'{}"
        }
    },
    atlas = 'Eric',
    rarity = 4,
    cost = 20,
    order = 56,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    soul_pos = {x = 1, y = 0},
    config = { 
        extra = {
            Xmult = 1.5, x_chips = 1.5
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xmult } }
    end,
    calculate = function(self,card,context)
        if context.cardarea == G.play and context.individual and (context.other_card:get_id() == 6 or context.other_card:get_id() == 9) then
                return {
                    colour = G.C.PURPLE,
                    Xmult_mod = card.ability.extra.Xmult,
                    chips = 1.5 * hand_chips,
                    message = "X3 All",
                    sound = 'jtc_orchestrahit',
                    remove_default_message = true
                }
            end
        end
}

----------------------------------------------
------------MOD CODE END----------------------