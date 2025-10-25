# Fish Shell Setup

Opinionated Fish configuration with aliases, Bun/NVM paths, and Starship prompt integration. This directory mirrors `~/.config/fish` and is symlinked via `../configure.sh`.

## Components
- `config.fish` – cleans greeting, loads `$HOME/.local/bin/env(.fish)`, exports Bun paths, sets `nvm` default (`v22.21.0`), and initializes Starship when available.
- `fish_plugins` – Fisher plugin manifest (currently `jorgebucaran/fisher`, `jorgebucaran/nvm.fish`).
- `conf.d/`, `completions/`, `functions/`, `themes/` – place additional Fish scripts, autoloaded by Fish.

## Requirements
- Fish shell installed and set as login shell if desired.
- [Fisher](https://github.com/jorgebucaran/fisher) for plugin sync.
- Optional binaries used by config: `bun`, `fnm`/`nvm`, `starship`, `lsd`.

## Install
1. Use the root `configure.sh` to symlink:
   ```bash
   cd ~/dotfiles
   ./configure.sh fish
   ```
2. Start a new Fish session and install plugins:
   ```fish
   fisher update
   ```

## Notes
- Existing `~/.config/fish` is backed up automatically by `configure.sh` (`.bak.<timestamp>`).
- To add more plugins, edit `fish_plugins` and run `fisher update` again.
- Bun completions are not sourced by default; generate them with `bun completions --shell fish > ~/.config/fish/completions/bun.fish`.
