# dotfiles

> Personal dotfiles for use with Fedora Workstation 40

> [!CAUTION]
> Be careful when running any unaudited scripts. These are my personal dotfiles and there might be some configurations which you may not need or like. I suggest to pick and choose only the packages you would want to install.

## Installation

Clone the repository and run the installation script.

```sh
git clone https://github.com/josugoar/dotfiles.git
cd dotfiles
sudo ./install.sh
```

> [!WARNING]
> THIS ASSUMES FEDORA AS THE OPERATING SYSTEM, INSTALL PROGRAMS MANUALLY OTHERWISE.
>
> REMEBER, THE INSTALLATION SCRIPT INSTALLS ALL PACKAGES, WHICH MIGHT NOT BE THE DESIRED BEHAVIOUR IN YOUR CASE.

The dotfiles will be symlinked to their appropiate locations using **GNU Stow**. There is an effort to respect modern desktop Linux standards aiming to use the **XDG Base Directory Specification** and the default `XDG_CONFIG_HOME`.

## Overview

### Desktop environment

**GNOME** is the desktop environment of choice. The default workspace based workflow is extended to avoid the difficulties of switching to non adjacent workspaces and the unfortunate manual window tiling restrictions. Some quality of life options are modified, such as those related to inconsistent localization, font configuration and input device problems.

Anyway, exploring tiling window managers could be interesting, like **Hyprland** or **Forge** (for GNOME). For now, fancy-zone like tiling is used thanks to **tiling-assistant**.

### Browser

**Firefox** might be my most used program. Basic privacy settings are configured and necessary options for my workflow of choice are enabled, such as <kbd>Control</kbd> + <kbd>Tab</kbd> switching.

Most importantly, one of the single most impactful aspects of my day to day browsing is configured, **UBlock Origin** (it's usage is literally transformative). There is also **TWP** to translate websites, mostly because the translation engine integrated with the browser doesn't have good support, if at all, for Chinese, Japanese and Bengalese.

> [!NOTE]  
> When installing the dotfiles, Firefox user configuration must be moved to the appropiate profile directory. This is because each profile has a unique identification which is part of the directory name, so manual intervention is required.
>
> **Bitwarden**, **Dark Reader**, **TWP** and **uBlock Origin** must be installed separately.

### Terminal emulator

While having tried multiple terminal emulators in the form of **kitty**, **wezterm**, **alacritty** and **foot**, I feel like the default terminal emulator that comes with the distribution, be it **console (kgx)** or **gnome-terminal** are enough for my needs. Except for the added padding, obviously.

### Shell

The selected shell is none other than the friendly interactive shell **fish**. While not *fully* aligning with their "no configuration" ideals, it can't be denied that the sane defaults may objectively give the best shell user experience out of the box and, while there is enjoyment to be had configuring **zsh**, one cannot be bothered (we don't talk about **bash**, altough there are some [cool efforts](https://github.com/akinomyoga/ble.sh) in that camp). There are also some other alternative shells like [xonsh](https://github.com/xonsh/xonsh) to consider.

The dotfiles only directly configure the programs that have direct shell integration and modify the user's workflow, like **fzf** and **zoxide**. The prompt is **starship** but it is heavily modified to fix all the transient prompt problems (like not enabling transience when accepting an empty command line) and decluttering the output when not running a command.

> [!NOTE]  
> The <kbd>Control</kbd> + <kbd>C</kbd> keybinding requires **fish-shell >= 3.8.0** (not yet released as of writing) to work as intended. Without it, the transient prompt cancelation will show the **\cC** escape indicator and the prompt will **not** be overridden.

### Text editor(s)

My original **nano** configuration is included, which I used to quickly edit system files during my time on **Arch Linux** btw. It defines sane visual and editing defaults that make the editor a more pleasant experience to use.

The repository also contains all the **VSCode** extensions and configuration options that I use. All and all, I use *very few* extension as a base and the settings are mostly convenience, such as automatic formatting, saving or "more" appropiate git defaults.

Finally, **NeoVim** has made me ditch every other terminal based text editor (shocker) and now I kind of wish every program had at least vim key binding integration to some extent. I am very grateful mainly for the efforts of people like [folke](https://github.com/folke) and the like.
