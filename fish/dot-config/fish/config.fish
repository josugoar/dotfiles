function add_newline --on-event fish_prompt
    if set --query ADD_NEWLINE
        echo
    else
        set --global ADD_NEWLINE
    end
end

function __fish_cancel_commandline
    # Close the pager if it's open (#4298)
    commandline -f cancel

    set -l cmd (commandline)
    if test -n "$cmd"
        commandline -C 1000000
        if set -q fish_color_cancel
            echo -s (set_color $fish_color_cancel) "^C" (set_color normal)
        else
            echo -s "^C"
        end
        if command -sq tput
            # Clear to EOL (to erase any autosuggestion).
            echo (tput el; or tput ce)
        end
        for i in (seq (commandline -L))
            echo ""
        end
        commandline ""
        emit fish_cancel
    end
    # Repaint even if we haven't cancelled anything,
    # so the prompt refreshes and the terminal scrolls to it.
    commandline -f repaint
end

set fish_greeting

starship init fish | source
