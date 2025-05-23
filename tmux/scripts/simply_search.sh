#!/bin/bash

# local found
# found=$(rg . --line-number --hidden --glob '!.git/*' |

# --preview 'echo {} | cut -d: -f1 | xargs bat --style=numbers --color=always' \
# --preview-window right:60% \
# --border bold \
# --border-label 'Simply Search' \
# --scrollbar '▌▐' \
# --exact -0 -1 \
# --color 16 \
# --ansi
#
found=$(
  grep -rn "" . |
    fzf-tmux -p 90%,90% \
      --delimiter ':' \
      --with-nth=1,2,3 \
      --preview "bat --color=always --theme=ansi --highlight-line {2} {1} --style=numbers,changes,header,grid" \
      --preview-window 'right:60%,+{2}-/2' \
      --border bold \
      --border-label 'Simply Search' \
      --scrollbar '▌▐' \
      --exact -0 -1
)

file=$(echo "$found" | awk -F: '{print $1}')
line=$(echo "$found" | awk -F: '{print $2}')

# tmux send-keys "nvim +$line '$file'" C-m
session_name="$(basename "$PWD")"
nvim --server "/tmp/nvim-$session_name.pipe" --remote-send ":edit +$line $file<CR>"
tmux select-window -t :1
