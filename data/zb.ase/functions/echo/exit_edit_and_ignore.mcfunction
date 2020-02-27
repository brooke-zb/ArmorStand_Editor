# play click sound #
execute if entity @e[type=armor_stand,tag=zb.ase_edit] run function zb.ase:echo/click_sound

# no target #
execute unless entity @e[type=armor_stand,tag=zb.ase_edit] run function zb.ase:echo/no_target

# add tag #
execute if entity @e[type=armor_stand,tag=zb.ase_edit] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n已退出对该盔甲架的编辑并忽略","color":"green"}
tag @e[type=armor_stand,tag=zb.ase_edit] add zb.ase_ignore
tag @e[type=armor_stand,tag=zb.ase_edit] remove zb.ase_edit
