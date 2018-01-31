local _fzf_dir="/usr/share/fzf"

if [ -d "$_fzf_dir" ]; then
  source "${_fzf_dir}/key-bindings.zsh"
  source "${_fzf_dir}/completion.zsh"
fi

export FZF_DEFAULT_OPTS="--height 40%"

if [ fd is installed ]; then
  export FZF_DEFAULT_COMMAND='
  (git ls-tree -r --name-only HEAD ||
    fd --type f --hidden --follow --exclude .gir --exclude .svn) 2> /dev/null'
else
  export FZF_DEFAULT_COMMAND='
  (git ls-tree -r --name-only HEAD ||
    find . -path "*/\.*" -prune -o -type f -print -o -type l -print |
    sed s/^..//) 2> /dev/null'
fi

# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
