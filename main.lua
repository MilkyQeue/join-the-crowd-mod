--- STEAMODDED HEADER
--- MOD_NAME: Join The Crowd
--- MOD_ID: JoinTheCrowd
--- VERSION: 1.6.0
--- BADGE_COLOUR: 4a3491
--- BADGE_TEXT_COLOUR: c8bfe7
--- MOD_AUTHOR: [DynaLeet]
--- MOD_DESCRIPTION: A Mint / Mint-Chip Mod that Adds 70 Jokers, 1 new Consumable Type, and a bunch of other content!
--- PREFIX: jtc
----------------------------------------------
------------MOD CODE -------------------------

SMODS.Atlas{
    key = 'modicon',
    path = 'jtcicon.png',
    px = 34,
    py = 34
}

-- RARITIES

SMODS.Rarity{
    key = 'mythical',
    loc_txt = {
        name = 'Mythical'
    },
    badge_colour = HEX('de6835'),
    default_weight = 0.01
}

SMODS.Rarity{
    key = 'stunning',
    loc_txt = {
        name = 'Stunning'
    },
    badge_colour = HEX('288aa8'),
    default_weight = 0.9,
    shop_rate = 20
}
-- ENHANCEMENTS

SMODS.Atlas{
    key = 'tropic',
    path = 'tropicenhance.png',
    px = 71,
    py = 95
}

SMODS.Enhancement{
    key = 'Tropic',
    loc_txt = {
        name = 'Tropic Card',
        text = {
            '{X:chips,C:white}X#1#{} Chips when scored.',
        }
    },
    atlas = 'tropic',
    config = {
        x_chips = 1.1
    },
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.x_chips}}
    end,
    calculate = function(self,card,context)
    if context.cardarea == G.play and context.main_scoring then
        return {
        chip_mod = hand_chips * card.ability.x_chips,
        message = 'X1.1 Chips',
        sound = 'jtc_xchipadd',
        card = card,
    }
    end
end
}

SMODS.Atlas{
    key = 'assist',
    path = 'assistenhance.png',
    px = 71,
    py = 95
}

SMODS.Enhancement{
    key = 'Assist',
    loc_txt = {
        name = 'Benefit Card',
        text = {
            '{C:chips}+#1#{} Chips,',
            '{C:mult}+2{} Mult and',
            '{C:money}$2{} when scored.'
        }
    },
    atlas = 'assist',
    config = {
        chips = 10, mult = 1, money = 2
    },
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.chips, center.ability.mult, center.ability.money}}
    end,
    calculate = function(self,card,context)
    if context.cardarea == G.play and context.main_scoring then
        return {
        chips = card.ability.chips,
        mult = card.ability.mult,
        dollars = card.ability.money,
        card = card,
    }
    end
end
}

SMODS.Atlas{
    key = 'case',
    path = 'caseenhance.png',
    px = 71,
    py = 95
}

SMODS.Enhancement{
    key = 'DVD',
    loc_txt = {
        name = 'DVD Case',
        text = {
            '{X:mult,C:white}X1.5{} Mult.',
            'No rank or suit.',
            'Card always scores.'
        }
    },
    atlas = 'case',
    replace_base_card = true,
    no_rank = true,
    no_suit = true,
    always_scores = true,
    config = {
        x_mult = 1.5
    },
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.x_mult}}
    end
}

-- SOUNDS

SMODS.Sound({
    pitch = 1,
    vol = 1,
    key = 'doubletime1',
    path = 'doubletime1.ogg'
})

SMODS.Sound({
    pitch = 1,
    vol = 1,
    key = 'stoned',
    path = 'stoneseal.ogg'
})

SMODS.Sound({
    pitch = 1,
    vol = 1,
    key = 'glassshatter',
    path = 'glassshatter.ogg'
})

SMODS.Sound({
    pitch = 1,
    vol = 1,
    key = 'doubletime2',
    path = 'doubletime2.ogg'
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
    key = 'chaching',
    path = 'chaching.ogg'
})

SMODS.Sound({
    pitch = 1,
    vol = 1,
    key = 'splotch',
    path = 'splotch.ogg'
})

SMODS.Sound({
    pitch = 1,
    vol = 1,
    key = 'goteem',
    path = 'HAH.ogg'
})

SMODS.Sound({
    pitch = 1,
    vol = 1,
    key = 'xmultloss',
    path = 'xmultloss.ogg'
})

SMODS.Sound({
    pitch = 1,
    vol = 1,
    key = 'xchipadd',
    path = 'xchipadd.ogg'
})

SMODS.Sound({
    pitch = 1,
    vol = 1,
    key = 'widnow',
    path = 'widnow.ogg'
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
    key = 'thetourist',
    path = 'thetourist.png',
    px = 71,
    py = 95
}

SMODS.Atlas{
    key = 'thecoworker',
    path = 'thecoworker.png',
    px = 71,
    py = 95
}

SMODS.Atlas{
    key = 'theemployee',
    path = 'theemployee.png',
    px = 71,
    py = 95
}


SMODS.Atlas{
    key = 'thebrother',
    path = 'thebrother.png',
    px = 71,
    py = 95
}

SMODS.Atlas{
    key = 'thehoncho',
    path = 'thehoncho.png',
    px = 71,
    py = 95
}

SMODS.Atlas{
    key = 'theartist',
    path = 'theartist.png',
    px = 71,
    py = 95
}

SMODS.Atlas{
    key = 'theangel',
    path = 'theangel.png',
    px = 71,
    py = 95
}

SMODS.Atlas{
    key = 'thekingpin',
    path = 'thekingpin.png',
    px = 71,
    py = 95
}

SMODS.Atlas{
    key = 'stoneseal',
    path = 'stoneseal.png',
    px = 71,
    py = 95,
}

SMODS.Atlas{
    key = 'greedseal',
    path = 'greedseal.png',
    px = 71,
    py = 95,
}

SMODS.Atlas{
    key = 'splotchseal',
    path = 'splotchseal.png',
    px = 71,
    py = 95,
}

SMODS.Atlas{
    key = 'thehurdle',
    path = 'thehurdle.png',
    px = 34,
    py = 34,
    frames = 1,
    atlas_table = 'ANIMATION_ATLAS'
}

SMODS.Atlas{
    key = 'thestone',
    path = 'thestone.png',
    px = 34,
    py = 34,
    frames = 1,
    atlas_table = 'ANIMATION_ATLAS'
}

SMODS.Atlas{
    key = 'thecrosshair',
    path = 'thecrosshair.png',
    px = 34,
    py = 34,
    frames = 1,
    atlas_table = 'ANIMATION_ATLAS'
}

SMODS.Atlas{
    key = 'concretepillar',
    path = 'concretepillar.png',
    px = 34,
    py = 34,
    frames = 1,
    atlas_table = 'ANIMATION_ATLAS'
}

SMODS.Atlas{
    key = 'noirnail',
    path = 'noirnail.png',
    px = 34,
    py = 34,
    frames = 1,
    atlas_table = 'ANIMATION_ATLAS'
}

SMODS.Atlas{
    key = 'mythos',
    path = 'mythosdeck.png',
    px = 71,
    py = 95
}

-- CONSUMABLES (CROWD)

SMODS.ConsumableType{
    key = 'Crowd',
    collection_rows = {3,2},
    primary_colour = G.C.MULT,
    secondary_colour = G.C.MULT,
    loc_txt = {
        collection = 'Crowd Cards',
        name = 'Crowd Card',
        undiscovered = {
            name = 'Hidden Card',
            text = {
            'Purchase me from the shop',
            'in order to unlock me!'
            }
        }
    },
    shop_rate = 4,

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

SMODS.Consumable{
    key = 'TouristCard',
    set = 'Crowd',
    atlas = 'thetourist',
    cost = 6,
    loc_txt = {
        name = 'The Tourist',
        text = {
            '{T:m_jtc_Tropic}Enhances {C:attention}#1#{} selected cards',
            'into {C:attention}Tropic Cards.{}'
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
            G.hand.highlighted[i]:set_ability(G.P_CENTERS.m_jtc_Tropic, nil, true)
        end
    end,
}

SMODS.Consumable{
    key = 'CoworkerCard',
    set = 'Crowd',
    atlas = 'thecoworker',
    cost = 6,
    loc_txt = {
        name = 'The Coworker',
        text = {
            '{T:m_jtc_Assist}Enhances {C:attention}#1#{} selected cards',
            'into {C:attention}Benefit Cards.{}'
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
            G.hand.highlighted[i]:set_ability(G.P_CENTERS.m_jtc_Assist, nil, true)
        end
    end,
}

SMODS.Consumable{
    key = 'EmployeeCard',
    set = 'Crowd',
    atlas = 'theemployee',
    cost = 4,
    loc_txt = {
        name = 'The Employee',
        text = {
            '{T:m_jtc_DVD}Enhances {C:attention}#1#{} selected cards',
            'into {C:attention}DVD Cases.{}'
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
            G.hand.highlighted[i]:set_ability(G.P_CENTERS.m_jtc_DVD, nil, true)
        end
    end,
}

SMODS.Consumable{
    key = 'BrotherCard',
    set = 'Crowd',
    atlas = 'thebrother',
    cost = 6,
    loc_txt = {
        name = 'The Brother',
        text = {
            'Applys a {C:inactive}Stone Branding{} to',
            '{C:attention}1{} selected card in hand.'
        }
    },
    config = {
        extra = {
            cards = 1,
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
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.1,func = function()
            play_sound("jtc_stoned")
            G.hand.highlighted[i].seal = "jtc_stoner"
            return true end }))
            delay(0.5)
        end
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2,func = function() G.hand:unhighlight_all(); return true end }))
    end,
}

SMODS.Consumable{
    key = 'HonchoCard',
    set = 'Crowd',
    atlas = 'thehoncho',
    cost = 4,
    loc_txt = {
        name = 'The Honcho',
        text = {
            'Applys a {C:green}Greed Branding{} to',
            '{C:attention}1{} selected card in hand.'
        }
    },
    config = {
        extra = {
            cards = 1,
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
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.1,func = function()
            play_sound("jtc_chaching")
            G.hand.highlighted[i].seal = "jtc_greedy"
            return true end }))
            delay(0.5)
        end
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2,func = function() G.hand:unhighlight_all(); return true end }))
    end,
}

