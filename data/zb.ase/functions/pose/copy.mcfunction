# play click sound #
function zb.ase:echo/click_sound

# title #
title @s title {"text":""}
title @s subtitle [{"text":"[剪贴板] ","color":"dark_green","bold":true},{"text":"已复制到剪贴板","color":"green"}]

# copy to clipboard #
data modify storage zb:ase PoseClipBoard set from storage zb:ase Pose