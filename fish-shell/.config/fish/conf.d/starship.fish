if not status is-interactive
    return
end

starship init fish | source

stty rows (math $LINES - (fish_prompt | count))

function line_break --on-signal WINCH
    if test "$LINE_BREAK" = 1
        stty rows (math $LINES - (fish_prompt | count))
    end
    set -g LINE_BREAK 1
end

function add_newline --on-event fish_posterror --on-event fish_prompt
    if test "$ADD_NEWLINE" = "1"
        printf \n
    end
    set -g ADD_NEWLINE 1
end

function starship_transient_prompt_func
    if test -n (commandline | string trim | string collect)
        starship module $argv character
    end
end

function transient_execute
    if commandline --is-valid || test "$status" = "1" -a (string sub -s -1 (commandline | string collect)) != "\\" && not commandline --paging-mode
        set -g TRANSIENT 1
        set -g RIGHT_TRANSIENT 1
        commandline -f repaint
    end
    commandline -f execute
end

enable_transience
