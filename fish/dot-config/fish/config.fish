function add_newline_on_cancel --on-event fish_cancel
    echo
    if command --quiet tput
        tput ed
        for i in (seq (math (count (fish_prompt)) - 1))
            echo
        end
    end
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
