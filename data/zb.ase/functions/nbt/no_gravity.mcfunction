# judge boolean #
execute as @e[type=armor_stand,tag=zb.ase_edit,limit=1] if data entity @s {NoGravity:1b} run data modify storage zb:ase ModifyNbt set value 0b
execute as @e[type=armor_stand,tag=zb.ase_edit,limit=1] unless data entity @s {NoGravity:1b} run data modify storage zb:ase ModifyNbt set value 1b

# edit nbt #
data merge entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] {NoGravity:0b}
data modify entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] NoGravity set from storage zb:ase ModifyNbt

# call menu #
function zb.ase:echo/edit_nbt