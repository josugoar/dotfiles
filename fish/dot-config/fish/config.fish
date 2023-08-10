function __add_newline --on-event fish_prompt
    function __add_newline --on-event fish_prompt
        echo
    end
end

set -g fish_greeting

starship init fish | source
