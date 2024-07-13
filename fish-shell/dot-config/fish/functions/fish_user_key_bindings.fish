function fish_user_key_bindings
    if contains insert (bind --list-modes)
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
