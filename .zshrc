#git-completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)


#tab case completion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'


# git branch
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '(%b)'

#nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


#prompt customization
setopt PROMPT_SUBST

PROMPT='%F{30}%n%f@%F{31}%m %B%F{32}%0~ %# %b%F{29}${vcs_info_msg_0_} %F{3}> '

# TTY setup
export GPG_TTY=$(tty)


autoload -Uz compinit && compinit

# Created by `pipx` on 2024-07-04 17:03:11
export PATH="$PATH:/Users/valakirka/.local/bin"
