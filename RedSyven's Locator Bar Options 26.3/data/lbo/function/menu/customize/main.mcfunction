
scoreboard players reset @s lbo.menu

execute store result score $transmit_range lbo.menu run attribute @s minecraft:waypoint_transmit_range get
execute store result score $receive_range lbo.menu run attribute @s minecraft:waypoint_receive_range get
scoreboard players operation $toggle lbo.menu = $transmit_range lbo.menu
scoreboard players operation $toggle lbo.menu += $receive_range lbo.menu

execute if score $toggle lbo.menu matches ..0 if score @s lbo.hide_mechanic matches 0 run return run dialog show @s {    "type": "minecraft:multi_action",    "title": "Locator Bar Options > Customize",    "pause": false,    "columns": 1,    "after_action": "none",    "body": [        {            "type": "plain_message",            "contents": "Customization\n\n\n"        }    ],    "actions": [        {            "label": [{"text":"Hide Mechanic: Disabled"}],            "tooltip": "By default, players can hide their position icons via invisibility or by wearing a mob head / carved pumpkin. This can be disabled.\n\nCrouching will be unaffected.",            "action": {                "type": "run_command",                "command": "trigger lbo.menu set 2020"            }        },        {            "label": [{"text":"Locator Bar: "},{"text":"Disabled","color": "red","bold": true}],"tooltip": "Disabling will turn off location sharing and hide the locator bar.",            "action": {                "type": "run_command",                "command": "trigger lbo.menu set 1000"            }        }    ],    "exit_action": {        "label": "Back",        "action": {            "type": "show_dialog",            "dialog": "lbo:main_menu"        }    }}
execute if score $toggle lbo.menu matches ..0 if score @s lbo.hide_mechanic matches 1 run return run dialog show @s {    "type": "minecraft:multi_action",    "title": "Locator Bar Options > Customize",    "pause": false,    "columns": 1,    "after_action": "none",    "body": [        {            "type": "plain_message",            "contents": "Customization\n\n\n"        }    ],    "actions": [        {            "label": [{"text":"Hide Mechanic: Enabled"}],            "tooltip": "By default, players can hide their position icons via invisibility or by wearing a mob head / carved pumpkin. This can be disabled.\n\nCrouching will be unaffected.",            "action": {                "type": "run_command",                "command": "trigger lbo.menu set 2000"            }        },        {            "label": [{"text":"Locator Bar: "},{"text":"Disabled","color": "red","bold": true}],"tooltip": "Disabling will turn off location sharing and hide the locator bar.",            "action": {                "type": "run_command",                "command": "trigger lbo.menu set 1000"            }        }    ],    "exit_action": {        "label": "Back",        "action": {            "type": "show_dialog",            "dialog": "lbo:main_menu"        }    }}

data modify storage lbo:data macro set value {color:"white",color_display:"White",hide:"Enabled",hide_toggle:0}
execute store result storage lbo:data macro.transmit int 1 run scoreboard players get $transmit_range lbo.menu
execute store result storage lbo:data macro.receive int 1 run scoreboard players get $receive_range lbo.menu
execute if score @s lbo.hide_mechanic matches 0 run data modify storage lbo:data macro.hide set value "Disabled"
execute if score @s lbo.hide_mechanic matches 0 run data modify storage lbo:data macro.hide_toggle set value 2
execute if score @s lbo.icon_color matches 0 run data modify storage lbo:data macro.color_display set value "Red"
execute if score @s lbo.icon_color matches 1 run data modify storage lbo:data macro.color_display set value "Dark Red"
execute if score @s lbo.icon_color matches 2 run data modify storage lbo:data macro.color_display set value "Gold"
execute if score @s lbo.icon_color matches 3 run data modify storage lbo:data macro.color_display set value "Yellow"
execute if score @s lbo.icon_color matches 4 run data modify storage lbo:data macro.color_display set value "Green"
execute if score @s lbo.icon_color matches 5 run data modify storage lbo:data macro.color_display set value "Dark Green"
execute if score @s lbo.icon_color matches 6 run data modify storage lbo:data macro.color_display set value "Aqua"
execute if score @s lbo.icon_color matches 7 run data modify storage lbo:data macro.color_display set value "Dark Aqua"
execute if score @s lbo.icon_color matches 8 run data modify storage lbo:data macro.color_display set value "Blue"
execute if score @s lbo.icon_color matches 9 run data modify storage lbo:data macro.color_display set value "Dark Blue"
execute if score @s lbo.icon_color matches 10 run data modify storage lbo:data macro.color_display set value "Light Purple"
execute if score @s lbo.icon_color matches 11 run data modify storage lbo:data macro.color_display set value "Dark Purple"
execute if score @s lbo.icon_color matches 12 run data modify storage lbo:data macro.color_display set value "White"
execute if score @s lbo.icon_color matches 13 run data modify storage lbo:data macro.color_display set value "Gray"
execute if score @s lbo.icon_color matches 14 run data modify storage lbo:data macro.color_display set value "Dark Gray"
execute if score @s lbo.icon_color matches 15 run data modify storage lbo:data macro.color_display set value "Black"
execute if score @s lbo.icon_color matches 0 run data modify storage lbo:data macro.color set value "red"
execute if score @s lbo.icon_color matches 1 run data modify storage lbo:data macro.color set value "dark_red"
execute if score @s lbo.icon_color matches 2 run data modify storage lbo:data macro.color set value "gold"
execute if score @s lbo.icon_color matches 3 run data modify storage lbo:data macro.color set value "yellow"
execute if score @s lbo.icon_color matches 4 run data modify storage lbo:data macro.color set value "green"
execute if score @s lbo.icon_color matches 5 run data modify storage lbo:data macro.color set value "dark_green"
execute if score @s lbo.icon_color matches 6 run data modify storage lbo:data macro.color set value "aqua"
execute if score @s lbo.icon_color matches 7 run data modify storage lbo:data macro.color set value "dark_aqua"
execute if score @s lbo.icon_color matches 8 run data modify storage lbo:data macro.color set value "blue"
execute if score @s lbo.icon_color matches 9 run data modify storage lbo:data macro.color set value "dark_blue"
execute if score @s lbo.icon_color matches 10 run data modify storage lbo:data macro.color set value "light_purple"
execute if score @s lbo.icon_color matches 11 run data modify storage lbo:data macro.color set value "dark_purple"
execute if score @s lbo.icon_color matches 12 run data modify storage lbo:data macro.color set value "white"
execute if score @s lbo.icon_color matches 13 run data modify storage lbo:data macro.color set value "gray"
execute if score @s lbo.icon_color matches 14 run data modify storage lbo:data macro.color set value "dark_gray"
execute if score @s lbo.icon_color matches 15 run data modify storage lbo:data macro.color set value "black"

execute unless score @s lbo.icon_color matches 0.. run data modify storage lbo:data macro.color_display set value "Unset"
execute unless score @s lbo.icon_color matches 0.. run data modify storage lbo:data macro.color set value "white"

function lbo:menu/customize/on with storage lbo:data macro
