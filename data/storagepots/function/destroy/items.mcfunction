execute if items entity @s contents *[minecraft:custom_data~{"storagepots:pot":true}] run return fail

execute store result score @s storagepots.age run data get entity @s Age
execute if score @s storagepots.age matches ..1 run kill @s