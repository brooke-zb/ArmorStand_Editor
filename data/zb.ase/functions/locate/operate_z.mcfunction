# get pos #
execute as @e[type=armor_stand,tag=zb.ase_edit,limit=1] store result score @s zb.ase_temp run data get entity @s Pos[2] 100

# operation #
scoreboard players operation @e[type=armor_stand,tag=zb.ase_edit] zb.ase_temp += @s zb.ase_const

# set pos #
execute as @e[type=armor_stand,tag=zb.ase_edit,limit=1] store result entity @s Pos[2] double 0.01 run scoreboard players get @s zb.ase_temp

# highlightray #
execute as @e[type=armor_stand,tag=zb.ase_edit,limit=1] at @s run function zb.ase:locate/pos_highlight_ray

# call menu #
function zb.ase:echo/edit_locate