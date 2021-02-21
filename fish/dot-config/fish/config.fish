function add_newline_on_cancel --on-event fish_cancel
    # ADD AS MANY NEW LINES AS NEEDED
    echo
    echo
end

function add_newline_on_prompt --on-event fish_prompt
    if set --query ADD_NEWLINE
        echo
    else
        set --global ADD_NEWLINE
    end
end

set fish_greeting

starship init fish | source
