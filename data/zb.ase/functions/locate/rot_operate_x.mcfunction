# get pos #
execute as @e[type=armor_stand,tag=zb.ase_edit,limit=1] store result score @s zb.ase_temp run data get entity @s Rotation[0]

# operation #
scoreboard players operation @e[type=armor_stand,tag=zb.ase_edit] zb.ase_temp += @s zb.ase_const

# set pos #
execute as @e[type=armor_stand,tag=zb.ase_edit,limit=1] store result entity @s Rotation[0] float 1 run scoreboard players get @s zb.ase_temp

# hightlight ray #
execute if entity @s[tag=zb.ase_ray_eyes,tag=!zb.ase_rot_y] as @e[type=armor_stand,tag=zb.ase_edit] at @s anchored eyes run function zb.ase:locate/rot_highlight_ray
execute if entity @s[tag=zb.ase_ray_feet,tag=!zb.ase_rot_y] as @e[type=armor_stand,tag=zb.ase_edit] at @s run function zb.ase:locate/rot_highlight_ray

# call menu #
function zb.ase:echo/edit_locate