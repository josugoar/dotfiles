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

        bind -M insert jj "if commandline --paging-mode
                               commandline -f cancel
                           else
                               set fish_bind_mode default
                               commandline -f backward-char repaint
                           end"
    end
end
