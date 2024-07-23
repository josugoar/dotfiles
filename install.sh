#!/bin/sh

set -e

# fd
dnf install fd-find

# fish-shell
dnf install fish
chsh --shell /usr/bin/fish

# fzf
dnf install fzf

# gnome-fuzzy-app-search
curl https://extensions.gnome.org/extension-data/gnome-fuzzy-app-searchgnome-shell-extensions.Czarlie.gitlab.com.v24.shell-extension.zip | unzip -d ~/.local/share/gnome-shell/extensions/gnome-fuzzy-app-search@gnome-shell-extensions.Czarlie.gitlab.com

# gnome-shell-extensions
dnf install gnome-shell-extension-launch-new-instance

# gnome-themes-extra
dnf install gnome-themes-extra

# fira-code
dnf install fira-code-fonts

# lazygit
dnf copr enable atim/lazygit
dnf install lazygit

# neovim
dnf install neovim

# nerd-fonts
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git ~/.nerd-fonts
~/.nerd-fonts/install.sh FiraCodeNerdFont NerdFontsSymbolsOnly

# ripgrep
dnf install ripgrep

# starship
curl https://starship.rs/install.sh | sh

# tiling-assistant
curl https://extensions.gnome.org/extension-data/tiling-assistantleleat-on-github.v47.shell-extension.zip | unzip -d ~/.local/share/gnome-shell/extensions/tiling-assistant@leleat-on-github

# vscode
rpm --import https://packages.microsoft.com/keys/microsoft.asc
sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf install code

# zoxide
dnf install zoxide

# stow
sudo dnf install stow
stow --dotfiles --target "$HOME" darkreader dconf firefox fish-shell fontconfig git gtk nano neovim sidebery starship twp ublock vscode
