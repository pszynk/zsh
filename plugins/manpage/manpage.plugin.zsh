# Color
#------------------------------------------------------
# color the manpages
# tutorial video: http://www.youtube.com/watch?v=9BFaLAa428k
#export LESS_TERMCAP_mb=$'\E[00;34m'             # begin blinking
#export LESS_TERMCAP_md=$'\E[01;35m'             # begin bold
#export LESS_TERMCAP_me=$'\E[0m'                 # end mode
#export LESS_TERMCAP_se=$'\E[0m'                 # end standout-mode
#export LESS_TERMCAP_so=$'\E[01;42;30m'          # begin standout-mode - info box
#export LESS_TERMCAP_ue=$'\E[0m'                 # end underline
#export LESS_TERMCAP_us=$'\E[00;36m'             # begin underline

man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;42;30m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;35m") \
        man "$@"
}
