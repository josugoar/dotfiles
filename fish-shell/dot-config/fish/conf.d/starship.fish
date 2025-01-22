if not status is-interactive
    return
end

starship init fish | source

function add_newline --on-event fish_posterror --on-event fish_prompt
    if test "$NEWLINE" = "1"
        printf \n
    end
    set -g NEWLINE 1
end

function line_break --on-signal SIGWINCH
    stty rows (math $LINES - (fish_prompt | count))
end

line_break

function starship_transient_prompt_func
    if test -n (commandline | string trim -l | string collect)
        starship module $argv character
    end
end

function transient_execute
    if commandline --paging-mode
        set cursor (commandline --cursor)
        commandline -f end-of-buffer
        commandline --cursor $cursor
    end
    commandline --is-valid
    if test $status != 2
        set -g TRANSIENT 1
        set -g RIGHT_TRANSIENT 1
        commandline -f repaint
    end
    commandline -f execute
end

enable_transience
