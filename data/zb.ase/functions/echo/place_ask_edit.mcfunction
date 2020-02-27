# tag modify #
tag @e[tag=zb.ase_placed,type=armor_stand] remove zb.ase_placed
tag @e[type=armor_stand,tag=zb.ase_place,limit=1,sort=nearest] add zb.ase_placed
tag @e[tag=zb.ase_placed,type=armor_stand] remove zb.ase_place
scoreboard players set @e[tag=zb.ase_placed,type=armor_stand] zb.ase_cd 100

# reset score #
scoreboard players reset @s zb.ase_place_as

# get place as data #
tellraw @s [{"text":"\n[对放置的盔甲架进行编辑] ","color":"green","clickEvent":{"action":"run_command","value":"/function zb.ase:echo/place_pre_edit"},"hoverEvent":{"action":"show_text","value":"点击进入编辑界面"}},{"text":"[忽略]","color":"red","clickEvent":{"action":"run_command","value":"/function zb.ase:selector/place_ignore"},"hoverEvent":{"action":"show_text","value":"忽略该盔甲架\n将不再选择该盔甲架"}}]