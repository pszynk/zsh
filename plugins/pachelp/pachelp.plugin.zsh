#-------------------------------
# aliase
#-------------------------------


# PACAUR
alias p="pacaur"
alias pC="pacaur -C"         # Fix all configuration files with vimdiff
alias pU="pacaur -U"         # Install specific package not from the repositories but from a file
alias pR="pacaur -R"         # Remove the specified package(s), retaining its configuration(s) and required dependencies
alias pRns="pacaur -Rns"     # Remove the specified package(s), its configuration(s) and unneeded dependencies
alias pS="pacaur -S"         # Install specific package(s) from the repositories
alias pSi="pacaur -Si"       # Display information about a given package in the repositories
alias pSs="pacaur -Ss"       # Search for package(s) in the repositories
alias pSyu="pacaur -Syu"     # Synchronize with repositories before upgrading packages (AUR packages too) that are out of date on the local system.
alias pSyua="pacaur -Syua"   # Synchronize with repositories before upgrading packages (AUR packages too) that are out of date on the local system.
alias pQi="pacaur -Qi"       # Display information about a given package in the local database
alias pQs="pacaur -Qs"       # Search for package(s) in the local database
alias pQe="pacaur -Qe"       # List installed packages, even those installed from AUR (they're tagged as "local")
alias pQtd="pacaur -Qtd"     # list orphans using

# POWERPILL
local _pp_cmd="${HOME}/.local/share/bin/powerpill"
alias spp="sudo ${_pp_cmd}"
alias sppC="sudo ${_pp_cmd} -v --powerpill-clean"

# BAUERBILL
local _bb_args="--bb-config /home/pawel/.config/bauerbill/bauerbill.json"

local _bb_cmd="bauerbill ${_bb_args}"
alias bauerbill="${_bb_cmd}"
alias bb="${_bb_cmd}"

local _bbw_cmd="bb-wrapper ${_bb_args}"
alias bb-wrapper="${_bbw_cmd}"
alias bbw="${_bbw_cmd}"
