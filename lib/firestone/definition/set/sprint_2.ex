defmodule Firestone.Definition.Set.Sprint_2 do

  def entities, do: [
    %{
      artist: "Chris Seaman",
      attack: 4,
      class: :neutral,
      collectible: true,
      cost: 5,
      dbf_id: 1657,
      description: "<b>Battlecry:</b> Destroy a minion with 7 or more Attack.",
      flavor: "Mere devilsaurs no longer excite him.  Soon he'll be trying to catch Onyxia with only a dull Krol Blade.",
      game_id: "EX1_005",
      health: 2,
      mechanics: ["BATTLECRY"],
      name: "Big Game Hunter",
      rarity: :epic,
      set: :expert1,
      type: :minion
    },
    %{
      artist: "Dan Scott",
      attack: 2,
      class: :neutral,
      collectible: true,
      cost: 4,
      dbf_id: 38792,
      description: "<b>Battlecry:</b> Destroy all enemy <b>Secrets</b>. Gain +1/+1 for each.",
      flavor: "You don't want to be around after it has eaten an explosive trap.  You thought Sludge Belcher was bad...",
      game_id: "OG_254",
      health: 4,
      mechanics: ["BATTLECRY"],
      name: "Eater of Secrets",
      rarity: :rare,
      set: :og,
      type: :minion
    },
    %{
      class: :neutral,
      dbf_id: 38959,
      description: "Increased stats.",
      game_id: "OG_254e",
      name: "Secretly Sated",
      set: :og,
      type: :enchantment
    },
    %{
      artist: "Sedhayu Ardian",
      attack: 4,
      class: :neutral,
      collectible: true,
      cost: 3,
      dbf_id: 466,
      description: "<b>Battlecry:</b> Give your opponent a Mana Crystal.",
      flavor: "Having Arcane golems at home really classes up the place, and as a bonus they are great conversation pieces.",
      game_id: "EX1_089",
      health: 4,
      mechanics: ["BATTLECRY"],
      name: "Arcane Golem",
      rarity: :rare,
      set: :expert1,
      type: :minion
    },
    %{
      artist: "Dave Kendall",
      attack: 1,
      class: :neutral,
      collectible: true,
      cost: 3,
      dbf_id: 1659,
      description: "Whenever this minion takes damage, draw a card.",
      flavor: "He trained when he was younger to be an acolyte of joy, but things didn’t work out like he thought they would.",
      game_id: "EX1_007",
      health: 3,
      mechanics: ["TRIGGER_VISUAL"],
      name: "Acolyte of Pain",
      rarity: :common,
      set: :expert1,
      type: :minion
    },
    %{
      artist: "Richard Wright",
      attack: 4,
      class: :neutral,
      collectible: true,
      cost: 2,
      dbf_id: 605,
      description: "Can't attack.",
      faction: :alliance,
      flavor: "Why do its eyes seem to follow you as you walk by?",
      game_id: "EX1_045",
      health: 5,
      mechanics: ["CANT_ATTACK"],
      name: "Ancient Watcher",
      rarity: :rare,
      set: :expert1,
      type: :minion
    },
    %{
      artist: "Christopher Moeller",
      attack: 5,
      class: :neutral,
      collectible: true,
      cost: 8,
      dbf_id: 2082,
      description: "<b>Deathrattle:</b> Summon a random <b>Legendary</b> minion.",
      elite: true,
      flavor: "When Sneed was defeated in the Deadmines, his shredder was sold at auction to an anonymous buyer. (Probably Hogger.)",
      game_id: "GVG_114",
      health: 7,
      mechanics: ["DEATHRATTLE"],
      name: "Sneed's Old Shredder",
      rarity: :legendary,
      set: :gvg,
      type: :minion
    },
    %{
      artist: "Sunny Gho",
      attack: 5,
      class: :neutral,
      collectible: true,
      cost: 3,
      dbf_id: 1693,
      description: "<b>Battlecry:</b> Give your opponent 2 Bananas.",
      elite: true,
      flavor: "King Mukla wanders Jaguero Isle, searching for love.",
      game_id: "EX1_014",
      health: 5,
      mechanics: ["BATTLECRY"],
      name: "King Mukla",
      rarity: :legendary,
      set: :expert1,
      type: :minion
    },
    %{
      class: :neutral,
      cost: 1,
      dbf_id: 1694,
      description: "Give a minion +1/+1.",
      game_id: "EX1_014t",
      name: "Bananas",
      set: :expert1,
      type: :spell
    },
    %{
      class: :neutral,
      dbf_id: 1695,
      description: "Has +1/+1.",
      game_id: "EX1_014te",
      name: "Bananas",
      set: :expert1,
      type: :enchantment
    },
    %{
      artist: "Steve Ellis",
      class: :mage,
      collectible: true,
      cost: 2,
      dbf_id: 662,
      description: "Deal $3 damage to a character and <b>Freeze</b> it.",
      flavor: "It is customary to yell \"Chill out!\" or \"Freeze!\" or \"Ice ice, baby!\" when you play this card.",
      game_id: "CS2_024",
      mechanics: ["FREEZE"],
      name: "Frostbolt",
      rarity: :free,
      set: :core,
      type: :spell
    },
    %{
      artist: "Chippy",
      attack: 4,
      class: :priest,
      collectible: true,
      cost: 6,
      dbf_id: 272,
      description: "<b>Battlecry:</b> Take control of an enemy minion that has 2 or less Attack.",
      flavor: "You never know who may be secretly working for the Cabal....",
      game_id: "EX1_091",
      health: 5,
      mechanics: ["BATTLECRY"],
      name: "Cabal Shadow Priest",
      rarity: :epic,
      set: :expert1,
      type: :minion
    },
    %{
      artist: "Sean O’Daniels",
      class: :priest,
      collectible: true,
      cost: 10,
      dbf_id: 8,
      description: "Take control of an enemy minion.",
      flavor: "Nominated as \"Spell Most Likely to Make Your Opponent Punch the Wall.\"",
      game_id: "CS1_113",
      name: "Mind Control",
      rarity: :free,
      set: :core,
      type: :spell
    },
    %{
      artist: "Dave Allsop",
      attack: 8,
      class: :neutral,
      collectible: true,
      cost: 8,
      dbf_id: 46656,
      description: "<b>Deathrattle:</b> Restore #8 Health to your hero.",
      flavor: "Unfortunately, his doctorate is in Murloc Literature.",
      game_id: "GIL_118",
      health: 8,
      mechanics: ["DEATHRATTLE"],
      name: "Deranged Doctor",
      rarity: :common,
      set: :gilneas,
      type: :minion
    },
    %{
      artist: "Glenn Rane",
      attack: 5,
      class: :neutral,
      collectible: true,
      cost: 6,
      dbf_id: 1721,
      description: "<b>Deathrattle:</b> Take\ncontrol of a random\nenemy minion.",
      elite: true,
      flavor: "Sylvanas was turned into the Banshee Queen by Arthas, but he probably should have just killed her because it just pissed her off.",
      game_id: "EX1_016",
      health: 5,
      mechanics: ["DEATHRATTLE"],
      name: "Sylvanas Windrunner",
      rarity: :legendary,
      set: :hof,
      type: :minion
    },
    %{
      artist: "Simon Bisley",
      attack: 2,
      class: :warrior,
      collectible: true,
      cost: 3,
      dbf_id: 654,
      description: "Whenever a minion takes damage, gain +1 Attack.",
      flavor: "He used to work as an accountant before he tried his hand at Berserkering.",
      game_id: "EX1_604",
      health: 4,
      mechanics: ["TRIGGER_VISUAL"],
      name: "Frothing Berserker",
      rarity: :rare,
      set: :expert1,
      type: :minion
    },
    %{
      class: :warrior,
      dbf_id: 1177,
      description: "Increased Attack.",
      game_id: "EX1_604o",
      name: "Berserk",
      set: :expert1,
      type: :enchantment
    },
    %{
      artist: "Jim Nelson",
      attack: 2,
      class: :neutral,
      collectible: true,
      cost: 2,
      dbf_id: 251,
      description: "<b>Deathrattle:</b> Draw a card.",
      flavor: "Always roll need.",
      game_id: "EX1_096",
      health: 1,
      mechanics: ["DEATHRATTLE"],
      name: "Loot Hoarder",
      rarity: :common,
      set: :expert1,
      type: :minion
    },
    %{
      artist: "Bernie Kang",
      class: :hunter,
      collectible: true,
      cost: 2,
      dbf_id: 455,
      description: "<b>Secret:</b> When one of your minions is attacked, summon three 1/1 Snakes.",
      flavor: "Why did it have to be snakes?",
      game_id: "EX1_554",
      mechanics: ["SECRET"],
      name: "Snake Trap",
      rarity: :epic,
      set: :expert1,
      type: :spell
    },
    %{
      attack: 1,
      class: :hunter,
      cost: 1,
      dbf_id: 204,
      game_id: "EX1_554t",
      health: 1,
      mechanics: [],
      name: "Snake",
      set: :expert1,
      type: :minion
    },

    %{
      class: :mage,
      cost: 2,
      dbf_id: 807,
      description: "<b>Hero Power</b>\nDeal $1 damage.",
      game_id: "CS2_034",
      name: "Fireblast",
      rarity: :free,
      set: :core,
      type: :hero_power
    },
    %{
      class: :priest,
      cost: 2,
      dbf_id: 479,
      description: "<b>Hero Power</b>\nRestore #2 Health.",
      game_id: "CS1h_001",
      name: "Lesser Heal",
      rarity: :free,
      set: :core,
      type: :hero_power
    },
    %{
      class: :paladin,
      cost: 2,
      dbf_id: 472,
      description: "<b>Hero Power</b>\nSummon a 1/1 Silver Hand Recruit.",
      game_id: "CS2_101",
      name: "Reinforce",
      rarity: :free,
      set: :core,
      type: :hero_power
    },
    %{
      attack: 1,
      class: :paladin,
      cost: 1,
      dbf_id: 1652,
      game_id: "CS2_101t",
      health: 1,
      mechanics: [],
      name: "Silver Hand Recruit",
      rarity: :free,
      set: :core,
      type: :minion
    },
    %{
      class: :hunter,
      cost: 2,
      dbf_id: 229,
      description: "<b>Hero Power</b>\nDeal $2 damage to the enemy hero.",
      game_id: "DS1h_292",
      name: "Steady Shot",
      rarity: :free,
      set: :core,
      type: :hero_power
    },
  ]

