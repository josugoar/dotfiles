function up-or-prefix-search -d "Prefix search back or move cursor up 1 line"
    if commandline --search-mode
        commandline -f history-prefix-search-backward
        return
    end

    if commandline --paging-mode
        commandline -f up-line
        return
    end

    set -l lineno (commandline -L)

    switch $lineno
        case 1
            commandline -f history-prefix-search-backward

        case '*'
            commandline -f up-line
    end
end
