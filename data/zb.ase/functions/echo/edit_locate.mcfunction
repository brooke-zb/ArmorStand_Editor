# play click sound #
execute if entity @e[tag=zb.ase_edit,type=armor_stand] run function zb.ase:echo/click_sound

# no target #
execute unless entity @e[type=armor_stand,tag=zb.ase_edit] run function zb.ase:echo/no_target

# get nbt #
function zb.ase:selector/menu/get_locate

# tellraw storage #
execute if entity @e[type=armor_stand,tag=zb.ase_edit] run tellraw @s [{"nbt":"LocateMenu[0]","storage":"zb:ase","interpret":true},{"nbt":"LocateMenu[1]","storage":"zb:ase","interpret":true},{"nbt":"LocateMenu[2]","storage":"zb:ase","interpret":true},{"nbt":"LocateMenu[3]","storage":"zb:ase","interpret":true},{"nbt":"LocateMenu[4]","storage":"zb:ase","interpret":true},{"nbt":"LocateMenu[5]","storage":"zb:ase","interpret":true},{"nbt":"LocateMenu[6]","storage":"zb:ase","interpret":true}]