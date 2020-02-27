# judge boolean #
execute as @e[type=armor_stand,tag=zb.ase_edit,limit=1] if data entity @s {Fire:-1s} run data modify storage zb:ase ModifyNbt set value 32767s
execute as @e[type=armor_stand,tag=zb.ase_edit,limit=1] unless data entity @s {Fire:-1s} run data modify storage zb:ase ModifyNbt set value -1s

# edit nbt #
data modify entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] Fire set from storage zb:ase ModifyNbt

# call menu #
function zb.ase:echo/edit_nbt