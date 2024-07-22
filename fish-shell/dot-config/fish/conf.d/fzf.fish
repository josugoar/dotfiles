if not status is-interactive
    return
end

fzf --fish | source

bind -e \cr
bind -e -M insert \cr
