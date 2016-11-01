#
# Provides for an easier use of GPG by setting up gpg-agent.
#
#
# Return if requirements are not found.
if (( ! $+commands[gpg-agent] )); then
  return 1
fi

# Set SSH to use gpg-agent
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
    export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi

# Inform gpg-agent of the current TTY for user prompts.
export GPG_TTY="$(tty)"


# Refresh gpg-agent tty in case user switches into an X session
gpg-connect-agent UPDATESTARTUPTTY /bye >/dev/null


# Disable GUI prompts inside SSH.
if [[ -n "$SSH_CONNECTION" ]]; then
  export PINENTRY_USER_DATA='USE_CURSES=1'
fi
