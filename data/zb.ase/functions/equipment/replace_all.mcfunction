# replace #
execute if entity @e[type=armor_stand,tag=zb.ase_edit] if data entity @s SelectedItem run data modify entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] HandItems[0] set from entity @s SelectedItem
execute if entity @e[type=armor_stand,tag=zb.ase_edit] unless data entity @s SelectedItem run replaceitem entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] weapon.mainhand air

execute if entity @e[type=armor_stand,tag=zb.ase_edit] if data entity @s Inventory[{Slot:-106b}] run data modify entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] HandItems[1] set from entity @s Inventory[{Slot:-106b}]
execute if entity @e[type=armor_stand,tag=zb.ase_edit] unless data entity @s Inventory[{Slot:-106b}] run replaceitem entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] weapon.offhand air

execute if entity @e[type=armor_stand,tag=zb.ase_edit] if data entity @s Inventory[{Slot:100b}] run data modify entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] ArmorItems[0] set from entity @s Inventory[{Slot:100b}]
execute if entity @e[type=armor_stand,tag=zb.ase_edit] unless data entity @s Inventory[{Slot:100b}] run replaceitem entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] armor.feet air

execute if entity @e[type=armor_stand,tag=zb.ase_edit] if data entity @s Inventory[{Slot:101b}] run data modify entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] ArmorItems[1] set from entity @s Inventory[{Slot:101b}]
execute if entity @e[type=armor_stand,tag=zb.ase_edit] unless data entity @s Inventory[{Slot:101b}] run replaceitem entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] armor.legs air

execute if entity @e[type=armor_stand,tag=zb.ase_edit] if data entity @s Inventory[{Slot:102b}] run data modify entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] ArmorItems[2] set from entity @s Inventory[{Slot:102b}]
execute if entity @e[type=armor_stand,tag=zb.ase_edit] unless data entity @s Inventory[{Slot:102b}] run replaceitem entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] armor.chest air

execute if entity @e[type=armor_stand,tag=zb.ase_edit] if data entity @s Inventory[{Slot:103b}] run data modify entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] ArmorItems[3] set from entity @s Inventory[{Slot:103b}]
execute if entity @e[type=armor_stand,tag=zb.ase_edit] unless data entity @s Inventory[{Slot:103b}] run replaceitem entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] armor.head air

# call menu #
function zb.ase:echo/edit_equipment