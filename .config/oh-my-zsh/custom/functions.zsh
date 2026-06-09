# Zoxide
eval "$(zoxide init zsh --cmd cd)"

# Yazi
y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  yazi "$@" --cwd-file="$tmp"
  IFS= read -r -d '' cwd < "$tmp"
  [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
  rm -f -- "$tmp"
}

# Cloudflare warp 1.1.1.1
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

# Update Discord
vencord() {
  sudo pacman -Sy --noconfirm discord 2>&1
  sh -c "$(curl -sS https://vencord.dev/install.sh)"
  pkill -9 Discord
  setsid discord >/dev/null 2>&1 < /dev/null &
  disown
}
