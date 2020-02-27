# play click sound #
function zb.ase:echo/click_sound

# set value #
scoreboard players set @s zb.ase_const 1

# edit pose #
execute if entity @s[tag=zb.ase_rot_x] run function zb.ase:locate/rot_operate_x
execute if entity @s[tag=zb.ase_rot_y] run function zb.ase:locate/rot_operate_y

# call menu #
function zb.ase:echo/edit_locate