#!/bin/sh

## gnome-themes-extra
sudo dnf --quiet --assumeyes install gnome-themes-extra

# fish-shell
sudo dnf --quiet --assumeyes install fish
chsh --shell /usr/bin/fish

## fzf
sudo dnf --quiet --assumeyes install fzf

## zoxide
sudo dnf --quiet --assumeyes install zoxide

# neovim
sudo dnf --quiet --assumeyes install neovim

## fd
sudo dnf --quiet --assumeyes install fd-find

## lazygit
sudo dnf --quiet --assumeyes copr enable atim/lazygit
sudo dnf --quiet --assumeyes install lazygit

## nerd-fonts
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git ~/.nerd-fonts
~/.nerd-fonts/install.sh NerdFontsSymbolsOnly

## ripgrep
sudo dnf --quiet --assumeyes install ripgrep

# starship
curl --show-error --silent https://starship.rs/install.sh | sudo sh -s -- --yes

# vscode
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf --assumeyes install code

# fira-code-fonts
# gnome-shell-extension-launch-new-instance

# curl https://github.com/Leleat/Tiling-Assistant/releases/latest/download/tiling-assistant@leleat-on-github.shell-extension.zip | unzip -d ~/.local/share/gnome-shell/extensions/tiling-assistant@leleat-on-github

# stow
sudo dnf --quiet --assumeyes install stow
stow --dotfiles --target "$HOME" dconf firefox fish-shell gtk nano neovim starship twp ublock vscode
