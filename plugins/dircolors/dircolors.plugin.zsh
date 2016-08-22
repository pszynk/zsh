#local dircolors="${0%/*}dircolors.conf"
local dircolors="${0:a:h}/dircolors.conf"
eval $(dircolors ${dircolors})
