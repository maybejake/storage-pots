execute store result score @n[type=minecraft:item_display,tag=storagepots.marker,distance=..0.1] storagepots.total_item_count run data get entity @s Item.components."minecraft:custom_data"."storagepots:count"
data modify storage storagepots:temp pot_contents set value {"id":"",count:0}
data modify storage storagepots:temp pot_contents.id set from entity @s Item.components."minecraft:bundle_contents"[0].id
data modify storage storagepots:temp pot_contents.components set from entity @s Item.components."minecraft:bundle_contents"[0].components
execute as @n[type=minecraft:item_display,tag=storagepots.marker,distance=..0.1] run function storagepots:data/push_data