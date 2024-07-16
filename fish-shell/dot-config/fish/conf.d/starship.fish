if not status is-interactive
    return
end

starship init fish | source

function __starship_add_newline --on-event fish_cancel --on-event fish_prompt
    function __starship_add_newline --on-event fish_cancel --on-event fish_prompt
        echo
    end
end
