# plugin for formated & colorized output with less
# deps: 
#   lesspipe.sh - https://github.com/wofr06/lesspipe
#   pygments / pygmentize - http://pygments.org/docs/cmdline/ (pip pygments, pac pygmentize)

export LESSOPEN="|lesspipe.sh %s"
export LESS="-R"
export LESSCOLORIZER="pygmentize -f terminal"
