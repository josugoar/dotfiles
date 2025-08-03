if not status is-interactive
    return
end

zoxide init --cmd cd fish | source
