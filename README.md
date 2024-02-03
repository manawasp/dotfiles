# Manawasp's Dotfiles

## Overview

### System

- [debian](https://www.debian.org/devel/debian-installer/): linux distribution composed of free and open-source software
- [i3](https://i3wm.org/): dynamic tiling window manager
- [LightDM](https://wiki.archlinux.org/title/LightDM): cross-desktop display manager
- [py3status](https://py3status.readthedocs.io/en/latest/): extensible i3status wrapper written in Python

### User

- [alacritty](https://alacritty.org/): modern terminal emulator that comes with sensible defaults, but allows for extensive configuration.
- [zsh](https://www.zsh.org/): shell designed for interactive use, although it is also a powerful scripting language
- [nvim](https://neovim.io/): hyperextensible Vim-based text editor
- [vscode](https://code.visualstudio.com/insiders/): code editor redefined and optimized for building and debugging modern web and cloud applications
- [azuredatastudio](https://docs.microsoft.com/en-us/sql/azure-data-studio/download-azure-data-studio): light-weight tool for managing SQL Server, Azure SQL Database, PostgreSQL
- [spotify](https://www.spotify.com/fr/download/linux/): audio streaming and media services provider
- [pexels.com](https://www.pexels.com/): free stock photos, royalty free images & videos

### Programming

- [docker](https://docs.docker.com/engine/install/debian/): OS-level virtualization to deliver software in packages called containers
- [go](https://go.dev/doc/install): statically typed, compiled programming language
- [nvm](https://github.com/nvm-sh/nvm): version manager for node.js, designed to be installed per-user, and invoked per-shell
- [python](https://www.python.org/downloads/): high-level, interpreted, general-purpose programming language
- [rust](https://www.rust-lang.org/tools/install): multi-paradigm, general-purpose programming language that emphasizes performance, type safety, and concurrency.

## Install

```sh
$ sudo apt update && sudo apt upgrade
$ sudo apt install \
    gcc curl tree cloc xclip git ssh \
    i3 py3status feh lightdm \
    zsh fonts-noto \
    pavucontrol imagemagick vlc qiv arandr
```

Follow official website to setup:
- [`oh-my-zsh`via curl](https://ohmyz.sh/#install)
- [`vscode`via dpkg](https://code.visualstudio.com/download)
- [`azuredatastudio` via dpkg](https://learn.microsoft.com/en-us/sql/azure-data-studio/download-azure-data-studio?view=sql-server-ver16)
- [`spotify` via apt](https://www.spotify.com/us/download/linux/)
- [`docker` via apt](https://docs.docker.com/engine/install/debian/)
- [`docker compose` via apt](https://docs.docker.com/compose/install/linux/#install-using-the-repository)
- [`go` via tarball](https://go.dev/doc/install)
- [`rust` (& `cargo`) via curl](https://www.rust-lang.org/tools/install)
- [`nvm` via curl](https://github.com/nvm-sh/nvm#installing-and-updating)
- [`alacritty` via cargo](https://github.com/alacritty/alacritty/blob/master/INSTALL.md)
- [`neovim`](https://github.com/neovim/neovim/blob/master/INSTALL.md) prefer nighty and install it in `~/.local/bin/`

Additional install:
- [diff so fancy](https://github.com/so-fancy/diff-so-fancy): strives to make your diffs human readable instead of machine readable (prefer install in `~/.local/bin`) 
- [Powerline fonts](https://github.com/powerline/fonts): pre-patched and adjusted fonts for usage with the Powerline statusline plugin (prefer manual install)

## Configure

### Global

```sh
# Go to HOME dir to execute all command
$ cd $HOME

# Clean & prepare directory
$ rm -rf .alacritty.toml .spaceshiprc.zsh .zshrc .config/i3 .config/i3status

# Inject all symbolic link
$ ln -s .dotfiles/alacritty.toml .alacritty.toml && \
    ln -s .dotfiles/spaceshiprc.zsh .spaceshiprc.zsh && \
    ln -s .dotfiles/.zshrc .zshrc && \
    ln -s .dotfiles/.gitconfig .gitconfig && \
    ln -s .dotfiles/i3config .config/i3/config && \
    ln -s .dotfiles/i3status .config/i3status && \
    ln -s .dotfiles/images/background.jpg .config/i3/background.jpg && \
    ln -s .dotfiles/images/lock-background.png .config/i3/lock-background.png && \
    ln -s .dotfiles/nvim .config/nvim

# Dedicated command as it required sudo
$ sudo ln -s /home/manawasp/.dotfiles/images/inlog-background.png /etc/lightdm/inlog-background.png
```

### zsh plugins

See `cat ~/.zshrc` header to complete zsh plugins install

### vscode

```sh
# The code editor must have been opened before
# Also I am using the insiders version
$ cd $HOME/.dotfiles/.vscode/ && cat extensions.list | grep -v '^#' | xargs -L1 code-insiders --install-extension
$ ln -s $HOME/.dotfiles/.vscode/settings.json $HOME/.config/Code\ -\ Insiders/User/settings.json
```

### Docker

Fix docker permission denied

```
$ sudo groupadd docker
$ sudo usermod -aG docker ${USER}
```

_note: will need to reboot_

### LightDM

Update `/etc/lightdm/lightdm-gtk-greeter.conf`:

```conf
[greeter]
background=/etc/lightdm/inlog-background.png
```

