#!/bin/sh

# bat
sudo dnf --assumeyes install bat

# eza
sudo dnf --assumeyes install eza

# fd
sudo dnf --assumeyes install fd-find

# fish-shell
sudo dnf --assumeyes install fish
chsh --shell /usr/bin/fish

# gnome-themes-extra
sudo dnf --assumeyes install gnome-themes-extra

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --bin

# kitty
sudo dnf --assumeyes install kitty

# lazygit
sudo dnf --assumeyes copr enable atim/lazygit
sudo dnf --assumeyes install lazygit

# nano
sudo dnf --assumeyes install nano

# neovim
sudo dnf --assumeyes install neovim

# nerd-fonts
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git ~/.nerd-fonts
~/.nerd-fonts/install.sh FiraCode

# ripgrep
sudo dnf --assumeyes install ripgrep

# starship
curl --show-error --silent https://starship.rs/install.sh | sudo sh -s -- --yes

# vscode
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf --assumeyes install code

# zoxide
sudo dnf --assumeyes install zoxide

# stow
sudo dnf --assumeyes install stow
stow --dotfiles --target "$HOME" dconf firefox fish-shell gtk nano neovim starship vscode
