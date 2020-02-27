# no target #
execute unless entity @e[type=armor_stand,tag=zb.ase_edit] run function zb.ase:echo/no_target

# summon item #
execute if entity @e[type=armor_stand,tag=zb.ase_edit] run summon item ~ ~1 ~ {Item:{Count:1b,id:"armor_stand"},PickupDelay:30000s,Tags:["zb.ase_copy"]}

# modify nbt #
execute as @e[type=item,tag=zb.ase_copy,limit=1] run function zb.ase:selector/copy_nbt