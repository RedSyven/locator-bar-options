
#hide mechanic
execute if score @s lbo.menu matches 2000 run function lbo:menu/customize/hide_mechanic/off
execute if score @s lbo.menu matches 2020 run function lbo:menu/customize/hide_mechanic/on

#on/off
execute if score @s lbo.menu matches 10 run function lbo:toggle/off
execute if score @s lbo.menu matches 1000 run function lbo:toggle/on

#transmit range
execute if score @s lbo.menu matches 110 run function lbo:menu/customize/transmit/main
#
execute if score @s lbo.menu matches 510 run function lbo:menu/customize/transmit/default
execute if score @s lbo.menu matches 509 run function lbo:menu/customize/transmit/100k
execute if score @s lbo.menu matches 508 run function lbo:menu/customize/transmit/10k
execute if score @s lbo.menu matches 507 run function lbo:menu/customize/transmit/1k
execute if score @s lbo.menu matches 506 run function lbo:menu/customize/transmit/500
execute if score @s lbo.menu matches 505 run function lbo:menu/customize/transmit/200
execute if score @s lbo.menu matches 504 run function lbo:menu/customize/transmit/100
execute if score @s lbo.menu matches 503 run function lbo:menu/customize/transmit/50
execute if score @s lbo.menu matches 502 run function lbo:menu/customize/transmit/20
execute if score @s lbo.menu matches 501 run function lbo:menu/customize/transmit/10

#receive range
execute if score @s lbo.menu matches 120 run function lbo:menu/customize/receive/main
#
execute if score @s lbo.menu matches 601..610 run function lbo:menu/customize/receive/trim
execute if score @s lbo.menu matches 610 run function lbo:menu/customize/receive/default with storage lbo:data macro
execute if score @s lbo.menu matches 609 run function lbo:menu/customize/receive/100k with storage lbo:data macro
execute if score @s lbo.menu matches 608 run function lbo:menu/customize/receive/10k with storage lbo:data macro
execute if score @s lbo.menu matches 607 run function lbo:menu/customize/receive/1k with storage lbo:data macro
execute if score @s lbo.menu matches 606 run function lbo:menu/customize/receive/500 with storage lbo:data macro
execute if score @s lbo.menu matches 605 run function lbo:menu/customize/receive/200 with storage lbo:data macro
execute if score @s lbo.menu matches 604 run function lbo:menu/customize/receive/100 with storage lbo:data macro
execute if score @s lbo.menu matches 603 run function lbo:menu/customize/receive/50 with storage lbo:data macro
execute if score @s lbo.menu matches 602 run function lbo:menu/customize/receive/20 with storage lbo:data macro
execute if score @s lbo.menu matches 601 run function lbo:menu/customize/receive/10 with storage lbo:data macro
execute if score @s lbo.menu matches 600 run function lbo:menu/customize/receive/0 with storage lbo:data macro

#Icon Color
execute if score @s lbo.menu matches 130 run function lbo:menu/customize/icon_color/main
#
execute if score @s lbo.menu matches 700 run function lbo:menu/customize/icon_color/red
execute if score @s lbo.menu matches 701 run function lbo:menu/customize/icon_color/dark_red
execute if score @s lbo.menu matches 702 run function lbo:menu/customize/icon_color/gold
execute if score @s lbo.menu matches 703 run function lbo:menu/customize/icon_color/yellow
execute if score @s lbo.menu matches 704 run function lbo:menu/customize/icon_color/green
execute if score @s lbo.menu matches 705 run function lbo:menu/customize/icon_color/dark_green
execute if score @s lbo.menu matches 706 run function lbo:menu/customize/icon_color/aqua
execute if score @s lbo.menu matches 707 run function lbo:menu/customize/icon_color/dark_aqua
execute if score @s lbo.menu matches 708 run function lbo:menu/customize/icon_color/blue
execute if score @s lbo.menu matches 709 run function lbo:menu/customize/icon_color/dark_blue
execute if score @s lbo.menu matches 710 run function lbo:menu/customize/icon_color/light_purple
execute if score @s lbo.menu matches 711 run function lbo:menu/customize/icon_color/dark_purple
execute if score @s lbo.menu matches 712 run function lbo:menu/customize/icon_color/white
execute if score @s lbo.menu matches 713 run function lbo:menu/customize/icon_color/gray
execute if score @s lbo.menu matches 714 run function lbo:menu/customize/icon_color/dark_gray
execute if score @s lbo.menu matches 715 run function lbo:menu/customize/icon_color/black

#customize menu and escape
execute if score @s lbo.menu matches 1 run return run function lbo:menu/customize/main
execute if score @s lbo.menu matches 2 run return run function lbo:menu/back_to_game

scoreboard players reset @s lbo.menu
