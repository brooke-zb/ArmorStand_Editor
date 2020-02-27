# play click sound #
execute if entity @e[tag=zb.ase_edit,type=armor_stand] run function zb.ase:echo/click_sound

# no target #
execute unless entity @e[type=armor_stand,tag=zb.ase_edit] run function zb.ase:echo/no_target

# get nbt #
execute as @e[type=armor_stand,tag=zb.ase_edit,limit=1] run function zb.ase:selector/menu/get_nbt

# special tag #
tag @s add zb.ase_edit_nbt

# tellraw storage #
execute if entity @e[type=armor_stand,tag=zb.ase_edit] run tellraw @s [{"nbt":"NbtMenu[0]","storage":"zb:ase","interpret":true},{"nbt":"NbtMenu[1]","storage":"zb:ase","interpret":true},{"nbt":"NbtMenu[2]","storage":"zb:ase","interpret":true},{"nbt":"NbtMenu[3]","storage":"zb:ase","interpret":true},{"nbt":"NbtMenu[4]","storage":"zb:ase","interpret":true},{"nbt":"NbtMenu[5]","storage":"zb:ase","interpret":true},{"nbt":"NbtMenu[6]","storage":"zb:ase","interpret":true},{"nbt":"NbtMenu[7]","storage":"zb:ase","interpret":true},{"nbt":"NbtMenu[8]","storage":"zb:ase","interpret":true},{"nbt":"NbtMenu[9]","storage":"zb:ase","interpret":true},{"nbt":"NbtMenu[10]","storage":"zb:ase","interpret":true},{"nbt":"NbtMenu[11]","storage":"zb:ase","interpret":true},{"nbt":"NbtMenu[12]","storage":"zb:ase","interpret":true},{"nbt":"NbtMenu[13]","storage":"zb:ase","interpret":true},{"nbt":"NbtMenu[14]","storage":"zb:ase","interpret":true},{"nbt":"NbtMenu[15]","storage":"zb:ase","interpret":true},{"nbt":"NbtMenu[16]","storage":"zb:ase","interpret":true},{"nbt":"NbtMenu[17]","storage":"zb:ase","interpret":true},{"nbt":"NbtMenu[18]","storage":"zb:ase","interpret":true},{"nbt":"NbtMenu[19]","storage":"zb:ase","interpret":true},{"nbt":"NbtMenu[20]","storage":"zb:ase","interpret":true},{"nbt":"NbtMenu[21]","storage":"zb:ase","interpret":true},{"nbt":"NbtMenu[22]","storage":"zb:ase","interpret":true},{"nbt":"NbtMenu[23]","storage":"zb:ase","interpret":true},{"nbt":"NbtMenu[24]","storage":"zb:ase","interpret":true},{"nbt":"NbtMenu[25]","storage":"zb:ase","interpret":true},{"nbt":"NbtMenu[26]","storage":"zb:ase","interpret":true},{"nbt":"NbtMenu[27]","storage":"zb:ase","interpret":true},{"nbt":"NbtMenu[28]","storage":"zb:ase","interpret":true},{"nbt":"NbtMenu[29]","storage":"zb:ase","interpret":true},{"nbt":"NbtMenu[30]","storage":"zb:ase","interpret":true},{"nbt":"NbtMenu[31]","storage":"zb:ase","interpret":true},{"nbt":"NbtMenu[32]","storage":"zb:ase","interpret":true}]