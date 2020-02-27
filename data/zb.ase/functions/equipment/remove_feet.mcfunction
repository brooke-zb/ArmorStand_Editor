# no target #
execute unless entity @e[type=armor_stand,tag=zb.ase_edit] run function zb.ase:echo/no_target

# remove #
replaceitem entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] armor.feet air

# call menu #
function zb.ase:echo/edit_equipment