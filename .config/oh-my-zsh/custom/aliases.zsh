# Zsh
alias zshrc="$EDITOR $HOME/.zshrc"
alias zshsource="source $HOME/.zshrc"
alias zshaliases="$EDITOR $ZSH_CUSTOM/aliases.zsh"
alias zshfunctions="$EDITOR $ZSH_CUSTOM/functions.zsh"

# Exit
for a in q :q quit; do
  alias $a="exit";
done

# Nvim
for a in v vi vim; do
  alias $a="nvim";
done

# Eza
alias ls='eza --color=always --group-directories-first --icons'
alias ll='eza -la --icons --octal-permissions --group-directories-first'
alias l='eza -bGF --header --git --color=always --group-directories-first --icons'
alias llm='eza -lbGd --header --git --sort=modified --color=always --group-directories-first --icons'
alias la='eza --long --all --group --group-directories-first'
alias lx='eza -lbhHigUmuSa@ --time-style=long-iso --git --color-scale --color=always --group-directories-first --icons'

alias lS='eza -1 --color=always --group-directories-first --icons'
alias lt='eza --tree --level=2 --color=always --group-directories-first --icons'

# Package manager
alias yay="paru"
alias show_unused_pkgs="paru -Qtdq"

# Other
alias ff="fastfetch"
alias code="codium"
alias cplc="history -1 | sed 's/^ *[0-9]\+ *//' | wl-copy"