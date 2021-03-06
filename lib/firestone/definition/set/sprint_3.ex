defmodule Firestone.Definition.Set.Sprint_3 do
  def entities,
    do: [
      %{
        artist: "Sean McNally",
        attack: 1,
        class: :neutral,
        collectible: true,
        cost: 3,
        dbf_id: 39453,
        description: "<b>Stealth</b>\nAt the end of your turn, summon a 1/1 Steward.",
        elite: true,
        flavor:
          "Moroes runs an army of stewards, but still ends up inflating the balloons himself.",
        game_id: "KAR_044",
        health: 1,
        mechanics: ["STEALTH", "TRIGGER_VISUAL"],
        name: "Moroes",
        rarity: :legendary,
        set: :kara,
        type: :minion
      },
      %{
        artist: "Jim Nelson",
        attack: 3,
        class: :priest,
        collectible: true,
        cost: 2,
        dbf_id: 1936,
        description: "<b>Battlecry:</b> Give a minion -2 Attack this turn.",
        flavor:
          "After the debacle of the Gnomish World Enlarger, gnomes are wary of size-changing inventions.",
        game_id: "GVG_011",
        health: 2,
        mechanics: ["BATTLECRY"],
        name: "Shrinkmeister",
        rarity: :common,
        set: :gvg,
        type: :minion
      },
      %{
        artist: "Ralph Horsley",
        class: :mage,
        collectible: true,
        cost: 4,
        dbf_id: 315,
        description: "Deal $6 damage.",
        flavor:
          "This spell is useful for burning things.  If you're looking for spells that toast things, or just warm them a little, you're in the wrong place.",
        game_id: "CS2_029",
        name: "Fireball",
        rarity: :free,
        set: :core,
        type: :spell
      },
      %{
        artist: "Luca Zontini",
        attack: 1,
        class: :neutral,
        collectible: true,
        cost: 1,
        dbf_id: 242,
        description: "<b>Battlecry:</b> Give a minion +2 Attack this turn.",
        faction: :alliance,
        flavor: "ADD ME TO YOUR DECK, MAGGOT!",
        game_id: "CS2_188",
        health: 1,
        mechanics: ["BATTLECRY"],
        name: "Abusive Sergeant",
        rarity: :common,
        set: :expert1,
        type: :minion
      },
      %{
        class: :neutral,
        dbf_id: 809,
        description: "This minion has +2 Attack this turn.",
        game_id: "CS2_188o",
        mechanics: ["TAG_ONE_TURN_EFFECT"],
        name: "'Inspired'",
        set: :expert1,
        type: :enchantment
      },
      %{
        artist: "Jim Nelson",
        class: :paladin,
        collectible: true,
        cost: 1,
        dbf_id: 2648,
        description: "<b>Secret:</b> When your turn starts, give your minions +1/+1.",
        flavor:
          "Competition can be an inspiration to improve oneself.  Or kill all the competitors.",
        game_id: "AT_073",
        mechanics: ["SECRET"],
        name: "Competitive Spirit",
        rarity: :rare,
        set: :tgt,
        type: :spell
      },
      %{
        class: :neutral,
        dbf_id: 2849,
        description: "+1/+1.",
        game_id: "AT_073e",
        name: "Competitive Spirit",
        set: :tgt,
        type: :enchantment
      },
      %{
        artist: "Sean O’Daniels",
        attack: 0,
        class: :neutral,
        collectible: true,
        cost: 3,
        dbf_id: 1658,
        description:
          "[x]At the start of your turn,\nswap this minion with a\n   random one in your hand.",
        flavor: "WARNING.  WARNING.  WARNING.",
        game_id: "EX1_006",
        health: 3,
        mechanics: ["TRIGGER_VISUAL"],
        name: "Alarm-o-Bot",
        rarity: :rare,
        set: :expert1,
        type: :minion
      },
      %{
        artist: "Wayne Reynolds",
        attack: 5,
        class: :mage,
        collectible: true,
        cost: 7,
        dbf_id: 1080,
        description: "Whenever you cast a spell, add a 'Fireball' spell to your hand.",
        elite: true,
        flavor:
          "Antonidas was the Grand Magus of the Kirin Tor, and Jaina's mentor.  This was a big step up from being Grand Magus of Jelly Donuts.",
        game_id: "EX1_559",
        health: 7,
        mechanics: ["TRIGGER_VISUAL"],
        name: "Archmage Antonidas",
        rarity: :legendary,
        set: :expert1,
        type: :minion
      },
      %{
        artist: "Jim Nelson",
        attack: 2,
        class: :neutral,
        collectible: true,
        cost: 2,
        dbf_id: 48060,
        description: "Can only attack if you cast a spell this turn.",
        flavor: "After a stressful work day it really needs an outlet.",
        game_id: "BOT_098",
        health: 4,
        name: "Unpowered Mauler",
        rarity: :rare,
        set: :boomsday,
        type: :minion
      },
      %{
        artist: "Mark Zug",
        attack: 0,
        class: :neutral,
        collectible: true,
        cost: 2,
        dbf_id: 1135,
        description: "Whenever a player casts a spell, put a copy into the other player’s hand.",
        elite: true,
        flavor:
          "Lorewalker Cho archives and shares tales from the land of Pandaria, but his favorite story is the one where Joey and Phoebe go on a road trip.",
        game_id: "EX1_100",
        health: 4,
        mechanics: ["TRIGGER_VISUAL"],
        name: "Lorewalker Cho",
        rarity: :legendary,
        set: :expert1,
        type: :minion
      },
      %{
        artist: "Alex Horley Orlandelli",
        attack: 0,
        class: :neutral,
        collectible: true,
        cost: 2,
        dbf_id: 138,
        description: "At the start of your turn, destroy ALL minions.",
        flavor:
          "He's almost been right so many times. He was <i>sure</i> it was coming during the Cataclysm.",
        game_id: "NEW1_021",
        health: 7,
        mechanics: ["TRIGGER_VISUAL"],
        name: "Doomsayer",
        rarity: :epic,
        set: :expert1,
        type: :minion
      },
      %{
        artist: "Jonboy Meyers",
        class: :warrior,
        collectible: true,
        cost: 2,
        dbf_id: 1108,
        description: "Give a damaged minion +3/+3.",
        flavor: "Minion get ANGRY.   Minion SMASH!",
        game_id: "CS2_104",
        name: "Rampage",
        rarity: :common,
        set: :expert1,
        type: :spell
      },
      %{
        class: :warrior,
        dbf_id: 616,
        description: "+3/+3.",
        game_id: "CS2_104e",
        name: "Rampage",
        set: :expert1,
        type: :enchantment
      },
      %{
        artist: "Wei Wang",
        attack: 5,
        class: :rogue,
        collectible: true,
        cost: 6,
        dbf_id: 1993,
        description:
          "Whenever your opponent casts a spell, gain a copy of it and give them a Coin.",
        elite: true,
        flavor:
          "Gallywix believes in supply and demand. He supplies the beatings and demands you pay up!",
        game_id: "GVG_028",
        health: 8,
        mechanics: ["TRIGGER_VISUAL"],
        name: "Trade Prince Gallywix",
        rarity: :legendary,
        set: :gvg,
        type: :minion
      },
      %{
        class: :neutral,
        cost: 0,
        dbf_id: 2277,
        description: "Gain 1 Mana Crystal this turn only.\n<i>(Won't trigger Gallywix.)</i>",
        game_id: "GVG_028t",
        name: "Gallywix's Coin",
        set: :gvg,
        type: :spell
      },
      %{
        artist: "Bernie Kang",
        attack: 0,
        class: :warlock,
        collectible: true,
        cost: 1,
        dbf_id: 469,
        description:
          "[x]  <b>Stealth</b>. At the end of your  \nturn, give another random\n friendly minion +1 Health.",
        flavor: "Imps are content to hide and viciously taunt everyone nearby.",
        game_id: "CS2_059",
        health: 1,
        mechanics: ["STEALTH", "TRIGGER_VISUAL"],
        name: "Blood Imp",
        rarity: :common,
        set: :expert1,
        type: :minion
      },
      %{
        class: :neutral,
        cost: 0,
        dbf_id: 1746,
        description: "Gain 1 Mana Crystal this turn only.",
        game_id: "GAME_005",
        name: "The Coin",
        set: :core,
        type: :spell
      },
      %{
        class: :neutral,
        dbf_id: 1747,
        game_id: "GAME_005e",
        name: "The Coin",
        set: :core,
        type: :enchantment
      },
      %{
        artist: "Michael Komarck",
        attack: 4,
        class: :neutral,
        collectible: true,
        cost: 9,
        dbf_id: 436,
        description: "<b>Spell Damage +5</b>",
        elite: true,
        flavor: "Malygos hates it when mortals use magic.  He gets so mad!",
        game_id: "EX1_563",
        health: 12,
        mechanics: ["SPELLPOWER"],
        name: "Malygos",
        rarity: :legendary,
        set: :expert1,
        type: :minion
      },
      %{
        artist: "Max Grecke",
        attack: 1,
        class: :neutral,
        cost: 1,
        dbf_id: 39232,
        game_id: "KAR_044a",
        health: 1,
        name: "Steward",
        set: :kara,
        type: :minion
      },
      %{
        artist: "Tyler Walpole",
        class: :hunter,
        collectible: true,
        cost: 2,
        dbf_id: 896,
        description:
          "All minions lose <b>Stealth</b>. Destroy all enemy <b>Secrets</b>. Draw a card.",
        flavor: "Not only does it reveal your enemies, but it's also great for parties!",
        game_id: "EX1_544",
        name: "Flare",
        rarity: :rare,
        set: :expert1,
        type: :spell
      }
    ]