SMODS.Consumable{
    key = 'ArtistCard',
    set = 'Crowd',
    atlas = 'theartist',
    cost = 4,
    loc_txt = {
        name = 'The Artist',
        text = {
            'Applys a {C:black}Splotch Branding{} to',
            '{C:attention}1{} selected card in hand.'
        }
    },
    config = {
        extra = {
            cards = 1,
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
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.1,func = function()
            play_sound("jtc_splotch")
            G.hand.highlighted[i].seal = "jtc_sloppy"
            return true end }))
            delay(0.5)
        end
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2,func = function() G.hand:unhighlight_all(); return true end }))
    end,
}

local AngelCard = {
	dependencies = {
		items = {
			"set_jtc_mythical",
		},
	},
}

SMODS.Consumable{
    key = 'AngelCard',
    set = 'Crowd', 'Spectral',
    atlas = 'theangel',
    cost = 50,
    shop_rate = 0.0001,
    loc_txt = {
        name = 'The Angel',
        text = {
            'Call upon the heavens, and the',
            'ancients shall {C:jtc_mythical}answer your call.{}',
            '{C:inactive}Creates a random{} {C:jtc_mythical}Mythical{} {C:inactive}Joker.{}'
        }
    },
    can_use = function(self, card)
		if  G and G.jokers then
			return #G.jokers.cards < G.jokers.config.card_limit
		else
			return next(find_joker(nil, nil, nil, { "eternal" }, true, "j")) < G.jokers.config.card_limit
		end
	end,
        use = function(self,card,area,copier)
            G.E_MANAGER:add_event(Event({
                trigger = "before",
                delay = 0.4,
                func = function()
                    play_sound("timpani")
                    local card = create_card("Joker", G.jokers, nil, "jtc_mythical", nil, nil, nil, "jtc_theangel")
                    card:add_to_deck()
                    G.jokers:emplace(card)
                    card:juice_up(0.3, 0.5)
                    return true
                end,
            }))
            delay(0.6)
        end
}

local KingpinCard = {
	dependencies = {
		items = {
			"set_jtc_stunning",
		},
	},
}

SMODS.Consumable{
    key = 'KingpinCard',
    set = 'Crowd', 'Spectral',
    atlas = 'thekingpin',
    cost = 20,
    shop_rate = 2,
    loc_txt = {
        name = 'The Kingpin',
        text = {
            "i see you's havin' trouble with these ",
            "{C:attention}Blinds{}, eh? Maybe one of {C:jtc_stunning}my boys{}",
            "will help ya out.",
            '{C:inactive}Creates a random{} {C:jtc_stunning}Stunning{} {C:inactive}Joker.{}'
        }
    },
    can_use = function(self, card)
		if  G and G.jokers then
			return #G.jokers.cards < G.jokers.config.card_limit
		else
			return next(find_joker(nil, nil, nil, { "eternal" }, true, "j")) < G.jokers.config.card_limit
		end
	end,
        use = function(self,card,area,copier)
            G.E_MANAGER:add_event(Event({
                trigger = "before",
                delay = 0.4,
                func = function()
                    play_sound("timpani")
                    local card = create_card("Joker", G.jokers, nil, "jtc_stunning", nil, nil, nil, "jtc_thekingpin")
                    card:add_to_deck()
                    G.jokers:emplace(card)
                    card:juice_up(0.3, 0.5)
                    return true
                end,
            }))
            delay(0.6)
        end
}

-- DECKS

SMODS.Back{
    name = 'Mythos Deck',
    key = 'mythos',
    atlas = 'mythos',
    pos = {x = 0, y = 0},
    config = {hands = -2, discards = -1},
    loc_txt = {
        name = 'Mythos Deck',
        text = {
            'Start with a random',
            '{C:jtc_mythical}Mythical{} Joker.',
            '{C:blue}2{} Hands and {C:red}2{} Discards',
            'every round.'
        }
    },
    loc_vars = function(self)
        return {vars = {self.config.hands, self.config.discards} }
    end,
    apply = function(self)
        G.E_MANAGER:add_event(Event({
			func = function()
				if G.jokers then
					local card = create_card("Joker", G.jokers, nil, "jtc_mythical", nil, nil, nil, "jtc_mythos")
					card:add_to_deck()
					G.jokers:emplace(card)
					return true
				end
			end,
		}))
	end
}

-- SEALS

SMODS.Seal{
    key = 'stoner',
    loc_txt = {
        name = 'Stone Branding',
        label = 'Stone Branding',
        text = {
            '{C:chips}+#1#{} Chips.',
            'Rank remains unchanged.'
        }
    },
    atlas = 'stoneseal',
    pos = {x = 0, y = 0},
    badge_colour = HEX('a8a8a8'),
    sound = {sound = 'jtc_stoned', per = 1, vol = 1},
    config = {
            chips = 50
    },
    loc_vars = function(self, info_queue)
        return { vars = { self.config.chips } }
    end,
    calculate = function(self,card,context)
        if context.main_scoring and context.cardarea == G.play then
            return {
                chips = self.config.chips,
            }
        end
    end

}

SMODS.Seal{
    key = 'greedy',
    loc_txt = {
        name = 'Greed Branding',
        label = 'Greed Branding',
        text = {
            '{C:money}$#1#{} per hand played',
            'when held in hand.'
        }
    },
    atlas = 'greedseal',
    pos = {x = 0, y = 0},
    badge_colour = HEX('419c00'),
    sound = {sound = 'jtc_chaching', per = 1, vol = 1},
    config = {
            money = 4
    },
    loc_vars = function(self, info_queue)
        return { vars = { self.config.money } }
    end,
    calculate = function(self,card,context)
        if context.main_scoring and context.cardarea == G.hand then
            return {
                dollars = self.config.money,
            }
        end
    end
}

SMODS.Seal{
    key = 'sloppy',
    loc_txt = {
        name = 'Splotch Branding',
        label = 'Splotch Branding',
        text = {
            '{X:mult,C:white}X1.25{} Mult when',
            'played and scored.'
        }
    },
    atlas = 'splotchseal',
    pos = {x = 0, y = 0},
    badge_colour = HEX('000000'),
    sound = {sound = 'jtc_splotch', per = 1, vol = 1},
    config = {
            Xmult = 1.25
    },
    loc_vars = function(self, info_queue)
        return { vars = { self.config.x_chips, self.config.Xmult } }
    end,
    calculate = function(self,card,context)
        if context.main_scoring and context.cardarea == G.play then
            return {
                Xmult_mod = self.config.Xmult,
                message = 'X1.25 Mult'
            }
        end
    end

}

-- BLINDS

SMODS.Blind{
    name = "boss_hurdle",
    key = "boss_hurdle",
    atlas = "thehurdle",
    dollars = 5,
    mult = 3,
    loc_txt = {
        name = 'The Hurdle',
        text = {
            'Slightly larger blind',
        }
    },
    boss = { min = 1 },
    boss_colour = HEX('1e8552'),
}

SMODS.Blind{
    name = "boss_stone",
    key = "boss_stone",
    atlas = "thestone",
    dollars = 5,
    mult = 2,
    loc_txt = {
        name = 'The Stone',
        text = {
            'Does... nothing?',
        }
    },
    boss = { min = 2 },
    boss_colour = HEX('9d9dab'),
}

SMODS.Blind{
    name = "boss_crosshair",
    key = "boss_crosshair",
    atlas = "thecrosshair",
    dollars = 5,
    mult = 2,
    loc_txt = {
        name = 'The Crosshair',
        text = {
            'Playing 4 or more cards',
            'is restricted',
        }
    },
    boss = { min = 4 },
    boss_colour = HEX('a293d7'),

    debuff = {
        h_size_ge = 1,
        h_size_le = 3
    }
}

SMODS.Blind{
    name = "boss_pillar",
    key = "boss_pillar",
    atlas = "concretepillar",
    dollars = 8,
    mult = 12,
    loc_txt = {
        name = 'Industrial Pillar',
        text = {
            'Gigantic blind',
            '{C:inactive}(Good luck!){}',
        }
    },
    boss = { showdown = true },
    boss_colour = HEX('525252'),
}

