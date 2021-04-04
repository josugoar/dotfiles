function __add_newline --on-event fish_prompt
    function __add_newline --on-event fish_prompt
        echo
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
