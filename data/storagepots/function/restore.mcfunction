execute store result score @n[type=minecraft:item_display,tag=storagepots.marker,distance=..0.1] storagepots.total_item_count run data get entity @s Item.components."minecraft:custom_data"."storagepots:contents".count
data modify block ~ ~ ~ item set value {"id":"minecraft:cobblestone","count":1}
data modify block ~ ~ ~ item.id set from entity @s Item.components."minecraft:custom_data"."storagepots:contents".id
data modify storage storagepots:temp pot_contents set value {"id":"",count:0}
data modify storage storagepots:temp pot_contents.id set from entity @s Item.components."minecraft:custom_data"."storagepots:contents".id
data modify storage storagepots:temp pot_contents.components set from entity @s Item.components."minecraft:custom_data"."storagepots:contents".components
execute as @n[type=minecraft:item_display,tag=storagepots.marker,distance=..0.1] run function storagepots:data/push_data