SMODS.Blind{
    name = "boss_nail",
    key = "boss_nail",
    atlas = "noirnail",
    dollars = 8,
    mult = 2.5,
    loc_txt = {
        name = 'Noir Nail',
        text = {
            'Play only 1 hand.',
            'Slightly larger blind'
        }
    },
    boss = { showdown = true },
    boss_colour = HEX('3a3a3a'),
    config = {
        extra = {
            hands = 1
        }
    },

    loc_vars = function(self, info_queue, card)
        return {vars = {self.config.extra.hands}}
    end,
    collection_loc_vars = function(self)
        return {vars = {self.config.extra.hands}}
    end,
    set_blind = function(self)
        self.hands_sub = G.GAME.round_resets.hands - self.config.extra.hands
        ease_hands_played(-self.hands_sub)
    end,
        disable = function(self)
        self.hands_sub = G.GAME.round_resets.hands - self.config.extra.hands
        ease_hands_played(self.hands_sub)
    end,
}

-- afterwards, all jokers here are formatted by Atlas first, then Joker info. all atlases are NOT in a bushel of their own and are always near the joker thats utilizing it cuz why not.

-- JOKERS

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
            Xmult = 1, mult_gain = 0.35
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
            elseif context.end_of_round and not context.repetition and context.game_over == false then
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
            Xmult = 1.5
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
                message = 'X1.5 Mult',
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
            x_chips = 1.5
        }
    },
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.x_chips}}
    end,
    calculate = function(self,card,context)
        if context.individual
        and (context.other_card:get_id() == 13)
        and context.cardarea == G.play and not context.repetition then
            return {
                chip_mod = hand_chips * card.ability.extra.x_chips,
                message = 'X' .. card.ability.extra.x_chips,
                sound = 'jtc_xchipadd',
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
            Xmult = 1.25, repetitions = 1
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
            'Performs {C:tarot}Double Time{}.',
            '({X:mult,C:white}X2{} Mult and {X:chips,C:white}X2{} Chips.)'
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
            Xmult = 2, x_chips = 2
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xmult } }
    end,
    calculate = function(self,card,context)
        if context.joker_main then
            return {
                xmult = card.ability.extra.Xmult,
                chips = 2 * hand_chips,
                message = "X2 All",
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
            '{X:mult,C:white}X#1#{} Mult.',
            "{C:inactive}(Buy this! It's good!){}",
            '{s:0.5,C:inactive}(In reality, +5 Chips.){}'
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
    allow_duplicates = false,
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
    allow_duplicates = false,
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
    allow_duplicates = false,
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
    allow_duplicates = false,
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
    allow_duplicates = false,
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
    allow_duplicates = false,
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

SMODS.Atlas{
    key = 'Slots',
    path = 'JPS.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'slots',
    loc_txt = {
        name = "Joker Poker Slots",
        text = {
            "if a {C:attention}Three of a Kind{} of {C:attention}7s{} is played,",
            "each {C:attention}7{} scored gives {C:money}$#1#{}."
        }
    },
    atlas = 'Slots',
    rarity = 2,
    cost = 7,
    order = 22,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    allow_duplicates = false,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            money = 4
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.money } }
    end,
    calculate = function(self,card,context)
        if context.cardarea == G.play and (context.other_card:get_id() == 7) and next(context.poker_hands["Three of a Kind"]) and not next(context.poker_hands["Four of a Kind"]) and not next(context.poker_hands["Five of a Kind"]) and context.individual then
                return {
                        dollars = card.ability.extra.money,
                        card = card,
                    }
            end
        end
}

SMODS.Atlas{
    key = 'Paint',
    path = 'jokerpaint.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'jokepaint',
    loc_txt = {
        name = "MSPaint Joker",
        text = {
            'The Joker with the software that all',
            '{C:dark_edition}Join The Crowd{} {C:attention}Jokers{} are made with.',
            '{X:mult,C:white}X0.8{} Mult. Horrid to own.',
            '{C:inactive}(better on 1x.){}'
        }
    },
    atlas = 'Paint',
    rarity = 1,
    cost = 2,
    order = 23,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    allow_duplicates = false,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            Xmult = 0.8
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips } }
    end,
    calculate = function(self,card,context)
        if context.joker_main then
                return {
                    Xmult_mod = card.ability.extra.Xmult,
                    message = 'X0.8 Mult',
                    colour = G.C.MULT,
                    sound = 'jtc_xmultloss',
                    card = card,
                }
            end
        end
}

SMODS.Atlas{
    key = 'PinkAndYellow',
    path = 'WITJWPAY.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'pinkandyellow',
    loc_txt = {
        name = "Pink and Yellow Joker",
        text = {
            'played and scored {C:hearts}Hearts{} and {C:diamonds}Diamonds{} give',
            '{C:mult}+2{} Mult and {C:chips}+20{} Chips.',
            '{C:inactive}I blame Dan Hentschel for this.{}'
        }
    },
    atlas = 'PinkAndYellow',
    rarity = 1,
    cost = 4,
    order = 24,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    allow_duplicates = false,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            mult = 2, chips = 20
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult } }
    end,
    calculate = function(self,card,context)
        if context.cardarea == G.play and context.individual then 
            if context.other_card:is_suit("Hearts") or context.other_card:is_suit("Diamonds") then
                return {
                    mult = card.ability.extra.mult,
                    chips = card.ability.extra.chips,
                    card = card,
                }
            end
        end
    end
}

SMODS.Atlas{
    key = 'ArtAce',
    path = 'ArtisticAce.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'artistic',
    loc_txt = {
        name = "Artistic Ace",
        text = {
            '{C:inactive}(OC Joker){}',
            'played and scored {C:attention}Aces{} give',
            '{X:mult,C:white}X1.5{} Mult. {C:mult}-1{} Discard.'
        }
    },
    atlas = 'ArtAce',
    rarity = 2,
    cost = 6,
    order = 25,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    allow_duplicates = false,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            discard_size = -1, Xmult = 1.5
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.discard_size, card.ability.extra.Xmult } }
    end,
    add_to_deck = function(self,card,from_debuff)
        G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.discard_size
    end,
    remove_from_deck = function(self,card,from_debuff)
        G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.discard_size
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.play and context.individual then
            if (context.other_card:get_id() == 14) then
                return {
                    Xmult_mod = card.ability.extra.Xmult,
                    message = 'X1.5 Mult',
                    colour = G.C.MULT,
                    card = card,
                }
            end
        end
    end
}

SMODS.Atlas{
    key = 'Doppel',
    path = 'Doppelganger.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'doppelganger',
    loc_txt = {
        name = "Doppelganger",
        text = {
            '{C:inactive}(OC Joker){}',
            '{C:chips}+3{} Hands per round. {C:mult}halves{} Mult',
            'after played hand has been scored.',
            "{C:inactive}Paha Aikomus has come for you.{}"
        }
    },
    atlas = 'Doppel',
    rarity = 3,
    cost = 6,
    order = 26,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    allow_duplicates = false,
    pos = {x = 0, y = 0},
    soul_pos = {x = 1, y = 0},
    config = { 
        extra = {
            Xmult = 0.5, hand_size = 3
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xmult, card.ability.extra.hand_size } }
    end,
    add_to_deck = function(self,card,from_debuff)
        G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.hand_size
    end,
    remove_from_deck = function(self,card,from_debuff)
        G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.hand_size
    end,
    calculate = function(self,card,context)
        if context.joker_main then
            return {
                Xmult_mod = card.ability.extra.Xmult,
                message = 'Halved!',
                sound = 'jtc_xmultloss',
                color = G.C.MULT,
                card = card,
            }
        end
    end
}

SMODS.Atlas{
    key = 'ruthlessfour',
    path = 'Ruthless4.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'r4',
    loc_txt = {
        name = "Merciless +4",
        text = {
            '{C:attention}+4{} Hand Size.',
            '{C:mult}halves{} Mult at',
            'end of round.'
        }
    },
    atlas = 'ruthlessfour',
    rarity = 3,
    cost = 6,
    order = 27,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    allow_duplicates = false,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            hand_size = 4, Xmult = 0.5
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.hand_size, card.ability.extra.Xmult } }
    end,
    add_to_deck = function(self,card,from_debuff)
        G.hand:change_size(card.ability.extra.hand_size)
    end,
    remove_from_deck = function(self,card,from_debuff)
        G.hand:change_size(-card.ability.extra.hand_size)
    end,
    calculate = function(self,card,context)
        if context.joker_main then
        return {
            Xmult_mod = card.ability.extra.Xmult,
            message = 'Halved!',
            sound = 'jtc_xmultloss',
            colour = G.C.MULT,
            card = card,
        }
    end
end
}

SMODS.Atlas{
    key = 'Dew',
    path = 'DoTheDew.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'dew',
    loc_txt = {
        name = "Do The Dew",
        text = {
            'All played {C:attention}3s{} give {X:mult,C:white}X#1#{} Mult',
            'when scored. {C:green}#2# in #3#{} chance to be',
            '{C:mult}destroyed{} at end of round.',
            '{C:inactive}not a permanent destruction!{}'
        }
    },
    atlas = 'Dew',
    rarity = 2,
    cost = 5,
    order = 28,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = false,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    soul_pos = {x = 1, y = 0},
    config = { 
        extra = {
            Xmult = 1.25, odds = 6
        }
    },
    loc_vars = function(self,info_queue,card)
        return{vars = {card.ability.extra.Xmult, (G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
    end,
    calculate = function(self,card,context)
        if context.individual
        and (context.other_card:get_id() == 3)
        and context.cardarea == G.play then
            return {
                Xmult_mod = card.ability.extra.Xmult,
                message = 'X1.25 Mult',
                colour = G.C.MULT,
                card = card,
                }
            end

            if context.end_of_round and not context.repetition and context.game_over == false and not context.blueprint then
                if pseudorandom('dew') < G.GAME.probabilities.normal / card.ability.extra.odds then
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            play_sound('tarot1')
                            card.T.r = -0.2
                            card:juice_up(0.3, 0.4)
                            card.states.drag.is = true
                            card.children.center.pinch.x = true
                            G.E_MANAGER:add_event(Event({
                                trigger = 'after',
                                delay = 0.3,
                                blockable = false,
                                func = function()
                                    G.jokers:remove_card(card)
                                    card:remove()
                                    card = nil
                                    return true;
                                end
                            }))
                            return true
                        end
                    }))
                    G.GAME.pool_flags.dew_drank = true
                    return {
                        message = 'Drank!',
                        colour = G.C.GREEN
                    }
                else
                    return {
                        message = 'Safe!',
                        colour = G.C.GREEN
                    }
                end
            end
        end
}

