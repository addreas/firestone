defmodule Firestone.Definition.Set.Sprint_4 do

  def entities, do: [
    %{
      artist: "Alex Horley Orlandelli",
      attack: 4,
      class: :neutral,
      collectible: true,
      cost: 6,
      dbf_id: 1656,
      description: "<b>Battlecry:</b> Destroy an enemy minion with <b>Taunt</b>.",
      elite: true,
      flavor: "He was sent by the Lich King to disrupt the Argent Tournament.   We can pretty much mark that a failure.",
      game_id: "EX1_002",
      health: 5,
      mechanics: ["BATTLECRY"],
      name: "The Black Knight",
      rarity: :legendary,
      set: :expert1,
      type: :minion
    },
    %{
      artist: "Matt Cavotta",
      attack: 5,
      class: :neutral,
      collectible: true,
      cost: 5,
      dbf_id: 1140,
      description: "<b>Taunt</b>",
      faction: :horde,
      flavor: "You can hire him... until someone offers him enough gold to turn on you.",
      game_id: "CS2_187",
      health: 4,
      mechanics: ["TAUNT"],
      name: "Booty Bay Bodyguard",
      rarity: :free,
      set: :core,
      type: :minion
    },
    %{
      artist: "Erik Ko",
      attack: 1,
      class: :neutral,
      collectible: true,
      cost: 1,
      dbf_id: 1655,
      description: "Whenever a character is healed, gain +2 Attack.",
      flavor: "She’s smaller than her sisters Mediumwarden and Heavywarden.",
      game_id: "EX1_001",
      health: 2,
      mechanics: ["TRIGGER_VISUAL"],
      name: "Lightwarden",
      rarity: :rare,
      set: :expert1,
      type: :minion
    },
    %{
      class: :neutral,
      dbf_id: 1632,
      description: "Increased Attack.",
      game_id: "EX1_001e",
      name: "Warded",
      set: :expert1,
      type: :enchantment
    },
    %{
      artist: "Tyson Murphy",
      attack: 5,
      class: :neutral,
      collectible: true,
      cost: 10,
      dbf_id: 38496,
      description: "<b>Battlecry:</b> Summon your <b>Deathrattle</b> minions that died this game.",
      elite: true,
      flavor: "Has not been able to get \"Under the Sea\" out of his head for like FIVE THOUSAND YEARS.",
      game_id: "OG_133",
      health: 7,
      mechanics: ["BATTLECRY"],
      name: "N'Zoth, the Corruptor",
      rarity: :legendary,
      set: :og,
      type: :minion
    },
    %{
      artist: "Zoltan Boros",
      attack: 3,
      class: :druid,
      collectible: true,
      cost: 9,
      dbf_id: 43439,
      description: "<b>Deathrattle:</b> Summon your <b>Taunt</b> minions that\ndied this game.",
      elite: true,
      flavor: "The viziers of Azjol-Nerub released Hadronox as a last-ditch effort to hold back the Lich King. They did so by VERY carefully scooping him up in a LARGE newspaper and releasing him.",
      game_id: "ICC_835",
      health: 7,
      mechanics: ["DEATHRATTLE"],
      name: "Hadronox",
      rarity: :legendary,
      set: :icecrown,
      type: :minion
    },
  ]

end

# The Black Knight (https://hearthstone.gamepedia.com/The_Black_Knight)
# Booty Bay Bodyguard (https://hearthstone.gamepedia.com/Booty_Bay_Bodyguard)
# Lightwarden (https://hearthstone.gamepedia.com/Lightwarden)
# N'Zoth, the Corruptor (https://hearthstone.gamepedia.com/N%27Zoth,_the_Corruptor)
# Hadronox (https://hearthstone.gamepedia.com/Hadronox)
