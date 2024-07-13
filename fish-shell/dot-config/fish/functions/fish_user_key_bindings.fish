function fish_user_key_bindings
    set --local modes (bind --list-modes)

    for mode in $modes
        bind --mode $mode \e\[A up-or-prefix-search
        bind --mode $mode \e\[B down-or-prefix-search
    end

    if contains insert $modes
        if functions --query fzf_key_bindings
            bind --erase \cr
        end

        bind --mode insert jj "if commandline --paging-mode
                                   commandline --function cancel
                               else
                                   set fish_bind_mode default
                                   commandline --function backward-char repaint
                               end"
    end
end
