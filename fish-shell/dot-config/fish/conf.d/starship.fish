if not status is-interactive
    return
end

starship init fish | source

function add_newline --on-event fish_prompt
    if test "$NEWLINE" = "1"
        printf \n
    end
    set -g NEWLINE 1
end

function starship_transient_prompt_func
    if commandline --is-valid && test -n (commandline --current-buffer | string trim -l | string collect)
        starship module character    
    end
end

function reset-transient --on-event fish_cancel --on-event fish_prompt
    set -g TRANSIENT 0
end

function transient_execute
    if commandline --paging-mode
        set -g TRANSIENT 0
        commandline -f accept-autosuggestion
        return
    end
    if commandline --is-valid || test -z (commandline --current-buffer | string trim -l | string collect)
        set -g TRANSIENT 1
        commandline -f repaint
    else
        set -g TRANSIENT 0
    end
    commandline -f execute
end

enable_transience
