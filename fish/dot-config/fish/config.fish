function __add_newline --on-event fish_prompt
    if set --query _add_newline_on_prompt
        echo
    else
        set --global _add_newline_on_prompt
    end
end

function __line_break --on-event fish_cancel
    tput ed
    for i in (fish_prompt)[1..-2]
        echo
    end
end

set fish_greeting

starship init fish | source
