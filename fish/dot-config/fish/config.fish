function __line_break --on-event fish_cancel
    if commandline --quiet tput
        tput ed
    end

    for i in (seq 2 (count (fish_prompt)))
        echo
    end

    emit fish_prompt
end

function __add_newline --on-event fish_prompt
    if set --query _add_newline_on_prompt
        echo
    else
        set --global _add_newline_on_prompt
    end
end


set fish_greeting

starship init fish | source
