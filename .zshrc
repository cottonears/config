# links with some helpful info on zsh customisations:
# https://git-scm.com/book/en/v2/Appendix-A%3A-Git-in-Other-Environments-Git-in-Zsh
# https://dev.to/cassidoo/customizing-my-zsh-prompt-3417
autoload -Uz compinit && compinit # enables completions
autoload -Uz vcs_info # shows version control info in prompts 
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '
setopt prompt_subst
PROMPT='%F{green}$USER%f %F{yellow}%~%f %F{magenta}${vcs_info_msg_0_}%f❯ '
RPROMPT='%*' # show the time at right

# aliases
alias ls='ls -lah --color=auto'

# set environment variables