SMODS.Atlas{
    key = 'Window',
    path = 'FramedWindow.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'window',
    loc_txt = {
        name = "Framed Window",
        text = {
            '{X:mult,C:white}X#1#{} Unconditional Mult after',
            'hand has been scored. {C:green}#2# in #3#{} chance',
            'to {C:mult}shatter{} at end of round.',
            '{C:attention}only appears once per run.{}'
        }
    },
    atlas = 'Window',
    rarity = 1,
    cost = 4,
    order = 28,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = false,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    no_pool_flag = 'window_broken',
    config = { 
        extra = {
            Xmult = 2, odds = 4
        }
    },
    loc_vars = function(self,info_queue,card)
        return{vars = {card.ability.extra.Xmult, (G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
    end,
    calculate = function(self,card,context)
        if context.joker_main then
            return {
                Xmult_mod = card.ability.extra.Xmult,
                message = 'X2 Mult',
                colour = G.C.MULT,
                card = card,
                }
            end

            if context.end_of_round and not context.repetition and context.game_over == false and not context.blueprint then
                if pseudorandom('window') < G.GAME.probabilities.normal / card.ability.extra.odds then
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            play_sound('tarot1')
                            card.T.r = -0.2
                            card:juice_up(0.3, 0.4)
                            card.states.drag.is = true
                            card.children.center.pinch.x = true
                            G.E_MANAGER:add_event(Event({
                                trigger = 'after',
                                delay = 0.3,
                                blockable = false,
                                func = function()
                                    G.jokers:remove_card(card)
                                    card:remove()
                                    card = nil
                                    return true;
                                end
                            }))
                            return true
                        end
                    }))
                    G.GAME.pool_flags.window_broken = true
                    return {
                        message = 'Broken!',
                        sound = 'jtc_widnow',
                        colour = G.C.MULT
                    }
                else
                    return {
                        message = 'Whew...',
                        colour = G.C.CHIPS
                    }
                end
            end
        end
}

SMODS.Atlas{
    key = 'Hang10',
    path = 'HangTen.png',
    px = 142,
    py = 190
}

SMODS.Joker{
    key = 'hangten',
    loc_txt = {
        name = "Hang Ten",
        text = {
            "{C:inactive}(OC Joker){}",
            "If a played {C:attention}Straight{} contains any cards",
            'in a {C:attention}Ten-high Straight{}, those cards give',
            '{X:mult,C:white}X#1#{} Mult when scored.',
            '{C:inactive}(e.g. 10-S, 9-H, 8-C, 7-D, 6-H = X16.4 Mult.){}',
            '{s:0.8,C:inactive}(does not work with Straight Flushes.){}'
        }
    },
    atlas = 'Hang10',
    rarity = 3,
    cost = 8,
    order = 30,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    allow_duplicates = false,
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
        if context.cardarea == G.play and (context.other_card:get_id() == 10 or context.other_card:get_id() == 9 or context.other_card:get_id() == 8 or context.other_card:get_id() == 7 or context.other_card:get_id() == 6) and next(context.poker_hands["Straight"]) and not next(context.poker_hands["Straight Flush"]) then
                return {
                        Xmult_mod = card.ability.extra.Xmult,
                        message = 'X1.5 Mult',
                        colour = G.C.DARK_EDITION,
                        card = card,
                    }
            end
        end
}

SMODS.Atlas{
    key = 'northnut',
    path = 'NorthernNuts.png',
    px = 142,
    py = 190
}

SMODS.Joker{
    key = 'NorthernNut',
    loc_txt = {
        name = "Northern Nuts",
        text = {
            '{C:inactive}(OC Joker){}',
            'powerless on its own.',
            '{X:mult,C:white}X#1#{} Mult when paired',
            'with {C:attention}Eastern Enigmas.{}'
        }
    },
    atlas = 'northnut',
    rarity = 2,
    cost = 5,
    order = 31,
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
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xmult } }
    end,
    calculate = function(self,card,context)
        if context.joker_main and next(find_joker('j_jtc_EasternEnigma')) then
            return {
                Xmult_mod = card.ability.extra.Xmult,
                message = 'X3 Mult',
                colour = G.C.MULT,
                card = card
            }
            end
        end
}

SMODS.Atlas{
    key = 'eastenigma',
    path = 'EasternEnigmas.png',
    px = 142,
    py = 190
}

SMODS.Joker{
    key = 'EasternEnigma',
    loc_txt = {
        name = "Eastern Enigmas",
        text = {
            '{C:inactive}(OC Joker){}',
            'powerless on its own.',
            '{X:chips,C:white}X#1#{} Chips when paired',
            'with {C:attention}Northern Nuts.{}'
        }
    },
    atlas = 'eastenigma',
    rarity = 2,
    cost = 5,
    order = 32,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            x_chips = 3
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.x_chips } }
    end,
    calculate = function(self,card,context)
        if context.joker_main and next(find_joker('j_jtc_NorthernNut')) then
            return {
                chip_mod =hand_chips * card.ability.extra.x_chips,
                message = 'X3 Chips',
                sound = 'jtc_xchipadd',
                colour = G.C.CHIPS,
                card = card
            }
            end
        end
}

SMODS.Atlas{
    key = 'ToNNT',
    path = 'ToNNT.png',
    px = 106,
    py = 200
}

SMODS.Joker{
    key = 'tonnt',
    loc_txt = {
        name = "{s:0.8}Nonsensically Neat Tomfoolery{}",
        text = {
            '{C:inactive}(Tower Joker, Base-Low Insane){}',
            '{X:tarot,C:white}X1.25{} Double Time at end of hand.',
            '{C:green}Life{} goes down at end of round by {C:attention}1{} and',
            'the {C:attention}amount of cards{} in your hand.',
            '{C:red}shatters{} when its {C:green}Life{} hits {C:red}zero.{}',
            '{C:inactive}Life: #3#{}'

        }
    },
    atlas = 'ToNNT',
    rarity = 2,
    cost = 6,
    order = 51,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    no_pool_flag = 'tonnt_nil',
    config = { 
        extra = {
            Xmult = 1.25, Xchips = 1.25, round = 30, minround = 0
    }
    },
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.Xmult, center.ability.extra.Xchips, center.ability.extra.round, center.ability.extra.minround}}
    end,
    calculate = function(self,card,context)
        if context.joker_main then
            return {
                    chip_mod = hand_chips * card.ability.extra.Xchips,
                    Xmult_mod = card.ability.extra.Xmult,
                    sound = 'jtc_doubletime1',
                    message = 'X1.25 All',
                    color = G.C.PURPLE,
                    remove_default_message = true,
                    card = card,
                }
            end
            if context.end_of_round and not context.repetition and not context.blueprint then
                card.ability.extra.round = card.ability.extra.round - 1
            if card.ability.extra.round <= card.ability.extra.minround then
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            play_sound('tarot1')
                            card.T.r = -0.2
                            card:juice_up(0.3, 0.4)
                            card.states.drag.is = true
                            card.children.center.pinch.x = true
                            G.E_MANAGER:add_event(Event({
                                trigger = 'after',
                                delay = 0.3,
                                blockable = false,
                                func = function()
                                    G.jokers:remove_card(card)
                                    card:remove()
                                    card = nil
                                    return true;
                                end
                            }))
                            return true
                        end
                    }))
                    G.GAME.pool_flags.tonnt_nil = true
                    return {
                        message = 'Shattered!',
                        sound = 'jtc_glassshatter'
                    }
                else
                    return {
                        message = 'Tick...'
                    }
                end
            end
        end
}

SMODS.Atlas{
    key = 'ToCM',
    path = 'ToCM.png',
    px = 112,
    py = 180
}

