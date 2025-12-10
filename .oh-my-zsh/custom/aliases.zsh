# zsh
alias q="exit"
alias :q="exit"
alias quit="exit"
alias zshrc="$EDITOR ~/.zshrc"
alias zshsource="source ~/.zshrc"
alias zshaliases="$EDITOR $ZSH_CUSTOM/aliases.zsh"
alias ohmyzsh="xdg-open ~/.oh-my-zsh" 
alias hypr-config="xdg-open ~/.config/hypr/land"
alias show_unused_pkgs="paru -Qtdq"
alias remove_unused_pkgs="paru -Rns $(paru -Qtdq)"

# zoxide
eval "$(zoxide init zsh --cmd cd)"

# yazi
function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  yazi "$@" --cwd-file="$tmp"
  IFS= read -r -d '' cwd < "$tmp"
  [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
  rm -f -- "$tmp"
}

# vpn
vpn() {
  if ! systemctl is-active --quiet warp-svc.service; then
    sudo systemctl start warp-svc.service > /dev/null 2>&1
    sleep 1
  fi

  if warp-cli status 2>/dev/null | grep -q Connected; then
    warp-cli disconnect > /dev/null 2>&1
    echo "Disconnected"
  else
    warp-cli connect > /dev/null 2>&1
    echo "Connected"
  fi
}

# discord
vencord() {
  DISCORD_PATH="/opt/discord"
  INSTALLER_PATH="$HOME/.local/bin/VencordInstallerCli-linux"
  INSTALLER_URL="https://github.com/Vendicated/VencordInstaller/releases/latest/download/VencordInstallerCli-Linux"

  paru -Sy --noconfirm discord >/dev/null 2>&1

  mkdir -p "$(dirname "$INSTALLER_PATH")"
  TMPFILE=$(mktemp)
  trap 'rm -f "$TMPFILE"' EXIT

  curl -sSLf "$INSTALLER_URL" -o "$TMPFILE"

  if [ ! -f "$INSTALLER_PATH" ] || ! cmp -s "$TMPFILE" "$INSTALLER_PATH"; then
    mv "$TMPFILE" "$INSTALLER_PATH"
    chmod +x "$INSTALLER_PATH"
  fi

  sudo "$INSTALLER_PATH" -repair -location "$DISCORD_PATH"
}

