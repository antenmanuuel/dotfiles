# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.

export ZSH=/home/anten/.oh-my-zsh
export PROJECT_HOME=/home/anten/projects
export PATH=$PATH:~/.local/bin
export PATH="$PATH:$HOME/.dotnet/tools/"
export SHELL=/bin/zsh
export PATH=/usr/local/bin:$PATH
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
# ZSH_THEME="amuse"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=( git zsh-syntax-highlighting zsh-autosuggestions zsh-completions poetry )
source $ZSH/oh-my-zsh.sh

alias pip="pip3"
alias python="python3"

alias ls='ls -lah'
alias sz='source ~/.zshrc'

# projects
alias project="cd ~/projects/$CURRENT_PROJECT"
alias rr=project

# tmux stuff
# alias tmux="TERM=screen-256color-bce tmux"
[[ $TMUX = "" ]] && export TERM="xterm-256color"
alias tm="tmux new-session"
alias tl="tmux list-sessions"
alias ta="tmux attach -t"

unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1
[ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"

if [ -x "$(command -v colorls)" ]; then
    alias ls="colorls"
    alias la="colorls -al"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
#eval "$(oh-my-posh init zsh)"

export PATH="$HOME/.poetry/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


