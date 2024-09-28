#!/bin/sh

# adw-gtk3
dnf install adw-gtk3-theme

# dash-to-dock
curl https://extensions.gnome.org/extension-data/dash-to-dockmicxgx.gmail.com.v96.shell-extension.zip | unzip -d ~/.local/share/gnome-shell/extensions/dash-to-dock@micxgx.gmail.com

# dconf
echo service-db:keyfile/user >>/etc/dconf/profile/user

# fd
dnf install fd-find

# fish-shell
dnf install fish

# fzf
dnf install fzf

# gnome-shell-extension-appindicator
curl https://extensions.gnome.org/extension-data/appindicatorsupportrgcjonas.gmail.com.v59.shell-extension.zip | unzip -d ~/.local/share/gnome-shell/extensions/appindicatorsupport@rgcjonas.gmail.com

# lazygit
dnf copr enable atim/lazygit
dnf install lazygit

# legacy-theme-auto-switcher-gnome-extension
curl https://extensions.gnome.org/extension-data/legacyschemeautoswitcherjoshimukul29.gmail.com.v9.shell-extension.zip | unzip -d ~/.local/share/gnome-shell/extensions/legacyschemeautoswitcher@joshimukul29.gmail.com

# neovim
dnf install neovim

# nerd-fonts
curl --location https://github.com/ryanoasis/nerd-fonts/releases/latest/download/NerdFontsSymbolsOnly.zip | unzip -d ~/.local/share/fonts/NerdFontsSymbolsOnly

# ripgrep
dnf install ripgrep

# starship
curl https://starship.rs/install.sh | sh

# stow
dnf install stow

# tiling-assistant
curl https://extensions.gnome.org/extension-data/tiling-assistantleleat-on-github.v47.shell-extension.zip | unzip -d ~/.local/share/gnome-shell/extensions/tiling-assistant@leleat-on-github

# vscode
dnf config-manager addrepo --from-repofile=https://packages.microsoft.com/yumrepos/vscode/config.repo
dnf install code

# zoxide
dnf install zoxide

stow --dotfiles --target="$HOME" bash darkreader dconf firefox fish-shell git gtk nano neovim sidebery starship twp ublock vscode
