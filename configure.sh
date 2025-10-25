#!/bin/sh
set -eu

CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}"
DOTFILES_DIR=$(cd "$(dirname "$0")" && pwd)
COMPONENTS="fish nvim starship"

usage() {
  cat <<'USAGE'
Usage: ./configure.sh [all|COMPONENT...]

Without arguments, configures all components. Pass component names to target specific setups.

Options:
  all         Configure every available component
  fish        Symlink fish shell configuration
  nvim        Symlink Neovim configuration
  starship    Symlink starship prompt configuration
  --list      List available components
  --help      Show this help message
USAGE
}

list_components() {
  for c in $COMPONENTS; do
    echo "$c"
  done
}

component_source() {
  case "$1" in
    fish) echo "fish" ;;
    nvim) echo "nvim" ;;
    starship) echo "starship.toml" ;;
    *) return 1 ;;
  esac
}

component_target() {
  case "$1" in
    fish) echo "$CONFIG_DIR/fish" ;;
    nvim) echo "$CONFIG_DIR/nvim" ;;
    starship) echo "$CONFIG_DIR/starship.toml" ;;
    *) return 1 ;;
  esac
}

backup_existing() {
  target="$1"
  if [ -e "$target" ] || [ -L "$target" ]; then
    timestamp=$(date +%s)
    backup_path="${target}.bak.${timestamp}"
    echo "Backing up existing $target -> $backup_path"
    mv "$target" "$backup_path"
  fi
}

link_component() {
  component="$1"
  src_rel=$(component_source "$component")
  src="$DOTFILES_DIR/$src_rel"
  target=$(component_target "$component")

  if [ ! -e "$src" ]; then
    echo "Skipping $component: source $src missing" >&2
    return 1
  fi

  mkdir -p "$CONFIG_DIR"
  mkdir -p "$(dirname "$target")"

  if [ -L "$target" ]; then
    existing=$(readlink "$target")
    if [ "$existing" = "$src" ]; then
      echo "$component already linked"
      return 0
    fi
  fi

  if [ -e "$target" ] || [ -L "$target" ]; then
    backup_existing "$target"
  fi

  echo "Linking $component -> $target"
  ln -sfn "$src" "$target"
}

parse_components() {
  if [ "$#" -eq 0 ]; then
    echo "$COMPONENTS"
    return
  fi

  components=""
  for arg in "$@"; do
    case "$arg" in
      --help)
        usage
        exit 0
        ;;
      --list)
        list_components
        exit 0
        ;;
      all)
        echo "$COMPONENTS"
        return
        ;;
      fish|nvim|starship)
        if [ -z "$components" ]; then
          components="$arg"
        else
          components="$components $arg"
        fi
        ;;
      *)
        echo "Unknown component: $arg" >&2
        usage >&2
        exit 1
        ;;
    esac
  done

  echo "$components"
}

main() {
  components=$(parse_components "$@")

  if [ -z "$components" ]; then
    echo "No components specified" >&2
    exit 1
  fi

  for component in $components; do
    link_component "$component"
  done

  echo "Done."
}

main "$@"
