if not status is-interactive
    return
end

fzf --fish | FZF_ALT_C_COMMAND= source
bind -e ctrl-r
bind -e -M insert ctrl-r
