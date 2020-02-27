# play click sound #
function zb.ase:echo/click_sound

# set DisabledSlots nbt #
execute store result score @e[type=armor_stand,tag=zb.ase_edit,limit=1] zb.ase_slot run data get entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] DisabledSlots
scoreboard players remove @e[type=armor_stand,tag=zb.ase_edit,limit=1] zb.ase_slot 131072
execute store result entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] DisabledSlots int 1 run scoreboard players get @e[type=armor_stand,tag=zb.ase_edit,limit=1] zb.ase_slot

# call menu #
function zb.ase:echo/edit_nbt