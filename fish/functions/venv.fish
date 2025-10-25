function venv --description "Activate a Python virtualenv (defaults to .venv)"
    set target $argv[1]
    if test -z "$target"
        set target .venv
    end

    if test ! -d "$target"
        printf "venv: directory '%s' not found in %s\n" "$target" (pwd) >&2
        return 1
    end

    set activate_fish "$target/bin/activate.fish"
    set activate_sh "$target/bin/activate"

    if test -f $activate_fish
        source $activate_fish
    else if test -f $activate_sh
        source $activate_sh
    else
        printf "venv: no activate script inside '%s'\n" "$target" >&2
        return 1
    end
end
