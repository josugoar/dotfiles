#!/bin/sh

set -e

dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
dnf update @core
dnf swap ffmpeg-free ffmpeg --allowerasing
dnf update @multimedia --setopt="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin

# dconf
echo service-db:keyfile/user >>/etc/dconf/profile/user

# fd
dnf install fd-find

# fish-shell
dnf install fish
chsh --shell /usr/bin/fish

# flathub
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# fzf
dnf install fzf

# gnome-themes-extra
dnf install gnome-themes-extra

# lazygit
dnf copr enable atim/lazygit
dnf install lazygit

# neovim
dnf install neovim

# nerd-fonts
curl --location https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraCode.zip | unzip -d ~/.local/share/fonts/FiraCode

# power-profile-switcher
curl https://extensions.gnome.org/extension-data/power-profile-switchereliapasquali.github.io.v19.shell-extension.zip | unzip -d ~/.local/share/gnome-shell/extensions/power-profile-switcher@eliapasquali.github.io

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
