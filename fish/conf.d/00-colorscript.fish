if status is-interactive
    if type -q pokemon-colorscripts
        pokemon-colorscripts --no-title -s -r | fastfetch -c $HOME/.config/fastfetch/config-pokemon.jsonc --logo-type file-raw --logo-height 10 --logo-width 5 --logo -
    else if type -q fastfetch
        fastfetch -c $HOME/.config/fastfetch/config-compact.jsonc
    end
end
