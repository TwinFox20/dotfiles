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

# Tailscale
haru() {
  sudo systemctl start tailscaled.service
  tailscale status
  sudo tailscale login --login-server "https://tail.linkoringer.ru/" >&1 2>&1
  tailscale status | grep haru | cut -c 1-13
  wl-copy $(tailscale status | grep haru | cut -c 1-13)
}

# Update Discord
vencord() {
  INSTALLER_URL="https://github.com/Vendicated/VencordInstaller/releases/latest/download/VencordInstallerCli-Linux"

  sudo pacman -Sy --noconfirm discord 2>&1

  TMPFILE=$(mktemp)
  trap 'rm -f "$TMPFILE"' EXIT

  curl -sSLf "$INSTALLER_URL" -o "$TMPFILE"
  chmod +x "$TMPFILE"

  sudo "$TMPFILE" -repair
  setsid discord >/dev/null 2>&1 < /dev/null &
  disown
}
