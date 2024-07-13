if not status is-interactive
    return
end

starship init fish | source

function starship_add_newline --on-event fish_cancel --on-event fish_prompt
    function starship_add_newline --on-event fish_cancel --on-event fish_prompt
        echo
    end
end
