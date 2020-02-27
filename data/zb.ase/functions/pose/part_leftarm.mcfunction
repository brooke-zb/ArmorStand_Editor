# play click sound #
function zb.ase:echo/click_sound

# no target #
execute unless entity @e[type=armor_stand,tag=zb.ase_edit] run function zb.ase:echo/no_target

# set score #
scoreboard players set @s zb.ase_opt_part 3

# call menu #
function zb.ase:echo/edit_pose