SMODS.Joker{
    key = 'tocm',
    loc_txt = {
        name = "{s:0.8}Consequential Mistakes: Classic{}",
        text = {
            '{C:inactive}(Tower Joker, High Challenging){}',
            '{C:money}$1{} for every card scored.',
            '{C:green}Life{} goes down by {C:attention}1{} for every',
            'card left in hand, {C:attention}twice{} at end of round.',
            '{C:red}shatters{} when its {C:green}Life{} hits {C:red}zero.{}',
            '{C:inactive}Life: #2#{}'

        }
    },
    atlas = 'ToCM',
    rarity = 2,
    cost = 6,
    order = 52,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    no_pool_flag = 'tocm_nil',
    config = { 
        extra = {
            money = 1, round = 60, minround = 0
    }
    },
    loc_vars = function(self,info_queue,center)
        return{vars = {center.ability.extra.money, center.ability.extra.round, center.ability.extra.minround}}
    end,
    calculate = function(self,card,context)
        if context.individual and context.cardarea == G.play then
            return {
                    dollars = card.ability.extra.money,
                    card = card,
                }
            end
            if context.individual and not context.repetition and not context.blueprint then
            card.ability.extra.round = card.ability.extra.round - 1
            if card.ability.extra.round <= card.ability.extra.minround then
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            play_sound('tarot1')
                            card.T.r = -0.2
                            card:juice_up(0.3, 0.4)
                            card.states.drag.is = true
                            card.children.center.pinch.x = true
                            G.E_MANAGER:add_event(Event({
                                trigger = 'after',
                                delay = 0.3,
                                blockable = false,
                                func = function()
                                    G.jokers:remove_card(card)
                                    card:remove()
                                    card = nil
                                    return true;
                                end
                            }))
                            return true
                        end
                    }))
                    G.GAME.pool_flags.tocm_nil = true
                    return {
                        message = 'Shattered!',
                        sound = 'jtc_glassshatter'
                    }
                else
                    return {
                        message = 'Tick...'
                    }
                end
            end
        end
}

SMODS.Atlas{
    key = 'flowerboys',
    path = 'flowerboys.png',
    px = 142,
    py = 190
}

SMODS.Joker{
    key = 'flowerboys',
    loc_txt = {
        name = "Flower Boys",
        text = {
            '{C:inactive}(OC Joker){}',
            'Gives {X:mult,C:white}X#1#{} Mult to every',
            'played and scored {C:attention}Tropic{} card.'
        }
    },
    atlas = 'flowerboys',
    rarity = 2,
    cost = 6,
    order = 53,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = false,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            Xmult = 1.5,
        }
    },
    loc_vars = function(self,info_queue,card)
        return{vars = {card.ability.extra.Xmult } }
    end,
    calculate = function(self,card,context)
        if context.individual and context.cardarea == G.play and SMODS.get_enhancements(context.other_card)["m_jtc_Tropic"] == true then
                return {
                    Xmult_mod = card.ability.extra.Xmult,
                    message = 'X1.5 Mult',
                    colour = G.C.MULT,
                    card = card,
                    }
                end
            end
}

SMODS.Atlas{
    key = 'Mikael',
    path = 'Mikael.png',
    px = 65,
    py = 95
}

SMODS.Joker{
    key = 'mikael',
    loc_txt = {
        name = "Mikael Card",
        text = {
            '{C:inactive}(OC Joker){}',
            '{X:mult,C:white}X#1#{} Mult. {C:green}#2# in #3#{} chance this',
            'Joker creates a {C:tarot}Justice{} card and a',
            '{C:mult}Brother{} card at end of round.',
            "{C:inactive}'Eyy.. whatchu on abou', man?'{}"
        }
    },
    atlas = 'Mikael',
    rarity = 2,
    cost = 6,
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
            Xmult = 1.5, odds = 6
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
        if pseudorandom('mikael') < G.GAME.probabilities.normal / card.ability.extra.odds then
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
                    card:add_to_deck()
                    G.consumeables:emplace(card)
                    local card = create_card(nil,G.consumeables, nil, nil, nil, nil, 'c_jtc_BrotherCard')
                    card:add_to_deck()
                    G.consumeables:emplace(card)
                  return true;
                end
              }))
              return true
            end
          }))
          G.GAME.pool_flags.mikael = true
          return {
            message = 'Here ya go.'
          }
        else
          return {
            message = 'Nahh...'
          }
        end
    end
end
}

SMODS.Atlas{
    key = 'AmbiguousThoughts',
    path = 'ambiguousthoughts.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'gaygay',
    loc_txt = {
        name = "Ambiguous Thoughts",
        text = {
            '{C:inactive}(OC Joker){}',
            '{C:dark_edition}Polychrome{} cards played in a',
            '{C:attention}Straight{} are retriggered {C:attention}once.{}'
        }
    },
    atlas = 'AmbiguousThoughts',
    rarity = 2,
    cost = 6,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
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
            if next(context.poker_hands["Straight"]) and context.other_card and context.other_card.edition and context.other_card.edition.polychrome == true then
                    return {
                        repetitions = card.ability.extra.repetitions,
                        message = 'Again!',
                        card = card,
                    }
                end
            end
        end
}

SMODS.Atlas{
    key = 'MembersCard',
    path = 'MembersCard.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'membercard',
    loc_txt = {
        name = "Members' Reward Card",
        text = {
            'Gains {C:mult}+3{} Mult for every',
            '{C:red}Benefit{} card played and scored.',
            '(Currently {C:mult}+#1#{} Mult.)'
        }
    },
    atlas = 'MembersCard',
    rarity = 2,
    cost = 6,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = {
        extra = {
            mult = 0, mult_gain = 3
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult_gain } }
    end,
    calculate = function(self,card,context)
        if context.cardarea == G.play and context.individual and SMODS.get_enhancements(context.other_card)["m_jtc_Assist"] == true and not context.blueprint then
            card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_gain
                return {
                    message = "Upgraded!",
                    color = G.C.MONEY,
                    card = card,
                }
            end
        if context.joker_main then
                    return {
                        mult_mod = card.ability.extra.mult,
                        message = "+" .. card.ability.extra.mult .. " Mult",
                    }
                end
            end
}

SMODS.Atlas{
    key = 'indulgence',
    path = 'IndulgentEvergreen.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'Indulgence',
    loc_txt = {
        name = "Indulgence",
        text = {
            '{C:red}destroys{} all {C:attention}Tropic{} cards',
            'played and scored. Gains',
            '{X:mult,C:white}X0.5{} Mult for every card',
            'destroyed this way.',
            '(Currently {X:mult,C:white}X#1#{} Mult.)'
        }
    },
    atlas = 'indulgence',
    rarity = 3,
    cost = 8,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = {
        extra = {
            Xmult = 1, Xmult_mod = 0.5
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xmult, card.ability.extra.Xmult_mod } }
    end,
    calculate = function(self,card,context)
            if context.destroying_card and (context.destroying_card.config.center_key == 'm_jtc_Tropic') then
                card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
                return {
                    remove = true,
                    message = "Fresh Blood...",
                    color = G.C.RED,
                    card = card,
                }
            end
        if context.joker_main then
                    return {
                        Xmult_mod = card.ability.extra.Xmult,
                        message = "X" .. card.ability.extra.Xmult .. " Mult",
                    }
                end
            end
}

SMODS.Atlas{
    key = 'Tomi',
    path = 'Tomi.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'tomi',
    loc_txt = {
        name = "Tomi",
        text = {
            '{C:inactive}(OC Joker){}',
            '{C:attention}Lucky{} cards, regardless on',
            'if they trigger or not, give',
            '{C:money}$10{} and {X:mult,C:white}X2{} Mult.',
            "{C:inactive}'So much for my own fortunes...'{}"
        }
    },
    atlas = 'Tomi',
    rarity = 3,
    cost = 9,
    order = 58,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = {
        extra = {
            dollars = 5, Xmult = 2
        }
    },
    loc_vars = function(self, info_queue, card)
        return { { card.ability.extra.dollars, card.ability.extra.Xmult } }
    end,
    calculate = function(self,card,context)
    if context.cardarea == G.play and context.individual then
        if SMODS.get_enhancements(context.other_card)["m_lucky"] == true then
            return {
                Xmult_mod = card.ability.extra.Xmult,
                message = "X2 Mult",
                color = G.C.RED,
                card = card,
                dollars = card.ability.extra.dollars,
                card = card,
            }
        end
    end
end
}

SMODS.Atlas{
    key = 'legionofsteel',
    path = 'legionofsteel.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'legionofsteel',
    loc_txt = {
        name = "Legion of Steel",
        text = {
            '{C:attention}Steel{} cards are {C:attention}retriggered{}',
            'if held in hand during scoring.'
        }
    },
    atlas = 'legionofsteel',
    rarity = 2,
    cost = 8,
    order = 58,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
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
    if context.cardarea == G.hand and context.repetition and not context.repetition_only then
        if SMODS.get_enhancements(context.other_card)["m_steel"] == true then
                return {
                    repetitions = card.ability.extra.repetitions,
                    message = 'Again!',
                    card = card,
                    }
                end
            end
        end
}

SMODS.Atlas{
    key = 'identityfraud',
    path = 'identityfraud.png',
    px = 152,
    py = 200
}

SMODS.Joker{
    key = 'identityfraud',
    loc_txt = {
        name = "Identity Fraud",
        text = {
            'Copies ability of the {C:attention}Joker{}',
            'to its immediate left.',
            'Can copy applicable',
            '{C:jtc_stunning}Stunning{} and {C:jtc_mythical}Mythical{} Jokers.'
        }
    },
    atlas = 'identityfraud',
    rarity = 3,
    cost = 10,
    order = 58,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    soul_pos = {x = 1, y = 0},
    loc_vars = function(self, info_queue, card)
        return { vars = { } }
    end,
    calculate = function(self, card, context)
        local other_joker = nil
		for i = 1, #G.jokers.cards do
			if G.jokers.cards[i] == card then
				other_joker = G.jokers.cards[i - 1]
			end
		end
		if other_joker and other_joker ~= self then
			context.blueprint = (context.blueprint and (context.blueprint + 1)) or 1
			context.blueprint_card = context.blueprint_card or card

			if context.blueprint > #G.jokers.cards + 1 then
				return
			end

			local other_joker_ret, trig = other_joker:calculate_joker(context)
			if other_joker_ret or trig then
				if not other_joker_ret then
					other_joker_ret = {}
				end
				other_joker_ret.card = context.blueprint_card or card
				other_joker_ret.colour = G.C.BLUE
				other_joker_ret.no_callback = true
				return other_joker_ret
			end
		end
    end
}

