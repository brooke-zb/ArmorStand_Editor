# judge boolean #
execute as @e[type=armor_stand,tag=zb.ase_edit,limit=1] if data entity @s {ShowArms:1b} run data modify storage zb:ase ModifyNbt set value 0b
execute as @e[type=armor_stand,tag=zb.ase_edit,limit=1] if data entity @s {ShowArms:0b} run data modify storage zb:ase ModifyNbt set value 1b

# edit nbt #
data modify entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] ShowArms set from storage zb:ase ModifyNbt

# call menu #
function zb.ase:echo/edit_nbt