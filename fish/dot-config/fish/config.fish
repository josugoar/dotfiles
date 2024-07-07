function __add_newline --on-event fish_cancel --on-event fish_prompt
    function __add_newline --on-event fish_cancel --on-event fish_prompt
        echo
    end
end

set -g fish_greeting
set -g fish_key_bindings fish_vi_key_bindings

starship init fish | source