end

# Moroes (https://hearthstone.gamepedia.com/Moroes)
# Shrinkmeister (https://hearthstone.gamepedia.com/Shrinkmeister)
# Fireball (https://hearthstone.gamepedia.com/Fireball)
# Abusive Sergeant (https://hearthstone.gamepedia.com/Abusive_Sergeant)
# Competitive Spirit (https://hearthstone.gamepedia.com/Competitive_Spirit)
# Alarm-o-Bot (https://hearthstone.gamepedia.com/Alarm-o-Bot)
# Archmage Antonidas (https://hearthstone.gamepedia.com/Archmage_Antonidas)
# Unpowered Mauler (https://hearthstone.gamepedia.com/Unpowered_Mauler)
# Lorewalker Cho (https://hearthstone.gamepedia.com/Lorewalker_Cho)
# Doomsayer (https://hearthstone.gamepedia.com/Doomsayer)
# Rampage (https://hearthstone.gamepedia.com/Rampage)
# Trade Prince Gallywix (https://hearthstone.gamepedia.com/Trade_Prince_Gallywix)
# Gallywix's Coin (https://hearthstone.gamepedia.com/Gallywix%27s_Coin)
# Blood Imp (https://hearthstone.gamepedia.com/Blood_Imp)
# The Coin (https://hearthstone.gamepedia.com/The_Coin)
# Malygos (https://hearthstone.gamepedia.com/Malygos)
# Steward (https://hearthstone.gamepedia.com/Steward)
# Flare (https://hearthstone.gamepedia.com/Flare)
