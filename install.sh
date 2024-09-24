#!/bin/sh

set -e

# rpmfusion
dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# adw-gtk3
dnf install adw-gtk3-theme

# dconf
echo service-db:keyfile/user >>/etc/dconf/profile/user

# fd
dnf install fd-find

# ffmpeg
dnf update @core
dnf swap ffmpeg-free ffmpeg --allowerasing

# fish-shell
dnf install fish

# fzf
dnf install fzf

# gnome-shell-extension-appindicator
curl https://extensions.gnome.org/extension-data/appindicatorsupportrgcjonas.gmail.com.v59.shell-extension.zip | unzip -d ~/.local/share/gnome-shell/extensions/appindicatorsupport@rgcjonas.gmail.com

# gnome-shell-extension-caffeine
curl https://extensions.gnome.org/extension-data/caffeinepatapon.info.v55.shell-extension.zip | unzip -d ~/.local/share/gnome-shell/extensions/caffeine@patapon.info

# lazygit
dnf copr enable atim/lazygit
dnf install lazygit

# neovim
dnf install neovim

# nerd-fonts
curl --location https://github.com/ryanoasis/nerd-fonts/releases/latest/download/NerdFontsSymbolsOnly.zip | unzip -d ~/.local/share/fonts/NerdFontsSymbolsOnly

# power-profile-switcher
curl https://extensions.gnome.org/extension-data/power-profile-switchereliapasquali.github.io.v19.shell-extension.zip | unzip -d ~/.local/share/gnome-shell/extensions/power-profile-switcher@eliapasquali.github.io

# dash-to-dock
curl https://extensions.gnome.org/extension-data/dash-to-dockmicxgx.gmail.com.v96.shell-extension.zip | unzip -d ~/.local/share/gnome-shell/extensions/dash-to-dock@micxgx.gmail.com

# ripgrep
dnf install ripgrep

# starship
curl https://starship.rs/install.sh | sh

# tiling-assistant
curl https://extensions.gnome.org/extension-data/tiling-assistantleleat-on-github.v47.shell-extension.zip | unzip -d ~/.local/share/gnome-shell/extensions/tiling-assistant@leleat-on-github

# vscode
dnf config-manager addrepo --from-repofile=https://packages.microsoft.com/yumrepos/vscode/config.repo
dnf install code

# zoxide
dnf install zoxide

# stow
sudo dnf install stow
stow --dotfiles --target "$HOME" bash darkreader dconf firefox fish-shell git gtk nano neovim sidebery starship twp ublock vscode
