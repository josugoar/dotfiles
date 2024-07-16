function fish_user_key_bindings
    set -l modes (bind -L)

    for mode in $modes
        bind -M $mode \e\[A up-or-prefix-search
        bind -M $mode \e\[B down-or-prefix-search
    end

    if contains insert $modes
        if functions --query fzf_key_bindings
            bind -e \cr
        end

        set -l on_escape '
            if commandline -P
                commandline -f cancel
            else
                set fish_bind_mode default
                if test (count (commandline --cut-at-cursor | tail -c2)) != 2
                    commandline -f backward-char
                end
                commandline -f repaint-mode
            end
        '
        bind -M insert jj $on_escape
    end
end
