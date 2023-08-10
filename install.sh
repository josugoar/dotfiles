#!/bin/sh

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf check-update
sudo dnf install code

sudo dnf install fish
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish

sudo dnf install nano

git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git ~/nerd-fonts
~/nerd-fonts/install.sh
curl -sS https://starship.rs/install.sh | sh

sudo dnf install stow
stow --target ~ --dotfiles code fish gtk3 nano starship
