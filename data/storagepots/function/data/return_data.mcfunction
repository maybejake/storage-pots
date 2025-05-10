#copy pot item to marker
data modify storage storagepots:temp marker_contents set from storage storagepots:temp pot_contents

#push data back onto pot/marker
execute store result storage storagepots:temp marker_contents.count int 1 run scoreboard players get @s storagepots.marker_item_count
execute store result storage storagepots:temp pot_contents.count int 1 run scoreboard players get @s storagepots.pot_item_count
data modify entity @s item.components."minecraft:custom_data"."storagepots:contents" set from storage storagepots:temp marker_contents
data modify block ~ ~ ~ item set from storage storagepots:temp pot_contents