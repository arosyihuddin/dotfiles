# ~/.config/fish/config.fish
set -gx fish_greeting '' # keep the prompt clean

# shared environment loader
if test -f $HOME/.local/bin/env.fish
    source $HOME/.local/bin/env.fish
else if test -f $HOME/.local/bin/env
    source $HOME/.local/bin/env
end

# bun
set -gx BUN_INSTALL $HOME/.bun
set -l bun_bin $BUN_INSTALL/bin
if test -d $bun_bin
    if functions -q fish_add_path
        fish_add_path $bun_bin
    end
    if not contains $bun_bin $PATH
        set -gx PATH $bun_bin $PATH
    end
end

# node version management (prefer nvm.fish or fnm)
set -gx nvm_default_version v22.21.0
if type -q fnm
    fnm env --use-on-cd | source
else if type -q nvm
    nvm use default >/dev/null 2>&1
end

if status is-interactive
    alias ls='lsd'
    alias l='ls -l'
    alias la='ls -a'
    alias lla='ls -la'
    alias lt='ls --tree'
    if command -sq starship
        starship init fish | source
    end
end

# bun ships zsh completions in ~/.bun/_bun; skip sourcing here to avoid syntax errors.
# Generate fish completions instead:
#   bun completions --shell fish > ~/.config/fish/completions/bun.fish

# prompt/theme handled via tide/starship/etc.
