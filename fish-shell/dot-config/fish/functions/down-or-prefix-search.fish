function down-or-prefix-search -d "Prefix search forward or move down 1 line"
    if commandline --search-mode
        commandline -f history-prefix-search-forward
        return
    end

    if commandline --paging-mode
        commandline -f down-line
        return
    end

    set -l lineno (commandline -L)
    set -l line_count (count (commandline))

    switch $lineno
        case $line_count
            commandline -f history-prefix-search-forward

        case '*'
            commandline -f down-line
    end
end
