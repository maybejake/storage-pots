tellraw @a ["",{"text":"Storage Pots","color":"gold","bold":true}," uninstalled!"]

scoreboard objectives remove storagepots.age
scoreboard objectives remove storagepots.dummy

#item counts
scoreboard objectives remove storagepots.pot_item_count
scoreboard objectives remove storagepots.marker_item_count
scoreboard objectives remove storagepots.total_item_count
scoreboard objectives remove storagepots.previous_total_item_count

#raycast
scoreboard objectives remove storagepots.raycast_hit
scoreboard objectives remove storagepots.raycast_distance
scoreboard objectives remove storagepots.reach

#pot uses
scoreboard objectives remove storagepots.pot_use

#sherd uses
scoreboard objectives remove storagepots.sherd_use

#storage
data remove storage storagepots:destroy strength1
data remove storage storagepots:destroy strength2
data remove storage storagepots:destroy item

data remove storage storagepots:temp pot_contents
data remove storage storagepots:temp marker_contents
data remove storage storagepots:temp marker_components
data remove storage storagepots:temp pot_component_check
data remove storage storagepots:temp item_component_check
data remove storage storagepots:temp output
data remove storage storagepots:temp item_check