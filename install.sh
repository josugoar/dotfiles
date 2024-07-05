#!/bin/sh

# code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf install code

# fd-find
sudo dnf install fd-find

# fish
sudo dnf install fish
chsh -s /usr/bin/fish

# gnome-themes-extra
sudo dnf install gnome-themes-extra

# fzf
git clone https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# lazygit
sudo dnf copr enable atim/lazygit -y
sudo dnf install lazygit

# nano
sudo dnf install nano

# neovim
sudo dnf install neovim

# nerd-fonts
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git ~/.nerd-fonts
~/.nerd-fonts/install.sh

# ripgrep
sudo dnf install ripgrep

# starship
curl -sS https://starship.rs/install.sh | sh

# stow
sudo dnf install stow
stow --dotfiles --target "$HOME" code dconf firefox fish gtk3 nano neovim starship
