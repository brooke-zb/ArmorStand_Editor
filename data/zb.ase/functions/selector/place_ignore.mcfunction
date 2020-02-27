# play click sound #
execute if entity @e[tag=zb.ase_edit,type=armor_stand] run function zb.ase:echo/click_sound
 
# no target #
execute unless entity @e[type=armor_stand,tag=zb.ase_placed] run function zb.ase:echo/no_target

# add tag #
execute if entity @e[type=armor_stand,tag=zb.ase_placed] run tellraw @s [{"text":"\n已忽略该盔甲架，清空忽略列表请打开","color":"green"},{"text":"[使用说明]","color":"yellow","hoverEvent":{"action":"show_text","value":"点击打开使用说明"},"clickEvent":{"action":"run_command","value":"/function zb.ase:echo/show_help"}}]
tag @e[type=armor_stand,tag=zb.ase_placed] add zb.ase_ignore
tag @e[type=armor_stand,tag=zb.ase_placed] remove zb.ase_placed