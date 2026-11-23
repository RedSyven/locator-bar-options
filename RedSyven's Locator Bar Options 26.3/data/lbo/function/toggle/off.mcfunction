
attribute @s minecraft:waypoint_receive_range modifier add lbo:off -1 add_multiplied_total
attribute @s minecraft:waypoint_transmit_range modifier add lbo:off -1 add_multiplied_total

tellraw @s [{"text":"Locator Bar has been ","italic":true,color:"gray"},{"text":"Disabled.","italic":true,color:"red"}]

scoreboard players set @s lbo.menu 1
