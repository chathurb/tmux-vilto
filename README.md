# Tmux Vim Like Text Objects

This plugin adds a set of keybinds in tmux copy mode for selecting the following "Vim like" text objects.

- word
- Word
- paragraph
- inner and a "" block
- inner and a '' block
- inner and a () block
- inner and a {} block
- inner and a [] block
- inner and a <> block

### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)

Add plugin to the list of TPM plugins in `.tmux.conf`:

```tmux
set -g @plugin 'chathurb/tmux-vilto'
```

Update your plugins and source the config.
