# export prefixes for vim server names

export DEFAULT_VIM_SERVER="DEF_VVS_"
export DEFAULT_GVIM_SERVER="DEF_GVS_"
export CFG_VIM_SERVER="VIM_CFG_"

### Vim/GVim {{{
#gv () {
    #command gvim --cmd "let quake_gvim=1" --class gvIM --remote-silent "$@" ||
    #command gvim --cmd "let quake_gvim=1" --class gvIM "$@";
#}

### basic {{{
gv () {
    command gvim --cmd "let quake_gvim=1" --class gvIM "$@"
}

vv () {
    command vim "$@"
}
## }}}
# open with default server {{{
vv-d () {
   vv --servername $DEFAULT_VIM_SERVER --remote-silent "$@" ||
   vv --servername $DEFAULT_VIM_SERVER "$@";
}

gv-d () {
   gv --servername $DEFAULT_GVIM_SERVER --remote-silent "$@" ||
   gv --servername $DEFAULT_GVIM_SERVER "$@";
}
## }}}

# Set the name of vim session the terminal is tied up to
vv-s(){
    export VIM_SERVER=$1
}
gv-s(){
    export GVIM_SERVER=$1
}

# Fire up a new server according to the argument supplied
vv-f(){
    vv-s $1
    vv --servername $VIM_SERVER
}
gv-f(){
    gv-s $1
    gv --servername $GVIM_SERVER
}

# Open up the files in the environment Vim server.
vv-o(){
    vv --servername $VIM_SERVER --remote-silent "$@"
}
gv-o(){
    gv --servername $GVIM_SERVER --remote-silent "$@"
}

# Reuse Vim ZSH completions for vim completions
compdef _vim vves
compdef _vim gves
## }}}

### config files {{{
vv-cfg () { vv --servername $CFG_VIM_SERVER --remote-silent "$@" }
cfg-psd() { vv-cfg /etc/psd.conf }
#}}}
