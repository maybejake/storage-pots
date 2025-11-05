tellraw @a ["",{"text":"Storage Pots","color":"gold","bold":true}," loaded!"]

scoreboard objectives add storagepots.age dummy
scoreboard objectives add storagepots.dummy dummy

#item counts
scoreboard objectives add storagepots.pot_item_count dummy
scoreboard objectives add storagepots.marker_item_count dummy
scoreboard objectives add storagepots.total_item_count dummy
scoreboard objectives add storagepots.previous_total_item_count dummy

#raycast
scoreboard objectives add storagepots.raycast_hit dummy
scoreboard objectives add storagepots.raycast_distance dummy
scoreboard objectives add storagepots.reach dummy

#pot uses
scoreboard objectives add storagepots.pot_use minecraft.used:minecraft.item_frame

#sherd uses
scoreboard objectives add storagepots.sherd_use minecraft.used:minecraft.warped_fungus_on_a_stick

schedule function storagepots:tick_2 2t replace