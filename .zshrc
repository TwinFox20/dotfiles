export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export SUDO_EDITOR="nvim"
export EDITOR="nvim"
export VISUAL="nvim"
export ZSH="$HOME/.oh-my-zsh"
# https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="custom"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

zstyle ':omz:update' mode auto # update automatically without asking

# Standard plugins in $ZSH/plugins/
# Custom plugins in $ZSH_CUSTOM/plugins/
plugins=(F-Sy-H uv npm alias-finder zsh-autosuggestions)

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

# Ashen Theme
# Theme Author: Daniel Fichtinger
# Ported By: eckertalex
# License: MIT

export FZF_DEFAULT_OPTS="
  $FZF_DEFAULT_OPTS
	--color=fg:#a7a7a7
	--color=fg+:#d5d5d5
	--color=bg:#121212
	--color=bg+:#323232
	--color=hl:#C4693D
	--color=hl+:#E49A44
	--color=info:#a7a7a7
	--color=marker:#C4693D
	--color=prompt:#C4693D
	--color=spinner:#D87C4A
	--color=pointer:#E5A72A
	--color=header:#B14242
	--color=border:#a7a7a7
	--color=query:#d5d5d5
	--color=gutter:#121212"

