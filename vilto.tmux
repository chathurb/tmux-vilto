#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# use inner table 
tmux bind-key -T copy-mode-vi i switch-client -T vilto-i

# select inner word
tmux bind-key -T vilto-i w "send-keys -X cursor-right; send-keys -X previous-word; send-keys -X other-end; send-keys -X cursor-left; send-keys -X next-word-end"

# select inner Word
tmux bind-key -T vilto-i W "send-keys -X cursor-right; send-keys -X previous-space; send-keys -X other-end; send-keys -X cursor-left; send-keys -X next-space-end"
