data modify entity @s CustomNameVisible set value false

#try item name
execute if data entity @s item.components."minecraft:bundle_contents"[0].components."minecraft:item_name" run return run item modify entity @s contents {"function":"minecraft:set_lore","entity":"this","lore":[{"nbt":"item.components.minecraft:bundle_contents[0].components.minecraft:item_name","entity":"@s","interpret":true,color:"white",italic:false,extra:[" x",{"score":{"objective":"storagepots.total_item_count","name":"@s"}}]}],"mode":"replace_all"}

#try custom name
execute if data entity @s item.components."minecraft:bundle_contents"[0].components."minecraft:custom_name" run return run item modify entity @s contents {"function":"minecraft:set_lore","entity":"this","lore":[{"nbt":"item.components.minecraft:bundle_contents[0].components.minecraft:custom_name","entity":"@s","interpret":true,color:"white",italic:false,extra:[" x",{"score":{"objective":"storagepots.total_item_count","name":"@s"}}]}],"mode":"replace_all"}

summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:cobblestone",count:1},Tags:["storagepots.temp_item","smithed.entity","smithed.strict"]}
data modify entity @n[type=minecraft:item,tag=storagepots.temp_item,distance=..0.6] Item.id set from entity @s item.components."minecraft:bundle_contents"[0].id
item modify entity @s contents {"function":"minecraft:set_lore","entity":"this","lore":[{selector:"@n[type=minecraft:item,tag=storagepots.temp_item,distance=..0.5]",color:"white",italic:false,extra:[" x",{"score":{"objective":"storagepots.total_item_count","name":"@s"}}]}],"mode":"replace_all"}
kill @n[type=minecraft:item,tag=storagepots.temp_item,distance=..0.6]