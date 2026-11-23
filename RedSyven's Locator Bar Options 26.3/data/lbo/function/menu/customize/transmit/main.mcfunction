
execute store result score $transmit_range lbo.menu run attribute @s minecraft:waypoint_transmit_range get

execute if score $transmit_range lbo.menu matches 1..10 run scoreboard players set @s lbo.menu 501
execute if score $transmit_range lbo.menu matches 11..20 run scoreboard players set @s lbo.menu 502
execute if score $transmit_range lbo.menu matches 21..50 run scoreboard players set @s lbo.menu 503
execute if score $transmit_range lbo.menu matches 51..100 run scoreboard players set @s lbo.menu 504
execute if score $transmit_range lbo.menu matches 101..200 run scoreboard players set @s lbo.menu 505
execute if score $transmit_range lbo.menu matches 201..500 run scoreboard players set @s lbo.menu 506
execute if score $transmit_range lbo.menu matches 501..1000 run scoreboard players set @s lbo.menu 507
execute if score $transmit_range lbo.menu matches 1001..10000 run scoreboard players set @s lbo.menu 508
execute if score $transmit_range lbo.menu matches 10001..100000 run scoreboard players set @s lbo.menu 509
execute if score $transmit_range lbo.menu matches 100001.. run scoreboard players set @s lbo.menu 510
