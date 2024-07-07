set -g fish_greeting

function __add_newline --on-event fish_cancel --on-event fish_prompt
  function __add_newline --on-event fish_cancel --on-event fish_prompt
    echo
  end
end

starship init fish | source

set -g fish_cursor_default block
set -g fish_cursor_insert line
set -g fish_cursor_replace_one underscore
set -g fish_cursor_replace underscore
set -g fish_cursor_external line

set -g fish_key_bindings fish_vi_key_bindings

function __last_history_item
  echo $history[1]
end

abbr --add !! --position anywhere --function __last_history_item
