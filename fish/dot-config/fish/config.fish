function __add_newline --on-event fish_cancel --on-event fish_prompt
    echo
end

set -g fish_greeting

starship init fish | source
