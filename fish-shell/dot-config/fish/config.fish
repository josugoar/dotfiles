set --global fish_greeting

function __add_newline --on-event fish_cancel --on-event fish_prompt
  function __add_newline --on-event fish_cancel --on-event fish_prompt
    echo
  end
end
starship init fish | source

set --global fish_cursor_default block
set --global fish_cursor_insert line
set --global fish_cursor_replace_one underscore
set --global fish_cursor_replace underscore
set --global fish_cursor_external line
set --global fish_cursor_visual block
set --global fish_key_bindings fish_vi_key_bindings

zoxide init --cmd cd fish | source

function __last_history_item
  echo $history[1]
end
abbr --add !! --position anywhere --function __last_history_item
