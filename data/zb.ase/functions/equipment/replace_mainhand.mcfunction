# replace #
execute if entity @e[type=armor_stand,tag=zb.ase_edit] if data entity @s SelectedItem run data modify entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] HandItems[0] set from entity @s SelectedItem
execute if entity @e[type=armor_stand,tag=zb.ase_edit] unless data entity @s SelectedItem run replaceitem entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] weapon.mainhand air

# call menu #
function zb.ase:echo/edit_equipment