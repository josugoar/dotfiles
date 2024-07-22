function fish_user_key_bindings
    set -l cancel_commandline '
        commandline --replace --current-buffer ""
        emit fish_cancel
    '
    bind \cc $cancel_commandline
    if contains $fish_key_bindings fish_vi_key_bindings fish_hybrid_key_bindings
        bind -M insert \cc $cancel_commandline
        bind -m insert \cc $cancel_commandline
    end
end
