function add_newline --on-event fish_preexec
    echo
end

set fish_greeting

starship init fish | source
