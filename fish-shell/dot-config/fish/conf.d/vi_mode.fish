if not status is-interactive
    return
end

set -g fish_key_bindings fish_vi_key_bindings

set -g fish_cursor_default block
set -g fish_cursor_insert line
set -g fish_cursor_replace_one underscore
set -g fish_cursor_replace underscore
set -g fish_cursor_external line
set -g fish_cursor_visual block
