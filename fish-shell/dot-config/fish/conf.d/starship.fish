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

function starship_transient_prompt_func
    if commandline --is-valid || test $status -eq 1 && test -n (commandline --current-buffer | string trim -l | string collect)
        starship module character    
    end
end

function starship_transient_prompt_func_options --on-event fish_prompt
    switch "$fish_key_bindings"
        case fish_hybrid_key_bindings fish_vi_key_bindings
            set -g STARSHIP_KEYMAP "$fish_bind_mode"
        case '*'
            set -g STARSHIP_KEYMAP insert
    end
    set -g STARSHIP_CMD_PIPESTATUS $pipestatus
    set -g STARSHIP_CMD_STATUS $status
    set -g STARSHIP_DURATION "$CMD_DURATION$cmd_duration"
    set -g STARSHIP_JOBS (count (jobs -p))
end

function reset-transient --on-event fish_posterror --on-event fish_prompt
    set -g TRANSIENT 0
end

function transient_execute
    if commandline --paging-mode
        set -g TRANSIENT 0
        commandline -f accept-autosuggestion
        return
    end
    if commandline --is-valid || test $status -eq 1 || test -z (commandline --current-buffer | string trim -l | string collect)
        set -g TRANSIENT 1
        commandline -f repaint
    else
        set -g TRANSIENT 0
    end
    commandline -f execute
end

enable_transience
