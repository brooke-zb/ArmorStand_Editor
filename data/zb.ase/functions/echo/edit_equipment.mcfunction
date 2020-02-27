# play click sound #
execute if entity @e[tag=zb.ase_edit,type=armor_stand] run function zb.ase:echo/click_sound

# no target #
execute unless entity @e[type=armor_stand,tag=zb.ase_edit] run function zb.ase:echo/no_target

# get nbt #
execute as @e[type=armor_stand,tag=zb.ase_edit] run function zb.ase:selector/menu/get_equipment

# tellraw storage #
execute if entity @e[type=armor_stand,tag=zb.ase_edit] run tellraw @s [{"nbt":"EquipmentMenu[0]","storage":"zb:ase","interpret":true},{"nbt":"EquipmentMenu[1]","storage":"zb:ase","interpret":true},{"nbt":"EquipmentMenu[2]","storage":"zb:ase","interpret":true},{"nbt":"EquipmentMenu[3]","storage":"zb:ase","interpret":true},{"nbt":"EquipmentMenu[4]","storage":"zb:ase","interpret":true},{"nbt":"EquipmentMenu[5]","storage":"zb:ase","interpret":true},{"nbt":"EquipmentMenu[6]","storage":"zb:ase","interpret":true},{"nbt":"EquipmentMenu[7]","storage":"zb:ase","interpret":true},{"nbt":"EquipmentMenu[8]","storage":"zb:ase","interpret":true}]