
#setup
execute as @a unless score @s lbo.leave_game matches 0 run function lbo:setup

#dialog control
execute as @a run scoreboard players enable @s lbo.menu
execute as @a[scores={lbo.menu=1..}] run function lbo:menu/control
