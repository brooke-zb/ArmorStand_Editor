execute as @e[tag=zb.ase_selected,type=armor_stand] unless data entity @s {Marker:1b} if data entity @s {Small:0b} at @s run particle dust 0.8 0 1 1 ~ ~2.1 ~ 0 0.1 0 0 1
execute as @e[tag=zb.ase_selected,type=armor_stand] unless data entity @s {Marker:1b} if data entity @s {Small:1b} at @s run particle dust 0.8 0 1 1 ~ ~1.1 ~ 0 0.1 0 0 1
execute as @e[tag=zb.ase_selected,type=armor_stand] if data entity @s {Marker:1b} at @s run particle dust 0.8 0 1 1 ~ ~0.3 ~ 0 0.1 0 0 1

execute as @e[tag=zb.ase_edit,type=armor_stand] unless data entity @s {Marker:1b} if data entity @s {Small:0b} at @s run particle dust 1 0.2 0.1 1.5 ~ ~2.1 ~ 0 0.1 0 1 1
execute as @e[tag=zb.ase_edit,type=armor_stand] unless data entity @s {Marker:1b} if data entity @s {Small:1b} at @s run particle dust 1 0.2 0.1 1.5 ~ ~1.1 ~ 0 0.1 0 1 1
execute as @e[tag=zb.ase_edit,type=armor_stand] if data entity @s {Marker:1b} at @s run particle dust 1 0.2 0.1 1.5 ~ ~0.3 ~ 0 0.1 0 1 1

execute as @e[tag=zb.ase_placed,type=armor_stand] unless data entity @s {Marker:1b} if data entity @s {Small:0b} at @s run particle dust 0 1 0.8 1 ~ ~2.1 ~ 0 0.1 0 0 1
execute as @e[tag=zb.ase_placed,type=armor_stand] unless data entity @s {Marker:1b} if data entity @s {Small:1b} at @s run particle dust 0 1 0.8 1 ~ ~1.1 ~ 0 0.1 0 0 1
execute as @e[tag=zb.ase_placed,type=armor_stand] if data entity @s {Marker:1b} at @s run particle dust 0 1 0.8 1 ~ ~0.3 ~ 0 0.1 0 1 1