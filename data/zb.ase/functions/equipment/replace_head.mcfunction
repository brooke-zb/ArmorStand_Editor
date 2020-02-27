# replace #
execute if entity @e[type=armor_stand,tag=zb.ase_edit] if data entity @s SelectedItem run data modify entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] ArmorItems[3] set from entity @s SelectedItem
execute if entity @e[type=armor_stand,tag=zb.ase_edit] unless data entity @s SelectedItem run replaceitem entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] armor.head air

# call menu #
function zb.ase:echo/edit_equipment