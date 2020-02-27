# play click sound #
function zb.ase:echo/click_sound

# set value #
scoreboard players set @s zb.ase_const -50

# edit pose #
execute if entity @s[tag=zb.ase_opt_x] run function zb.ase:locate/operate_x
execute if entity @s[tag=zb.ase_opt_y] run function zb.ase:locate/operate_y
execute if entity @s[tag=zb.ase_opt_z] run function zb.ase:locate/operate_z

# call menu #
function zb.ase:echo/edit_locate