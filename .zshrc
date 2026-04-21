export SUDO_EDITOR="nvim"
export EDITOR="nvim"
export VISUAL="nvim"
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="custom"
HYPHEN_INSENSITIVE="true"
plugins=(F-Sy-H uv npm alias-finder zsh-autosuggestions)

zstyle ':omz:update' mode auto

autoload -Uz compinit
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
  compinit;
else
  compinit -C;
fi;

# pnpm
export PNPM_HOME="/home/twinfox/.local/share/pnpm"
export NODE_PATH="$HOME/.local/share/pnpm/global/5/node_modules"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

source $ZSH/oh-my-zsh.sh
source <(fzf --zsh)

. "$HOME/.local/bin/env"

# dotnet
export PATH="$PATH:/home/twinfox/.dotnet/tools"

clear
