edit:completion:arg-completer[starship] = [@words]{
    fn spaces [n]{
        repeat $n ' ' | joins ''
    }
    fn cand [text desc]{
        edit:complex-candidate $text &display-suffix=' '(spaces (- 14 (wcswidth $text)))$desc
    }
    command = 'starship'
    for word $words[1:-1] {
        if (has-prefix $word '-') {
            break
        }
        command = $command';'$word
    }
    completions = [
        &'starship'= {
            cand -h 'Prints help information'
            cand --help 'Prints help information'
            cand -V 'Prints version information'
            cand --version 'Prints version information'
            cand init 'Prints the shell function used to execute starship'
            cand prompt 'Prints the full starship prompt'
            cand module 'Prints a specific prompt module'
            cand config 'Edit the starship configuration'
            cand toggle 'Toggle a given starship module'
            cand bug-report 'Create a pre-populated GitHub issue with information about your configuration'
            cand time 'Prints time in milliseconds'
            cand explain 'Explains the currently showing modules'
            cand timings 'Prints timings of all active modules'
            cand completions 'Generate starship shell completions for your shell to stdout'
            cand session 'Generate random session key'
            cand help 'Prints this message or the help of the given subcommand(s)'
        }
        &'starship;init'= {
            cand --print-full-init 'Print the main initialization script (as opposed to the init stub)'
            cand -h 'Prints help information'
            cand --help 'Prints help information'
            cand -V 'Prints version information'
            cand --version 'Prints version information'
        }
        &'starship;prompt'= {
            cand -s 'The status code of the previously run command'
            cand --status 'The status code of the previously run command'
            cand -p 'The path that the prompt should render for'
            cand --path 'The path that the prompt should render for'
            cand -d 'The execution duration of the last command, in milliseconds'
            cand --cmd-duration 'The execution duration of the last command, in milliseconds'
            cand -k 'The keymap of fish/zsh'
            cand --keymap 'The keymap of fish/zsh'
            cand -j 'The number of currently running jobs'
            cand --jobs 'The number of currently running jobs'
            cand -h 'Prints help information'
            cand --help 'Prints help information'
            cand -V 'Prints version information'
            cand --version 'Prints version information'
        }
        &'starship;module'= {
            cand -s 'The status code of the previously run command'
            cand --status 'The status code of the previously run command'
            cand -p 'The path that the prompt should render for'
            cand --path 'The path that the prompt should render for'
            cand -d 'The execution duration of the last command, in milliseconds'
            cand --cmd-duration 'The execution duration of the last command, in milliseconds'
            cand -k 'The keymap of fish/zsh'
            cand --keymap 'The keymap of fish/zsh'
            cand -j 'The number of currently running jobs'
            cand --jobs 'The number of currently running jobs'
            cand -l 'List out all supported modules'
            cand --list 'List out all supported modules'
            cand -h 'Prints help information'
            cand --help 'Prints help information'
            cand -V 'Prints version information'
            cand --version 'Prints version information'
        }
        &'starship;config'= {
            cand -h 'Prints help information'
            cand --help 'Prints help information'
            cand -V 'Prints version information'
            cand --version 'Prints version information'
        }
        &'starship;toggle'= {
            cand -h 'Prints help information'
            cand --help 'Prints help information'
            cand -V 'Prints version information'
            cand --version 'Prints version information'
        }
        &'starship;bug-report'= {
            cand -h 'Prints help information'
            cand --help 'Prints help information'
            cand -V 'Prints version information'
            cand --version 'Prints version information'
        }
        &'starship;time'= {
            cand -h 'Prints help information'
            cand --help 'Prints help information'
            cand -V 'Prints version information'
            cand --version 'Prints version information'
        }
        &'starship;explain'= {
            cand -h 'Prints help information'
            cand --help 'Prints help information'
            cand -V 'Prints version information'
            cand --version 'Prints version information'
        }
        &'starship;timings'= {
            cand -h 'Prints help information'
            cand --help 'Prints help information'
            cand -V 'Prints version information'
            cand --version 'Prints version information'
        }
        &'starship;completions'= {
            cand -h 'Prints help information'
            cand --help 'Prints help information'
            cand -V 'Prints version information'
            cand --version 'Prints version information'
        }
        &'starship;session'= {
            cand -h 'Prints help information'
            cand --help 'Prints help information'
            cand -V 'Prints version information'
            cand --version 'Prints version information'
        }
        &'starship;help'= {
            cand -h 'Prints help information'
            cand --help 'Prints help information'
            cand -V 'Prints version information'
            cand --version 'Prints version information'
        }
    ]
    $completions[$command]
}
