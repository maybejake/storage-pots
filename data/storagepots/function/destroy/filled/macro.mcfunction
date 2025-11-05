$loot spawn ~ ~0.1 ~ loot { \
  "pools": [ \
    { \
      "rolls": 1, \
      "entries": [ \
        { \
          "type": "minecraft:item", \
          "name": "minecraft:item_frame", \
          "functions": [ \
            { \
              "function": "minecraft:set_components", \
              "components": { \
                "minecraft:item_name": {"translate":"item.storagepots.storage_pot","fallback":"Storage Pot"}, \
                "minecraft:item_model": "minecraft:decorated_pot", \
                "minecraft:custom_data": {"storagepots:pot":true,"smithed":{"ignore":{"functionality":true,"crafting":true}}}, \
                "minecraft:entity_data": { \
                  "id": "minecraft:item_frame", \
                  "Invisible": true, \
                  "Silent": true, \
                  "Tags": ["storagepots.storage_pot"], \
                  "Item": $(item) \
                }, \
                "minecraft:enchantment_glint_override": true, \
                "minecraft:lore": $(lore), \
                "minecraft:max_stack_size": 1 \
              } \
            } \
          ] \
        } \
      ] \
    } \
  ] \
}

execute positioned ~ ~0.1 ~ run tag @e[type=minecraft:item,tag=!storagepots.ignore,dx=0,dy=0,dz=0] add storagepots.ignore