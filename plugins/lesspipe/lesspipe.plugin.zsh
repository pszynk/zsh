# plugin for formated & colorized output with less
# deps: 
#   lesspipe.sh - https://github.com/wofr06/lesspipe
#   pygments / pygmentize - http://pygments.org/docs/cmdline/ (pip pygments, pac pygmentize)

export LESS="-R"
if type lesspipe.sh >/dev/null 2>&1; then
    export LESSOPEN="|lesspipe.sh %s"
fi

# modify code2color file from package lesspipe,
# not the most elegant of solutions...
#
# <<<
# -system($ENV{LESSCOLORIZER}, @ARGV);
# ===
# +system($ENV{LESSCOLORIZER}, '-f', 'terminal', @ARGV);
# >>>
#
if type pygmentize >/dev/null 2>&1; then
    export LESSCOLORIZER="pygmentize"
fi
