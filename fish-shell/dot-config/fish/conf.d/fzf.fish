if not status is-interactive
    return
end

fzf --fish | source
