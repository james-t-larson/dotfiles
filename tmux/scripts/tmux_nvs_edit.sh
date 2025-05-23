# #!/bin/bash

session_name="$(basename "$PWD")"
tmux_nvs_edit() {
  nvim --server "$HOME/.cache/nvim/${session_name}.pipe" --remote-send ":edit $1<CR>"
}

tmux_nvs_edit
