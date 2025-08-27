function up-or-search -d "Search back or move cursor up 1 line"
    if commandline --search-mode
        commandline -f $search_mode
        return
    end

    if commandline --paging-mode
        commandline -f up-line
        return
    end

    set -l lineno (commandline -L)

    switch $lineno
        case 1
            if test -z (commandline --current-buffer | string collect)
                set -g search_mode history-search-backward
                commandline -f history-search-backward
            else
                set -g search_mode history-prefix-search-backward
                commandline -f history-prefix-search-backward
            end

        case '*'
            commandline -f up-line
    end
end