SMODS.Atlas{
    key = 'burneddvd',
    path = 'burneddvd.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'milkyqretail',
    loc_txt = {
        name = "{s:0.8}One Copy of MilkyQ - Retail{}",
        text = {
            '{C:dark_edition}Join The Crowd{} {C:attention}Enhancements{}',
            'are retriggered {C:attention}twice.{}'
        }
    },
    atlas = 'burneddvd',
    rarity = 3,
    cost = 8,
    order = 58,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = {
        extra = {
            repetitions = 2
        }
    },
    loc_vars = function(self, info_queue, card)
        return { { card.ability.extra.repetitions } }
    end,
    calculate = function(self,card,context)
    if context.cardarea == G.play and context.repetition and not context.repetition_only then
        if SMODS.get_enhancements(context.other_card)["m_jtc_Tropic"] == true or SMODS.get_enhancements(context.other_card)["m_jtc_Assist"] == true or SMODS.get_enhancements(context.other_card)["m_jtc_DVD"] == true then
            return {
                repetitions = card.ability.extra.repetitions,
                message = 'Again!',
                card = card,
            }
        end
    end
end
}

SMODS.Atlas{
    key = 'farfromperfect',
    path = 'farfromperfect.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'alongway',
    loc_txt = {
        name = "A Long, Long Way",
        text = {
            '{X:tarot,C:white}X1.25{} Double Time after each hand played.',
            'Gives {C:money}$6{} at end of each round.',
            "{C:inactive}Thanks for playing! Cheers!{}",
            "{C:inactive}This is the last JTC Joker for now, lol.{}",
            '{C:inactive}-MilkyQ / Dynaleet{}'
        }
    },
    atlas = 'farfromperfect',
    rarity = 2,
    cost = 8,
    order = 58,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            Xmult = 1.25, x_chips = 1.25, money = 6
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xmult, card.ability.extra.money } }
    end,
        calc_dollar_bonus = function(self, card)
        local bonus = card.ability.extra.money
        if bonus > 0 then return bonus end
    end,
    calculate = function(self,card,context)
        if context.joker_main then
            return {
                xmult = card.ability.extra.Xmult,
                chips = 2 * hand_chips,
                message = "X2 All",
                sound = 'jtc_doubletime1',
                colour = G.C.PURPLE,
                remove_default_message = true
              }
        end
    end
}

-- STUNNING JOKERS 

SMODS.Atlas{
    key = 'TheComedian',
    path = 'thecomedian.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'thecomedian',
    loc_txt = {
        name = "The Comedian",
        text = {
            'Creates a random {C:red}Crowd{} card',
            'when entering a blind.',
            '{C:inactive}Can generate Kingpin and Angel,{}',
            '{C:inactive}though chances should be unlikely.{}',
            '{C:inactive}(must have room.){}'
        }
    },
    atlas = 'TheComedian',
    rarity = 'jtc_stunning',
    cost = 15,
    order = 55,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    loc_vars = function(self, info_queue, card)
        return { vars = {  }}
    end,
    calculate = function(self,card,context)
        if context.setting_blind and not (context.blueprint_card or self).getting_sliced then
            if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                local new_card = create_card('Crowd', G.consumeables)
                new_card:add_to_deck()
                G.consumeables:emplace(new_card)
        end
    end
end
}

SMODS.Atlas{
    key = 'TravelTicket',
    path = 'travelticket.png',
    px = 97,
    py = 131
}

SMODS.Joker{
    key = 'travelticket',
    loc_txt = {
        name = "Travel Ticket",
        text = {
            '{X:chips,C:white}X#1#{} Chips for every',
            '{C:attention}Tropic{} card played and scored.',
            '{C:green}#2# in #3#{} chance this Joker',
            'creates a {C:red}Tourist{} card.'
        }
    },
    atlas = 'TravelTicket',
    rarity = 'jtc_stunning',
    cost = 10,
    order = 56,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = false,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            x_chips = 2, odds = 6
        }
    },
    loc_vars = function(self,info_queue,card)
        return{vars = { card.ability.extra.x_chips, (G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
    end,
    calculate = function(self,card,context)
        if context.individual and context.cardarea == G.play and SMODS.get_enhancements(context.other_card)["m_jtc_Tropic"] == true then
                return {
                    chip_mod = hand_chips * card.ability.extra.x_chips,
                    message = 'X2 Chips',
                    colour = G.C.CHIPS,
                    sound = 'jtc_xchipadd',
                    card = card,
                    }
                end

            if context.end_of_round and not context.repetition and context.game_over == false and not context.blueprint then
            if pseudorandom('travel') < G.GAME.probabilities.normal / card.ability.extra.odds then
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
                    local card = create_card(nil,G.consumeables, nil, nil, nil, nil, 'c_jtc_TouristCard')
                    card:add_to_deck()
                    G.consumeables:emplace(card)
                  return true;
                end
              }))
              return true
            end
          }))
          G.GAME.pool_flags.travel = true
          return {
            message = 'Boarding!'
          }
        else
          return {
            message = 'Waiting...'
          }
        end
    end
end
}

SMODS.Atlas{
    key = 'MMM',
    path = 'MMM.png',
    px = 100,
    py = 134
}

SMODS.Joker{
    key = 'mechmuseum',
    loc_txt = {
        name = "{s:0.8}Milky's Mechanical Museum{}",
        text = {
            '{C:inactive}(OC Joker){}',
            'If played poker hand is a {C:attention}Five of a Kind{},',
            'this Joker creates {C:spectral}Soul{} cards adjacent to',
            'the amount of {C:attention}Consumable slots{} you have,' ,
            'then immediately {C:red}self destructs.{}',
            '{C:inactive}No ones better than you!{}'
        }
    },
    atlas = 'MMM',
    rarity = 'jtc_stunning',
    display_size = { w = 100, h = 100 },
    cost = 12,
    order = 57,
    unlocked = true,
    discovered = false,
    blueprint_compat = false,
    brainstorm_compat = false,
    eternal_compat = false,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    no_pool_flag = 'museum',
    loc_vars = function(self,info_queue,card)
    return{vars = { }}
    end,
    calculate = function(self,card,context)
        if context.cardarea == G.play and next(context.poker_hands["Five of a Kind"]) and not context.repetition and not (context.blueprint_card or self).getting_sliced then
                if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                    local new_card = create_card(nil,G.consumeables, nil, nil, nil, nil, 'c_soul')
                    new_card:add_to_deck()
                    G.consumeables:emplace(new_card)
                        G.E_MANAGER:add_event(Event({
                        func = function()
                            play_sound('tarot1')
                            card.T.r = -0.2
                            card:juice_up(0.3, 0.4)
                            card.states.drag.is = true
                            card.children.center.pinch.x = true
                            G.E_MANAGER:add_event(Event({
                                trigger = 'after',
                                delay = 0.3,
                                blockable = false,
                                func = function()
                                    G.jokers:remove_card(card)
                                    card:remove()
                                    card = nil
                                    return true;
                                end
                            }))
                            return true
                        end
                    }))
                    G.GAME.pool_flags.museum = true
                    return {
                        message = 'Goodbye!'
                    }
            end
        end
    end
}

SMODS.Atlas{
    key = 'ManOfWar',
    path = 'manofwar.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'manofwar',
    loc_txt = {
        name = "...And Justice for All",
        text = {
            '{C:inactive}(OC Joker){}',
            'all played and scored {C:attention}Glass{} cards',
            'are retriggered {C:attention}once.{}',
            "{C:inactive}'Justice is dead, and mankind betrayed them.'{}"
        }
    },
    atlas = 'ManOfWar',
    rarity = 'jtc_stunning',
    cost = 10,
    order = 58,
    unlocked = true,
    discovered = false,
    blueprint_compat = true,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
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
        if SMODS.get_enhancements(context.other_card)["m_glass"] == true then
                return {
                    repetitions = card.ability.extra.repetitions,
                    message = 'MORE!',
                    card = card,
                    }
                end
            end
        end
}

SMODS.Atlas{
    key = 'Osiris',
    path = 'Osiris.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'osiris',
    loc_txt = {
        name = "Osiris",
        text = {
            '{C:inactive}(OC Joker){}',
            '{C:purple}Balances{} {C:chips}Chips{} with {C:mult}Mult{}',
            'after each hand played.',
            "{C:inactive}'I'm sure this'll be a doozy.'{}"
        }
    },
    atlas = 'Osiris',
    rarity = 'jtc_stunning',
    cost = 13,
    order = 58,
    unlocked = true,
    discovered = false,
    blueprint_compat = false,
    brainstorm_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    soul_pos = {x = 1, y = 0},
    config = {
        extra = {

        }
    },
    loc_vars = function(self, info_queue, card)
        return { { } }
    end,
    calculate = function(self,card,context)
    if context.joker_main then
        return {
                    chips = hand_chips - hand_chips - hand_chips + mult,
                    remove_default_message = true,
                    message = 'Balanced!',
                    sound = 'gong',
                    color = G.C.PURPLE,
                    card = card,
                }
            end
        end
}

SMODS.Atlas{
    key = 'HonestJesting',
    path = 'honestjesting.png',
    px = 71,
    py = 95
}

