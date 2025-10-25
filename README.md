# Dotfiles Setup

Automate Fish shell, Neovim, and Starship prompt configuration across machines with `configure.sh`.

## Requirements
- POSIX-compatible shell (`/bin/sh`)
- Git (to clone this repo)
- Desired tools installed: Fish, Neovim, Starship

## Install
```bash
git clone <repo-url> ~/dotfiles
cd ~/dotfiles
./configure.sh            # link every component
```

## Selective Setup
Link only specific configs by passing component names:
```bash
./configure.sh nvim
./configure.sh fish starship
```
Available components are `fish`, `nvim`, `starship`; run `./configure.sh --list` to view them. Use `all` (default) to configure everything.

## How It Works
- Creates backups as `<target>.bak.<timestamp>` if a config already exists.
- Creates symlinks from this repo to `$XDG_CONFIG_HOME` (defaults to `~/.config`).
- Safe to re-run; existing matching symlinks are skipped.

Backup files let you restore previous settings manually if needed.
