#!/bin/sh

# dconf
sudo dnf --assumeyes install dconf-editor

## gnome-themes-extra
sudo dnf --assumeyes install gnome-themes-extra

# fish-shell
sudo dnf --assumeyes install fish
chsh --shell /usr/bin/fish

## fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --bin

## zoxide
sudo dnf --assumeyes install zoxide

# neovim
sudo dnf --assumeyes install neovim

## fd
sudo dnf --assumeyes install fd-find

## lazygit
sudo dnf --assumeyes copr enable atim/lazygit
sudo dnf --assumeyes install lazygit

## nerd-fonts
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git ~/.nerd-fonts
~/.nerd-fonts/install.sh FiraCode

## ripgrep
sudo dnf --assumeyes install ripgrep

# starship
curl --show-error --silent https://starship.rs/install.sh | sudo sh -s -- --yes

# vscode
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf --assumeyes install code

# stow
sudo dnf --assumeyes install stow
stow --dotfiles --target "$HOME" dconf firefox fish-shell gtk nano neovim starship twp ublock vscode
