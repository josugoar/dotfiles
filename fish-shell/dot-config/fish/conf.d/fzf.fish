if not status is-interactive
    return
end

fzf --fish | FZF_ALT_C_COMMAND= source

bind -e \cr
bind -e -M insert \cr
