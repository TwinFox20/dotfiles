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
alias lS='ls -1'
alias lt='ls --tree --level=2'

# Other
alias yay="paru"
alias cd-="cd - > /dev/null"
alias ff="clear; fastfetch"
alias code="codium"
alias cplc="history -1 | sed 's/^ *[0-9]\+ *//' | wl-copy"
