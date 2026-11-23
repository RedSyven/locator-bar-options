
attribute @s minecraft:waypoint_transmit_range modifier remove lbo:customize
attribute @s minecraft:waypoint_transmit_range modifier remove lbo:normalize
attribute @s minecraft:waypoint_transmit_range modifier add lbo:normalize -60000000 add_value
attribute @s minecraft:waypoint_transmit_range modifier add lbo:customize 60000000 add_value

tellraw @s [{"text":"Transmit Range attribute error: resetting","italic":true,color:"yellow"}]
