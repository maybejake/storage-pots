$loot spawn ~ ~0.5 ~ loot { \
  "pools": [ \
    { \
      "rolls": 1, \
      "entries": [ \
        { \
          "type": "minecraft:item", \
          "name": "$(id)", \
          "functions": [ \
            { \
              "function": "minecraft:set_components", \
              "components": $(components) \
            }, \
            { \
              "function": "minecraft:set_count", \
              "count": $(count) \
            } \
          ] \
        } \
      ] \
    } \
  ] \
}

execute positioned ~ ~0.5 ~ as @e[type=minecraft:item,tag=!storagepots.ignore,dx=0,dy=0,dz=0] run data merge entity @s {Tags:["storagepots.ignore"],PickupDelay:10}