export SUDO_EDITOR="nvim"
export EDITOR="nvim"
export VISUAL="nvim"
export ZSH="$HOME/.config/oh-my-zsh"

ZSH_THEME="custom"
HYPHEN_INSENSITIVE="true"
plugins=(F-Sy-H uv npm zsh-autosuggestions)

zstyle ':omz:update' mode auto

autoload -Uz compinit
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
  compinit;
else
  compinit -C;
fi;

# nvm
source /usr/share/nvm/init-nvm.sh

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
export NODE_PATH="$PNPM_HOME/global/5/node_modules"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

source $ZSH/oh-my-zsh.sh
source <(fzf --zsh)

. "$HOME/.local/bin/env"
