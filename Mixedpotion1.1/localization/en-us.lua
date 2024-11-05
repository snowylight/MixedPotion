return {
    descriptions = {
        Joker = {
            j_mipo_kazakus={
                name="Kazakus",
                text={
                    "When {C:attention}Blind{} is selected",
                    "If you don't have the same joker",
                    "Create a powerful {C:potion}Potion{} card",
                    "that mixes {C:mult}all effects",
                    "{C:inactive}(Must have room)",
                },
            },
            j_mipo_unlicensed_apothecary={
                name="Unlicensed Apothecary",
                text={
                    "If you skip a {C:potion}Potion Pack{} directly",
                    "gain {C:money}dollars{} equal to the number of choices",
                    "mix all the {C:potion}Potion{} cards in pack",
                    "add mixture to consumable slot",
                    "{C:inactive}(Must have room)",
                },
            },
            j_mipo_kabal_chemist={
                name="Kabal Chemist",
                text={
                    "{X:mult,C:white} X#1# {} Mult",
                    "change to provide",
                    "{X:mult,C:white} X#2# {} Mult if any {C:potion}Potion{}",
                    "cards have been used this run",
                },
            },
            j_mipo_potion_vendor={
                name="Potion Vendor",
                text={
                    "When {C:attention}Blind{} is skipped",
                    "create a random basic {C:potion}Potion{} card",
                    "{C:inactive}(Must have room)",
                },
            },
            j_mipo_cloakscale_chemist={
                name="Cloakscale Chemist",
                text={
                    "Whenever a {C:potion}Potion{} card is used",
                    "{C:attention}double{} the mult of this card",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
                },
            },
        },
        Potion = {
            c_mipo_potion1 = {
                name = "Netherbloom",
                text = {
                    ''
                }
            },
            c_mipo_potion2 = {
                name = "Shadow Oil",
                text = {
                    ''
                }
            },
            c_mipo_potion3 = {
                name = "Kingsblood",
                text = {
                    ''
                }
            },
            c_mipo_potion4 = {
                name = "Goldthorn",
                text = {
                    ''
                }
            },
            c_mipo_potion5 = {
                name = "Icecap",
                text = {
                    ''
                }
            },
            c_mipo_potion6 = {
                name = "Felbloom",
                text = {
                    ''
                }
            },
            c_mipo_potion7 = {
                name = "Stonescale Oil",
                text = {
                    ''
                }
            },
            c_mipo_potion8 = {
                name = "Heart of Fire",
                text = {
                    ''
                }
            },
            c_mipo_potion9 = {
                name = "Ichor of Undeath",
                text = {
                    ''
                }
            },
        },
        Other = {
            potion_card={
                name = 'Potion',
                text = {
                    '{C:potion}Mixed{} special consumable card',
                    'can only be used in {C:attention}Blind',
                },
            },
            p_mipo_potionpack1={
                name = 'Potion Pack',
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2#{C:potion} Potion{} cards to {C:potion}mix",
                    'add mixture to consumable slot',
                },
            },
            p_mipo_potionpack2={
                name = 'Mega Potion Pack',
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2#{C:potion} Potion{} cards to {C:potion}mix",
                    'add mixture to consumable slot',
                },
            },
        },
    },
    misc={
        dictionary = {
            k_potion = "Potion",
            b_potion_cards = "Potion",
            k_potion_pack = "Potion Pack",
            k_plus_potion = "+1 Potion Card",
            k_potion_mix = "Mix",
            k_cloakscale_chemist = "double",
            k_choose_mix = "Choose and Mix",
            k_potion1 = "+1 Hand",
            k_potion2 = "+1 Discard",
            k_potion3 = "+$8",
            k_potion4 = "Draw 2 cards",
            k_potion5 = "Gain a random enhanced card",
            k_potion6 = "Copy the leftmost card",
            k_potion7 = "Upgrade the level of the last played poker hand",
            k_potion8 = "Gain a Coupon Tag",
            k_potion9 = "Gain a negative The Wheel of Fortune",
        },
    },
}