function __add_newline \
        --on-event fish_cancel \
        --on-event fish_postexec
    echo
end

function __line_break --on-event fish_cancel
    if command --quiet tput
        tput ed
    end

    for i in (fish_prompt)[2..-1]
        echo
    end
end

set fish_greeting

starship init fish | source
