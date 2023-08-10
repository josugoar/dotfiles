#!/bin/sh

sudo dnf install fish
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish

git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git ~/nerd-fonts
~/nerd-fonts/install.sh

curl -sS https://starship.rs/install.sh | sh

sudo dnf install stow
stow --target ~ --dotfiles fish starship
