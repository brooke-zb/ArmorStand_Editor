# play click sound #
function zb.ase:echo/click_sound

# set DisabledSlots nbt #
data modify entity @e[type=armor_stand,tag=zb.ase_edit,limit=1] DisabledSlots set value 0

# call menu #
function zb.ase:echo/edit_nbt