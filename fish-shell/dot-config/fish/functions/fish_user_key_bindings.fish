function fish_user_key_bindings
  bind --mode insert jj "if commandline --paging-mode; commandline --function cancel; else; set fish_bind_mode default; commandline --function backward-char repaint; end"
end
