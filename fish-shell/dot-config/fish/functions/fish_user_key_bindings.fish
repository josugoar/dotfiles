function fish_user_key_bindings
    if test (fish_vercmp $version 3.7.0) -ne 1
        bind \cc 'commandline -r ""'
        # TODO: vi binding (change to insert mode)
    end

    if contains $fish_key_bindings fish_vi_key_bindings fish_hybrid_key_bindings
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
