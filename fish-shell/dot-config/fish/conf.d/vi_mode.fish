if not status is-interactive
    return
end

set --global fish_key_bindings fish_vi_key_bindings

set --global fish_cursor_default block
set --global fish_cursor_insert line
set --global fish_cursor_replace_one underscore
set --global fish_cursor_replace underscore
set --global fish_cursor_external line
set --global fish_cursor_visual block
