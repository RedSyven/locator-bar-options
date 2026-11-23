
scoreboard players set @s lbo.leave_game 0

#setup/refresh hide mechanic toggle
execute unless score @s lbo.hide_mechanic matches 0.. run scoreboard players set @s lbo.hide_mechanic 1
execute if score @s lbo.hide_mechanic matches 0 run schedule function lbo:disable_hide_join_delay 1s replace

#refresh normalization
attribute @s minecraft:waypoint_receive_range modifier remove lbo:normalize
attribute @s minecraft:waypoint_transmit_range modifier remove lbo:normalize
attribute @s minecraft:waypoint_receive_range modifier add lbo:normalize -60000000 add_value
attribute @s minecraft:waypoint_transmit_range modifier add lbo:normalize -60000000 add_value

#reset missing/bad customized ranges
execute store result score #transmit_modified lbo.menu run attribute @s minecraft:waypoint_transmit_range modifier value get lbo:customize
execute if score #transmit_modified lbo.menu matches 0 run attribute @s minecraft:waypoint_transmit_range modifier remove lbo:customize
execute if score #transmit_modified lbo.menu matches 0 run attribute @s minecraft:waypoint_transmit_range modifier add lbo:customize 60000000 add_value
execute store success score #receive_modified lbo.menu run attribute @s minecraft:waypoint_receive_range modifier value get lbo:customize
execute if score #receive_modified lbo.menu matches 0 run attribute @s minecraft:waypoint_receive_range modifier remove lbo:customize
execute if score #receive_modified lbo.menu matches 0 run attribute @s minecraft:waypoint_receive_range modifier add lbo:customize 60000000 add_value

#setup Icon Color map
execute unless score @s lbo.icon_color matches 0.. run waypoint modify @s color red
execute unless score @s lbo.icon_color matches 0.. run scoreboard players set @s lbo.icon_color 0
