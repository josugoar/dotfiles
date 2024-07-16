if not status is-interactive
    return
end

starship init fish | source

function __starship_add_newline --on-event fish_cancel --on-event fish_prompt
    function __starship_add_newline --on-event fish_cancel --on-event fish_prompt
        echo
    end
end

enable_transience

function reset-transient --on-event fish_prompt
    set --global TRANSIENT 0
end

function transient_execute
    set --global TRANSIENT 1
    commandline --function repaint execute
end