end

# Big Game Hunter (http://hearthstone.gamepedia.com/Big_Game_Hunter)
# Eater of Secrets (http://hearthstone.gamepedia.com/Eater_of_Secrets)
# Arcane Golem (http://hearthstone.gamepedia.com/Arcane_Golem)
# Acolyte of Pain (http://hearthstone.gamepedia.com/Acolyte_of_Pain)
# Snake (http://hearthstone.gamepedia.com/Snake)
# Ancient Watcher (http://hearthstone.gamepedia.com/Ancient_Watcher)
# Sneed's Old Shredder (http://hearthstone.gamepedia.com/Sneed's_Old_Shredder)
# King Mukla (http://hearthstone.gamepedia.com/King_Mukla)
# Frostbolt (http://hearthstone.gamepedia.com/Frostbolt)
# Cabal Shadow Priest (http://hearthstone.gamepedia.com/Cabal_Shadow_Priest)
# Mind Control (http://hearthstone.gamepedia.com/Mind_Control)
# Deranged Doctor (http://hearthstone.gamepedia.com/Deranged_Doctor)
# Sylvanas Windrunner (http://hearthstone.gamepedia.com/Sylvanas_Windrunner)
# Frothing Berserker (http://hearthstone.gamepedia.com/Frothing_Berserker)
# Bananas (http://hearthstone.gamepedia.com/Bananas)
# Loot Hoarder (http://hearthstone.gamepedia.com/Loot_Hoarder)
# Snake Trap (http://hearthstone.gamepedia.com/Snake_Trap)
# Silver Hand Recruit (http://hearthstone.gamepedia.com/Silver_Hand_Recruit)
