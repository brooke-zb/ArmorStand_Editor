# set detect cooldown #
scoreboard players set @s[scores={zb.ase_cd=0}] zb.ase_cd 15

# debug #
#particle flame ~ ~ ~ 0 0 0 0 1

# select #
execute at @e[type=armor_stand,distance=..1,tag=!zb.ase_selected,tag=!zb.ase_placed,tag=!zb.ase_edit,tag=!zb.ase_ignore,limit=1] as @s run function zb.ase:echo/ask_edit

# recursion #
execute unless entity @e[type=armor_stand,distance=..1,tag=!zb.ase_selected,tag=!zb.ase_placed,tag=!zb.ase_edit,tag=!zb.ase_ignore,limit=1] run scoreboard players add @s[scores={zb.ase_times=..20}] zb.ase_times 1
execute unless entity @e[type=armor_stand,distance=..1,tag=!zb.ase_selected,tag=!zb.ase_placed,tag=!zb.ase_edit,tag=!zb.ase_ignore,limit=1] if entity @s[scores={zb.ase_times=..20}] positioned ^ ^ ^0.75 run function zb.ase:selector/sight_track
scoreboard players set @s[scores={zb.ase_times=21..}] zb.ase_times 0