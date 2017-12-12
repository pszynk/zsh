#-------------------------------
# aliase
#-------------------------------

## core commands {{{
alias e='exit'
alias s='sudo'
alias sp='sudo -E env "PATH=$PATH"'
alias rm="echo Usuwanie przez rm zablokowane - rmi lub trash"
alias rmi="'rm' -i"
alias grep="grep -n --color=auto"
alias tree="tree -C"
alias mounted='mount | column -t'
## }}}

## cd {{{
alias ...="cd ../.."
alias ....="cd ../../.."
## }}}

## programs {{{
alias ghci="ghci-color"

alias mail="mymailx"
alias mailx="mymailx"

# tmux 256 - colours
alias tmux='tmux -2'

alias ytd="youtube-dl --external-downloader aria2c --external-downloader-args \
    \"--conf-path=${XDG_CONFIG_HOME}/aria2/ytd-aria2.conf\" \
    -o '%(title)s.%(ext)s'"
#}}}

# feh catalogue
alias fehc='feh -t -E 128 -y 128 -W 1024 -H 800'
