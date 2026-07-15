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

# Update Discord
vencord() {
  sudo pacman -Sy --noconfirm discord 2>&1
  sh -c "$(curl -sS https://vencord.dev/install.sh)"
  pkill -9 Discord
  setsid discord >/dev/null 2>&1 < /dev/null &
  disown
}
