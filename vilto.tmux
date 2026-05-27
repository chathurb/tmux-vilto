#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# use vilto-i table
tmux bind-key -T copy-mode-vi i switch-client -T vilto-i

# select word
tmux bind-key -T vilto-i w "send-keys -X cursor-right; send-keys -X previous-word; send-keys -X other-end; send-keys -X cursor-left; send-keys -X next-word-end"

# select Word
tmux bind-key -T vilto-i W "send-keys -X cursor-right; send-keys -X previous-space; send-keys -X other-end; send-keys -X cursor-left; send-keys -X next-space-end"

# select paragraph
tmux bind-key -T vilto-i p "send-keys -X previous-paragraph; send-keys -X other-end; send-keys -X next-paragraph"

inner_block_bind() {
	local selector=$1
	local left_bound=$2
	local right_bound=$3

	tmux bind-key -T vilto-i $selector "send-keys -X other-end; send-keys -X jump-to-backward $left_bound; send-keys -X other-end; send-keys -X jump-to-forward $right_bound"
}

# select inner " block
inner_block_bind '"' '\"' '\"'

# select inner ' block
inner_block_bind "'" "\'" "\'"

# select inner () block
inner_block_bind "(" "(" ")"
inner_block_bind ")" "(" ")"

# select inner {} block
inner_block_bind "{" "'{'" "'}'"
inner_block_bind "}" "'{'" "'}'"

# select inner [] block
inner_block_bind "[" "[" "]"
inner_block_bind "]" "[" "]"

# select inner <> block
inner_block_bind "<" "<" ">"
inner_block_bind ">" "<" ">"

# use vilto-a table
tmux bind-key -T copy-mode-vi a switch-client -T vilto-a

a_block_bind() {
	local selector=$1
	local left_bound=$2
	local right_bound=$3

	tmux bind-key -T vilto-a $selector "send-keys -X other-end; send-keys -X jump-backward $left_bound; send-keys -X other-end; send-keys -X jump-forward $right_bound"
}

# select a " block
a_block_bind '"' '\"' '\"'

# select a ' block
a_block_bind "'" "\'" "\'"

# select a () block
a_block_bind "(" "(" ")"
a_block_bind ")" "(" ")"

# select a {} block
a_block_bind "{" "'{'" "'}'"
a_block_bind "}" "'{'" "'}'"

# select a [] block
a_block_bind "[" "[" "]"
a_block_bind "]" "[" "]"

# select a <> block
a_block_bind "<" "<" ">"
a_block_bind ">" "<" ">"
