execute store result score @s storagepots.age run data get entity @s Age
execute if score @s storagepots.age matches 2.. run return fail

tag @s add storagepots.drop
data modify entity @s PickupDelay set value 10