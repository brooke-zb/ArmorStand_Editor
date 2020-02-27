# play click sound #
execute if entity @e[type=armor_stand,tag=zb.ase_edit] run function zb.ase:echo/click_sound

# no target #
execute unless entity @e[tag=zb.ase_placed,type=armor_stand] unless entity @e[tag=zb.ase_edit,type=armor_stand] run function zb.ase:echo/no_target

execute if entity @e[tag=zb.ase_placed,type=armor_stand] run function zb.ase:echo/place_edit_menu
execute if entity @e[tag=zb.ase_edit,type=armor_stand] unless entity @e[tag=zb.ase_placed,type=armor_stand] run function zb.ase:echo/place_edit_menu