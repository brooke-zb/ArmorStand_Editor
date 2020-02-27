# set value #
scoreboard players set @s zb.ase_const -90

# edit pose #
execute if entity @s[tag=zb.ase_opt_x] run function zb.ase:pose/operate_x
execute if entity @s[tag=zb.ase_opt_y] run function zb.ase:pose/operate_y
execute if entity @s[tag=zb.ase_opt_z] run function zb.ase:pose/operate_z