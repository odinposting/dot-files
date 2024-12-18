#!/usr/bin/env zsh

REQUIRED_DIRS=(
  "${XDG_DATA_HOME:-$HOME/.local/share}/beets"
  "${XDG_STATE_HOME:-$HOME/.local/state}/beets"
  "${XDG_STATE_HOME:-$HOME/.local/state}/1password"
)

for DIR in "${REQUIRED_DIRS[@]}"; do
  if [ ! -d "${DIR}" ]; then
    mkdir -p "${DIR}"
  fi
done
