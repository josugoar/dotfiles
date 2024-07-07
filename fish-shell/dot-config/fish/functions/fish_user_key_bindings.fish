function fish_user_key_bindings
  fish_default_key_bindings --mode insert
  fish_vi_key_bindings --no-erase

  bind --mode insert jj "if commandline --paging-mode; commandline --function cancel; else; set fish_bind_mode default; commandline --function backward-char repaint; end

  fzf --fish | source
end
