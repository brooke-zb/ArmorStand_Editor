scoreboard players remove @e[scores={zb.ase_cd=1..}] zb.ase_cd 1
tag @e[type=armor_stand,tag=zb.ase_selected,scores={zb.ase_cd=0}] remove zb.ase_selected
tag @e[type=armor_stand,tag=zb.ase_placed,scores={zb.ase_cd=0}] remove zb.ase_placed

# debug #
scoreboard players reset @e[type=armor_stand,scores={zb.ase_cd=0}] zb.ase_cd