# modify nbt #
execute store result entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] Rotation[0] float 1 run scoreboard players get @s zb.ase_rot_x

# reset score #
scoreboard players reset @s zb.ase_rot_x

# call menu & highlight #
function zb.ase:locate/rot_highlight_ray
function zb.ase:echo/edit_locate