SMODS.Joker{
    key = 'honestjesting',
    loc_txt = {
        name = "Honest Jesting",
        text = {
            '{C:inactive}(OC Joker){}',
            '{C:dark_edition}+2{} Joker slots.',
        }
    },
    atlas = 'HonestJesting',
    rarity = 'jtc_stunning',
    cost = 15,
    order = 58,
    unlocked = true,
    discovered = false,
    blueprint_compat = false,
    brainstorm_compat = false,
    eternal_compat = false,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            joker_size = 2
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.joker_size} }
    end,
    add_to_deck = function(self,card,from_debuff)
        G.jokers.config.card_limit = G.jokers.config.card_limit + card.ability.extra.joker_size
    end,
    remove_from_deck = function(self,card,from_debuff)
        G.jokers.config.card_limit = G.jokers.config.card_limit - card.ability.extra.joker_size
    end,
}

-- LEGENDARIES

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
            Xmult = 20, odds = 4
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
            odds = 4
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
                sound = 'jtc_xchipadd',
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
    blueprint_compat = false,
    brainstorm_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    pos = {x = 0, y = 0},
    soul_pos = {x = 1, y = 0},
    config = { 
        extra = {
            money = 35
    }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.money } }
    end,
    calc_dollar_bonus = function(self, card)
    local bonus = card.ability.extra.money
    if bonus > 0 then return bonus end
    end
}

SMODS.Atlas{
    key = 'Dante',
    path = "NewDante.png",
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
            "{C:inactive}(A, 2, 3, 4, 5, 6, 7, 8, 9.){}",
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
    soul_pos = {x = 1, y = 0},
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
path = "NewVirgil.png",
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
        "{C:inactive}(A, 2, 3, 4, 5, 6, 7, 8, 9.){}",
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
soul_pos = {x = 1, y = 0},
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
            message = 'X2 Chips',
            sound = 'jtc_xchipadd',
            color = G.C.CHIPS,
            card = context.other_card
            }
        end
    end

}

SMODS.Atlas{
    key = 'Marc',
    path = "NewMarc.png",
    px = 71,
    py = 95
    }

SMODS.Joker{
    key = 'marc',
    loc_txt = {
        name = "- Marc -",
        text = {
            '{C:inactive}(OC Joker){}',
            'Gives {X:mult,C:white}X#1#{} Mult and a {C:attention}retrigger{}',
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
    soul_pos = {x = 1, y = 0},
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
    path = "NewPreston.png",
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
            'recieve {X:mult,C:white}X#1#{} Mult and {X:chips,C:white}X#1#{} Chips.',
            '{C:attention}Fish hands:{} Two Pair, Three of a Kind',
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
    soul_pos = {x = 1, y = 0},
    config = { 
        extra = {
            Xmult = 2, Xchips = 2
    }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xmult, card.ability.extra.Xchips } }
    end,
    calculate = function(self,card,context)
        if context.cardarea == G.play and not context.blueprint and not context.repetition then
            if next(context.poker_hands["Two Pair"]) or next(context.poker_hands["Three of a Kind"]) then
                return {
                        xmult = card.ability.extra.Xmult,
                        chip_mod = hand_chips * card.ability.extra.Xchips,
                        message = 'X2 Chips',
                        sound = 'jtc_xchipadd',
                        color = G.C.TAROT,
                        card = card,
                    } --note to self: learn how to make it so that things with full houses, four-kinds and five-kinds are excluded from the pool.
                end
            end
        end
}

SMODS.Atlas{
    key = 'Dibbles',
    path = "NewDibbles.png",
    px = 71,
    py = 95
    }

SMODS.Joker{
    key = 'dibbles',
    loc_txt = {
        name = "- Dibbles -",
        text = {
            '{C:inactive}(OC Joker){}',
            'Gives {X:mult,C:white}X#1#{} Mult and a {C:attention}retrigger{}',
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
    soul_pos = {x = 1, y = 0},
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
        path = "NewRose.png",
        px = 71,
        py = 95
        }
    
    SMODS.Joker{
        key = 'rose',
        loc_txt = {
            name = "- Rose -",
            text = {
                '{C:inactive}(OC Joker){}',
                'Gives {X:mult,C:white}X#1#{} Mult and a {C:attention}retrigger{}',
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
        soul_pos = {x = 1, y = 0},
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
            path = "NewJasper.png",
            px = 71,
            py = 95
            }
        
        SMODS.Joker{
            key = 'jasper',
            loc_txt = {
                name = "- Jasper -",
                text = {
                    '{C:inactive}(OC Joker){}',
                    'Gives {X:mult,C:white}X#1#{} Mult and a {C:attention}retrigger{}',
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
            soul_pos = {x = 1, y = 0},
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
                    message = "X1.5 All",
                    sound = 'jtc_orchestrahit',
                    remove_default_message = true
                }
            end
        end
}

SMODS.Atlas{
    key = 'Kai',
    path = "Kai.png",
    px = 71,
    py = 95
    }

SMODS.Joker{
    key = 'kai',
    loc_txt = {
        name = "- Kai -",
        text = {
            '{C:inactive}(OC Joker){}',
            'for every card {C:attention}played{}, this Joker',
            'gains {X:chips,C:white}X0.1{} Chips. (Currently {X:chips,C:white}X#1#{} Chips.)',
            "{C:inactive}'Glad to be at your service!'{}"
        }
    },
    atlas = 'Kai',
    rarity = 4,
    cost = 20,
    order = 57,
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
            x_chips = 1, x_chip_mod = 0.1
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.x_chips } }
    end,
    calculate = function(self,card,context)
        if context.cardarea == G.play and not context.blueprint and not context.individual then
            card.ability.extra.x_chips = card.ability.extra.x_chips + card.ability.extra.x_chip_mod
            return {
                message = 'Upgraded!',
                colour = G.C.DARK_EDITION,
                card = card,
            }
        end
    if context.joker_main and card.ability.extra.x_chips > 1 then
        return {
            chip_mod = hand_chips * card.ability.extra.x_chips,
            message = 'X' .. card.ability.extra.x_chips,
            sound = 'jtc_xchipadd',
            color = G.C.CHIPS,
            card = card,
        }
            end
        end
}

SMODS.Atlas{
    key = 'Beatrice',
    path = "Beatrice.png",
    px = 71,
    py = 95
    }

SMODS.Joker{
    key = 'beatrice',
    loc_txt = {
        name = "- Beatrice -",
        text = {
            '{C:inactive}(OC Joker){}',
            '{C:money}$#1#{} for every',
            '{C:attention}Ace{} through {C:attention}9{} played and scored.',
            "{C:inactive}(A, 2, 3, 4, 5, 6, 7, 8, 9.){}",
            "{C:inactive}'paid, laid, and slayin'. thats my motto for ya.'{}"
        }
    },
    atlas = 'Beatrice',
    rarity = 4,
    cost = 20,
    order = 58,
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
            money = 5
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.money } }
    end,
    calculate = function(self,card,context)
        if context.individual
        and (context.other_card:get_id() == 14 or context.other_card:get_id() == 2 or context.other_card:get_id() == 3 or context.other_card:get_id() == 4 or context.other_card:get_id() == 5 or context.other_card:get_id() == 6 or context.other_card:get_id() == 7 or context.other_card:get_id() == 8 or context.other_card:get_id() == 9)
        and context.cardarea == G.play then
            return {
                dollars = card.ability.extra.money,
                card = card,
            }
        end
    end
}

SMODS.Atlas{
    key = 'Tuscan',
    path = "Tuscan.png",
    px = 71,
    py = 95
    }

SMODS.Joker{
    key = 'tuscan',
    loc_txt = {
        name = "- Tuscan -",
        text = {
            '{C:inactive}(OC Joker){}',
            'for every card {C:attention}discarded{}, this Joker',
            'gains {X:mult,C:white}X0.2{} Mult. (Currently {X:mult,C:white}X#1#{} Mult.)',
            "{C:inactive}'Try it on, Dipshit!'{}"
        }
    },
    atlas = 'Tuscan',
    rarity = 4,
    cost = 20,
    order = 59,
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
            Xmult = 1, Xmult_mod = 0.2
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xmult } }
    end,
    calculate = function(self,card,context)
        if context.discard and not context.blueprint and not context.individual then
            card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
            return {
                message = 'Amped!',
                colour = G.C.DARK_EDITION,
                card = card,
            }
        end
    if context.joker_main and card.ability.extra.Xmult > 1 then
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
    key = 'j.err',
    path = "j.err.png",
    px = 71,
    py = 95
    }

SMODS.Joker{
    key = 'Jerr',
    loc_txt = {
        name = "- j.err -",
        text = {
            '{C:inactive}(OC Joker){}',
            '{C:attention}Odd-numbered{} cards give {X:mult,C:white}X2{} Mult.',
            '{C:attention}Even-numbered{} cards give {X:chips,C:white}X2{} Chips.',
            "{C:inactive}'Your gambling addiction makes me sick.'{}"
        }
    },
    atlas = 'j.err',
    rarity = 4,
    cost = 20,
    order = 60,
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
            Xmult = 2, x_chips = 2
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xmult, card.ability.extra.x_chips } }
    end,
    calculate = function(self,card,context)
        if context.cardarea == G.play and context.individual then
            if (context.other_card:get_id() == 14 or context.other_card:get_id() == 3 or context.other_card:get_id() == 5 or context.other_card:get_id() == 7 or context.other_card:get_id() == 9) then
                return {
                    Xmult_mod = card.ability.extra.Xmult,
                    message = 'X' .. card.ability.extra.Xmult,
                    color = G.C.MULT,
                    card = card,
                }
            end
            if (context.other_card:get_id() == 2 or context.other_card:get_id() == 4 or context.other_card:get_id() == 6 or context.other_card:get_id() == 8 or context.other_card:get_id() == 10) then
                return {
                    chip_mod = hand_chips * card.ability.extra.x_chips,
                     message = 'X' .. card.ability.extra.x_chips,
                    sound = 'jtc_xchipadd',
                    color = G.C.CHIPS,
                    card = card,
                }
            end
        end
    end
}

