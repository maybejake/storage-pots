execute if block ~ ~ ~ #minecraft:air run setblock ~ ~ ~ minecraft:decorated_pot
execute if block ~ ~ ~ minecraft:water run setblock ~ ~ ~ minecraft:decorated_pot

execute if block ~ ~ ~ minecraft:decorated_pot run data modify block ~ ~ ~ components."minecraft:custom_data" set value {"smithed":{"ignore":{"functionality":true,"transfer":true}}}

summon minecraft:item_display ~ ~ ~ {Tags:["storagepots.marker","smithed.block"],item:{id:"minecraft:decorated_pot",count:1,components:{"minecraft:custom_data":{"storagepots:count":0},"minecraft:bundle_contents":[]}},transformation:{scale: [0.0f, 0.0f, 0.0f],translation: [0.0f, 0.0f, 0.0f],left_rotation: [0.0f, 0.0f, 0.0f, 1.0f],right_rotation: [0.0f, 0.0f, 0.0f, 1.0f]}}
summon minecraft:block_display ~ ~ ~ {Tags:["storagepots.visual","storagepots.trim","smithed.block"],block_state:{Name:"minecraft:blue_terracotta",Properties:{}},transformation:{scale: [0.41f, 0.41f, 0.41f],translation: [-0.205f, 0.3f, -0.205f],left_rotation: [0.0f, 0.0f, 0.0f, 1.0f],right_rotation: [0.0f, 0.0f, 0.0f, 1.0f]}}
summon minecraft:text_display ~ ~ ~ {Tags:["storagepots.visual","storagepots.count","smithed.block"],text:{text:" ",color:"#351d19",font:"minecraft:default"},background:0,alignment:"center",default_background:false,transformation:{scale: [1.1f, 1.1f, 1.1f],translation: [-0.01f, 0.3f, 0.44f],left_rotation: [0.0f, 0.0f, 0.0f, 1.0f],right_rotation: [0.0f, 0.0f, 0.0f, 1.0f]}}

playsound block.decorated_pot.place master @a ~ ~ ~ 1 1

#pot has stored contents, restore them
execute if data entity @s Item run function storagepots:restore

kill @s

execute store result score $rotation storagepots.dummy run data get entity @p[scores={storagepots.pot_use=1..}] Rotation[0]
execute if score $rotation storagepots.dummy matches 135..180 run return run tp @n[type=minecraft:text_display,tag=storagepots.count,distance=..0.1] ~ ~ ~ 0 0
execute if score $rotation storagepots.dummy matches -180..-135 run return run tp @n[type=minecraft:text_display,tag=storagepots.count,distance=..0.1] ~ ~ ~ 0 0
execute if score $rotation storagepots.dummy matches -135..-45 run return run tp @n[type=minecraft:text_display,tag=storagepots.count,distance=..0.1] ~ ~ ~ 90 0
execute if score $rotation storagepots.dummy matches -45..45 run return run tp @n[type=minecraft:text_display,tag=storagepots.count,distance=..0.1] ~ ~ ~ 180 0
execute if score $rotation storagepots.dummy matches 45..135 run return run tp @n[type=minecraft:text_display,tag=storagepots.count,distance=..0.1] ~ ~ ~ -90 0