# set editor track score #
scoreboard players set @s zb.ase_times 21

# tag modify #
tag @e[tag=zb.ase_selected,type=armor_stand] remove zb.ase_selected
tag @e[type=armor_stand,limit=1,sort=nearest] add zb.ase_selected
scoreboard players set @e[tag=zb.ase_selected,type=armor_stand] zb.ase_cd 100

# get selected as data #
tellraw @s [{"text":"\n[对该盔甲架进行编辑] ","color":"light_purple","clickEvent":{"action":"run_command","value":"/function zb.ase:echo/pre_edit"},"hoverEvent":{"action":"show_text","value":"点击进入编辑界面"}},{"text":"[忽略]","color":"red","clickEvent":{"action":"run_command","value":"/function zb.ase:selector/ignore"},"hoverEvent":{"action":"show_text","value":"忽略该盔甲架\n将不再选择该盔甲架"}}]