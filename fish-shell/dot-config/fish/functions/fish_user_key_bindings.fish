function fish_user_key_bindings
    if test (fish_vercmp $version 3.7.0) -ne 1
        bind \cc 'commandline -r ""'
        if contains $fish_key_bindings fish_vi_key_bindings fish_hybrid_key_bindings
            bind \cc '
                commandline -r ""
                set fish_bind_mode insert
                commandline -f repaint-mode
            '
        end
    end
end
