
execute store result score $transmit_range lbo.menu run attribute @s minecraft:waypoint_transmit_range modifier value get lbo:customize

execute store result storage lbo:data macro.transmit int 1 run scoreboard players get $transmit_range lbo.menu
execute if score $transmit_range lbo.menu matches 1000 run data modify storage lbo:data macro set value {transmit:"1k"}
execute if score $transmit_range lbo.menu matches 10000 run data modify storage lbo:data macro set value {transmit:"10k"}
execute if score $transmit_range lbo.menu matches 100000 run data modify storage lbo:data macro set value {transmit:"100k"}
execute if score $transmit_range lbo.menu matches 60000000 run data modify storage lbo:data macro set value {transmit:"6.0E7"}

execute if score @s lbo.menu matches 601 run scoreboard players set $receive_range lbo.menu 10
execute if score @s lbo.menu matches 602 run scoreboard players set $receive_range lbo.menu 20
execute if score @s lbo.menu matches 603 run scoreboard players set $receive_range lbo.menu 50
execute if score @s lbo.menu matches 604 run scoreboard players set $receive_range lbo.menu 100
execute if score @s lbo.menu matches 605 run scoreboard players set $receive_range lbo.menu 200
execute if score @s lbo.menu matches 606 run scoreboard players set $receive_range lbo.menu 500
execute if score @s lbo.menu matches 607 run scoreboard players set $receive_range lbo.menu 1000
execute if score @s lbo.menu matches 608 run scoreboard players set $receive_range lbo.menu 10000
execute if score @s lbo.menu matches 609 run scoreboard players set $receive_range lbo.menu 100000
execute if score @s lbo.menu matches 610 run scoreboard players set $receive_range lbo.menu 60000000
execute if score $receive_range lbo.menu > $transmit_range lbo.menu run scoreboard players operation $receive_range lbo.menu = $transmit_range lbo.menu
execute if score $receive_range lbo.menu matches 1..10 run scoreboard players set @s lbo.menu 601
execute if score $receive_range lbo.menu matches 11..20 run scoreboard players set @s lbo.menu 602
execute if score $receive_range lbo.menu matches 21..50 run scoreboard players set @s lbo.menu 603
execute if score $receive_range lbo.menu matches 51..100 run scoreboard players set @s lbo.menu 604
execute if score $receive_range lbo.menu matches 101..200 run scoreboard players set @s lbo.menu 605
execute if score $receive_range lbo.menu matches 201..500 run scoreboard players set @s lbo.menu 606
execute if score $receive_range lbo.menu matches 501..1000 run scoreboard players set @s lbo.menu 607
execute if score $receive_range lbo.menu matches 1001..10000 run scoreboard players set @s lbo.menu 608
execute if score $receive_range lbo.menu matches 10001..100000 run scoreboard players set @s lbo.menu 609
execute if score $receive_range lbo.menu matches 100001.. run scoreboard players set @s lbo.menu 610
