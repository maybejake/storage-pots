data modify storage storagepots:destroy lore set value [{text:"",italic:"false",color:"white"}]

#try item name
execute if data entity @s item.components."minecraft:custom_data"."storagepots:contents".components."minecraft:item_name" run return run data modify storage storagepots:destroy lore append value {"nbt":"item.components.minecraft:custom_data.storagepots:contents.components.minecraft:item_name","entity":"@s","interpret":true}

#try custom name
execute if data entity @s item.components."minecraft:custom_data"."storagepots:contents".components."minecraft:custom_name" run return run data modify storage storagepots:destroy lore append value {"nbt":"item.components.minecraft:custom_data.storagepots:contents.components.minecraft:custom_name","entity":"@s","interpret":true}

#default to entity name
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:1},Tags:["storagepots.temp_item","smithed.entity","smithed.strict"]}
data modify entity @n[type=minecraft:item,tag=storagepots.temp_item,distance=..0.5] Item.id set from entity @s item.components."minecraft:custom_data"."storagepots:contents".id
execute if data entity @s item.components."minecraft:custom_data"."storagepots:contents".components."minecraft:custom_name" run return run data modify storage storagepots:destroy lore append value {selector:"@n[type=minecraft:item,tag=storagepots.temp_item,distance=..0.5]"}
kill @n[type=minecraft:item,tag=storagepots.temp_item,distance=..0.5]