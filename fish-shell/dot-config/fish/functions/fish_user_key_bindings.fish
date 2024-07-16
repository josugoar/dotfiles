function fish_user_key_bindings
    if contains insert (bind -L)
        if functions -q fzf_key_bindings
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
