# no target #
execute unless entity @e[type=armor_stand,tag=zb.ase_edit] run function zb.ase:echo/no_target

# summon item #
execute as @e[type=armor_stand,tag=zb.ase_edit] if data entity @s ArmorItems[2].id run summon item ~ ~1 ~ {Item:{Count:1b,id:"armor_stand"},PickupDelay:30000s,Tags:["zb.ase_item"]}

# modify nbt #
execute as @e[type=armor_stand,tag=zb.ase_edit] if data entity @s ArmorItems[2].id run data modify entity @e[type=item,tag=zb.ase_item,limit=1] Item set from entity @s ArmorItems[2]
execute as @e[type=armor_stand,tag=zb.ase_edit] if data entity @s ArmorItems[2].id run data modify entity @e[type=item,tag=zb.ase_item,limit=1] PickupDelay set value 0s

# call menu #
execute if data entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] ArmorItems[2].id run function zb.ase:echo/edit_equipment

# no item #
execute unless data entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] ArmorItems[2].id run function zb.ase:echo/no_item