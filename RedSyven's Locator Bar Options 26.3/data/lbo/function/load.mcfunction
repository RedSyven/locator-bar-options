
data modify storage lbo:data macro set value {}

scoreboard objectives add lbo.menu trigger
scoreboard objectives add lbo.leave_game minecraft.custom:minecraft.leave_game
scoreboard objectives add lbo.icon_color dummy
scoreboard objectives add lbo.icon_style dummy
scoreboard objectives add lbo.hide_mechanic dummy

tellraw @a {"text":"[RedSyven's Locator Bar Options] Loaded","color":"gray"}