-- MYTHICALS 

SMODS.Atlas{
    key = 'Supreme',
    path = "Supreme.png",
    px = 142,
    py = 190
    }

SMODS.Joker{
    key = 'supreme',
    loc_txt = {
        name = "{C:tarot}Supreme{}",
        text = {
            '{C:inactive}(OC Joker){}',
            '{X:tarot,C:white}X#1#{} Double Time and {C:attention}two{} retriggers',
            'for {C:dark_edition}ALL{} played and scored cards.',
            '"{C:mult}i am the end... and i have come for you, pilgrim.{}"'
        }
    },
    atlas = 'Supreme',
    rarity = 'jtc_mythical',
    cost = 50,
    order = 100,
    unlocked = true,
    discovered = false,
    blueprint_compat = false,
    brainstorm_compat = false,
    eternal_compat = false,
    perishable_compat = false,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            Xmult = 2, Xchips = 2, repetitions = 2
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xmult, card.ability.extra.repetitions } }
    end,
    calculate = function(self,card,context)
        if context.cardarea == G.play and context.repetition and not context.repetition_only then
            return {
                    message = 'Again!',
                    repetitions = card.ability.extra.repetitions,
                    card = card,
                }
        elseif context.individual then
            if context.cardarea == G.play then
            return {
                colour = G.C.PURPLE,
                    Xmult_mod = card.ability.extra.Xmult,
                    chips = 2 * hand_chips,
                    message = "X2 All",
                    sound = 'jtc_doubletime1',
                    remove_default_message = true,
                    card = card,
                }
            end
        end
    end
}

SMODS.Atlas{
    key = 'DoubleTimeEX',
    path = "DoubleTimeEX.png",
    px = 71,
    py = 95
    }

SMODS.Joker{
    key = 'doubletimeEX',
    loc_txt = {
        name = "Double Time {C:dark_edition}EX{}",
        text = {
            '{X:dark_edition,C:white}^#1#{} Double Time.',
            '{C:inactive}^2 Mult and ^2 Chips, Simulataneously.{}'
        }
    },
    atlas = 'DoubleTimeEX',
    rarity = 'jtc_mythical',
    cost = 50,
    order = 101,
    unlocked = true,
    discovered = false,
    blueprint_compat = false,
    brainstorm_compat = false,
    eternal_compat = false,
    perishable_compat = false,
    pos = {x = 0, y = 0},
    soul_pos = {x = 1, y = 0},
    config = { 
        extra = {
            Emult = 2, Echips = 2
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Emult } }
    end,
    calculate = function(self,card,context)
        if context.joker_main then
            return {
                    mult_mod = mult ^ card.ability.extra.Emult,
                    chips = hand_chips ^ card.ability.extra.Echips,
                    message = "^2 All",
                    sound = 'jtc_doubletime2',
                    colour = G.C.PURPLE,
                    remove_default_message = true,
                    card = card,
                }
            end
        end
}


SMODS.Atlas{
    key = 'Prismatica',
    path = "Prismatica.png",
    px = 71,
    py = 95
    }

SMODS.Joker{
    key = 'prismatica',
    loc_txt = {
        name = "{C:red}Pr{C:attention}is{C:green}ma{C:chips}ti{C:tarot}ca",
        text = {
            '{C:inactive}(OC Joker){}',
            'All played and scored cards with',
            '{C:dark_edition}Polychrome{} edition give {X:mult,C:white}X#1#{} Mult.',
            'Creates a {C:red}Mosaic{} card at end of round,',
            'regardless of space.',
            "{C:inactive}'fear me not, for i have come to save you, my child.'{}",
        }
    },
    atlas = 'Prismatica',
    rarity = 'jtc_mythical',
    cost = 50,
    order = 102,
    unlocked = true,
    discovered = false,
    blueprint_compat = false,
    brainstorm_compat = false,
    eternal_compat = false,
    perishable_compat = false,
    pos = {x = 0, y = 0},
    soul_pos = {x = 1, y = 0},
    config = { 
        extra = {
            Xmult = 10
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xmult } }
    end,
    calculate = function(self,card,context)
        if context.cardarea == G.play and context.individual and context.other_card and context.other_card.edition and context.other_card.edition.polychrome == true and not context.repetition then
            return {
                Xmult_mod = card.ability.extra.Xmult,
                message = 'X10 Mult',
                sound = 'jtc_editionadd',
                color = G.C.DARK_EDITION,
                card = card,
            }
        end
        if context.end_of_round and not context.repetition and context.game_over == false and not context.blueprint then
            local card = create_card(nil,G.consumeables, nil, nil, nil, nil, 'c_jtc_MosaicCard')
            card:add_to_deck()
            G.consumeables:emplace(card)
            return {
                message = "Blessed!",
                color = G.C.PURPLE,
                card = card,
            }
        end
    end
}

SMODS.Atlas{
    key = 'Cerebus',
    path = "Cerebus.png",
    px = 71,
    py = 95
    }

SMODS.Joker{
    key = 'cerebus',
    loc_txt = {
        name = "{C:red}Cerebus{}",
        text = {
            '{C:inactive}(OC Joker){}',
            'All played and scored cards with',
            '{C:dark_edition}Negative{} edition give {X:chips,C:white}X#1#{} Chips.',
            'Creates two {C:dark_edition}Negative{} {C:red}Crowd{} cards at end of round,',
            "{C:inactive}'i have come to wreak havoc upon these lands. fear me.'{}",
        }
    },
    atlas = 'Cerebus',
    rarity = 'jtc_mythical',
    cost = 50,
    order = 103,
    unlocked = true,
    discovered = false,
    blueprint_compat = false,
    brainstorm_compat = false,
    eternal_compat = false,
    perishable_compat = false,
    pos = {x = 0, y = 0},
    soul_pos = {x = 1, y = 0},
    config = { 
        extra = {
            x_chips = 5
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.x_chips } }
    end,
    calculate = function(self,card,context)
        if context.cardarea == G.play and context.individual and context.other_card and context.other_card.edition and context.other_card.edition.negative == true and not context.repetition then
            return {
                chip_mod = hand_chips - hand_chips * card.ability.extra.x_chips,
                message = 'X5 Chips',
                sound = 'jtc_xchipadd',
                color = G.C.DARK_EDITION,
                card = card,
            }
        end
        if context.end_of_round and not context.repetition and context.game_over == false and not context.blueprint then
            local card = create_card(nil,G.consumeables, nil, nil, nil, nil, 'c_jtc_CrowdCard')
            card:set_edition('e_negative', true)
            card:add_to_deck()
            G.consumeables:emplace(card)
            local card = create_card(nil,G.consumeables, nil, nil, nil, nil, 'c_jtc_CrowdCard')
            card:set_edition('e_negative', true)
            card:add_to_deck()
            G.consumeables:emplace(card)
            return {
                message = "Cursed!",
                color = G.C.RED,
                card = card,
            }
        end
    end
}

SMODS.Atlas{
    key = 'AbredawnianRunes',
    path = "AbredawnianRunes.png",
    px = 71,
    py = 95
    }

SMODS.Joker{
    key = 'Archipelago',
    loc_txt = {
        name = "{C:legendary}Abredawnian Runes{}",
        text = {
            '{C:green}#1# in #2#{} chance to create',
            'a random {C:legendary}Legendary{} at',
            'end of round, regardless of space.'
        },
    },
    atlas = 'AbredawnianRunes',
    rarity = 'jtc_mythical',
    cost = 50,
    order = 104,
    unlocked = true,
    discovered = false,
    blueprint_compat = false,
    brainstorm_compat = false,
    eternal_compat = false,
    perishable_compat = false,
    allow_duplicates = false,
    pos = {x = 0, y = 0},
    config = { 
        extra = {
            odds = 4
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { (G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
    end,
    calculate = function(self,card,context)
    if context.end_of_round and not context.repetition and context.game_over == false and not context.blueprint then
            if pseudorandom('archipelago') < G.GAME.probabilities.normal / card.ability.extra.odds then
                G.E_MANAGER:add_event(Event({
                            trigger = 'after',
                            delay = 0.3,
                            blockable = false,
                            func = function()
                                play_sound("timpani")
                                local card = create_card("Joker", G.jokers, 4, nil, nil, nil, nil, "jtc_theshmuck")
                                card:add_to_deck()
                                G.jokers:emplace(card)
                                card:juice_up(0.3, 0.5)
                                return true;
                            end
                        }))
                G.GAME.pool_flags.archipelago_summon = true
                return {
                    message = 'Activated!',
                    colour = G.C.DARK_EDITION
                }
            else
                return {
                    message = 'Illegible...',
                    colour = G.C.RED
                }
            end
        end
    end
}

----------------------------------------------
------------MOD CODE END----------------------