
attribute @s minecraft:waypoint_receive_range modifier remove lbo:off
attribute @s minecraft:waypoint_transmit_range modifier remove lbo:off

execute store result score $transmit_range lbo.menu run attribute @s minecraft:waypoint_transmit_range get
execute if score $transmit_range lbo.menu matches ..0 run function lbo:toggle/reset

tellraw @s [{"text":"Locator Bar has been ","italic":true,color:"gray"},{"text":"Enabled.","italic":true,color:"green"}]

scoreboard players set @s lbo.menu 1
