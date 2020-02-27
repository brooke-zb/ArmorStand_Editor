# play click sound #
function zb.ase:echo/click_sound

# tp #
tp @s @e[type=armor_stand,tag=zb.ase_edit,limit=1]

# highlightray #
execute as @e[type=armor_stand,tag=zb.ase_edit,limit=1] at @s run function zb.ase:locate/pos_highlight_ray

# call menu #
function zb.ase:echo/edit_locate