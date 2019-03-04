defmodule Firestone.Definition.Set.Sprint_1 do
  def entities,
    do: [
      %{
        artist: "Jim Nelson",
        attack: 1,
        class: :neutral,
        collectible: true,
        cost: 3,
        dbf_id: 175,
        description: "<b>Spell Damage +1</b>",
        flavor: "You don't see a lot of Dalaran warriors.",
        game_id: "EX1_582",
        health: 4,
        mechanics: ["SPELLPOWER"],
        name: "Dalaran Mage",
        rarity: :free,
        set: :core,
        type: :minion
      },
      %{
        attack: 2,
        class: :paladin,
        cost: 1,
        dbf_id: 102,
        game_id: "EX1_130a",
        health: 1,
        name: "Defender",
        set: :expert1,
        type: :minion
      },
      %{
        attack: 1,
        class: :neutral,
        cost: 1,
        dbf_id: 76,
        game_id: "EX1_598",
        health: 1,
        name: "Imp",
        set: :expert1,
        type: :minion
      },
      %{
        artist: "James Ryman",
        attack: 4,
        class: :neutral,
        collectible: true,
        cost: 4,
        dbf_id: 995,
        description: "<b>Spell Damage +1</b>",
        flavor: "Training Ogres in the art of spellcasting is a questionable decision.",
        game_id: "CS2_197",
        health: 4,
        mechanics: ["SPELLPOWER"],
        name: "Ogre Magi",
        rarity: :free,
        set: :core,
        type: :minion
      },
      %{
        artist: "Dave Kendall",
        attack: 7,
        class: :neutral,
        collectible: true,
        cost: 7,
        dbf_id: 712,
        flavor:
          "Golems are not afraid, but for some reason they still run when you cast Fear on them.  Instinct, maybe?  A desire to blend in?",
        game_id: "CS2_186",
        health: 7,
        name: "War Golem",
        rarity: :free,
        set: :core,
        type: :minion
      },
      %{
        class: :priest,
        collectible: true,
        dbf_id: 813,
        game_id: "HERO_09",
        health: 30,
        name: "Anduin Wrynn",
        rarity: :free,
        set: :core,
        type: :hero
      },
      %{
        class: :mage,
        collectible: true,
        dbf_id: 637,
        game_id: "HERO_08",
        health: 30,
        name: "Jaina Proudmoore",
        rarity: :free,
        set: :core,
        type: :hero
      },
      %{
        class: :hunter,
        collectible: true,
        dbf_id: 31,
        game_id: "HERO_05",
        health: 30,
        name: "Rexxar",
        rarity: :free,
        set: :core,
        type: :hero
      },
      %{
        class: :paladin,
        collectible: true,
        dbf_id: 671,
        game_id: "HERO_04",
        health: 30,
        name: "Uther Lightbringer",
        rarity: :free,
        set: :core,
        type: :hero
      }
    ]
end

# Dalaran Mage (http://hearthstone.gamepedia.com/Dalaran_Mage)
# Defender (http://hearthstone.gamepedia.com/Defender)
# Imp (http://hearthstone.gamepedia.com/Imp)
# Ogre Magi (http://hearthstone.gamepedia.com/Ogre_Magi)
# War Golem (http://hearthstone.gamepedia.com/War_Golem)
