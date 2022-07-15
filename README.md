# Manawasp's Dotfiles

## Overview

### System

- [debian](https://www.debian.org/devel/debian-installer/): Linux distribution composed of free and open-source software
- [i3](https://i3wm.org/): dynamic tiling window manager
- [LightDM](https://wiki.archlinux.org/title/LightDM): cross-desktop display manager
- [py3status](https://py3status.readthedocs.io/en/latest/): extensible i3status wrapper written in Python

### User

- [urxvt](https://packages.debian.org/search?keywords=rxvt-unicode) : lightweight terminal emulator with Xft and Unicode support
- [zsh](https://www.zsh.org/): shell designed for interactive use, although it is also a powerful scripting language
- [nvim](https://neovim.io/): hyperextensible Vim-based text editor
- [vscode](https://code.visualstudio.com/insiders/): code editor redefined and optimized for building and debugging modern web and cloud applications
- [spotify](https://www.spotify.com/fr/download/linux/): audio streaming and media services provider

### Programming

- [docker](https://docs.docker.com/engine/install/debian/): OS-level virtualization to deliver software in packages called containers
- [go](https://go.dev/doc/install): statically typed, compiled programming language
- [nvm](https://github.com/nvm-sh/nvm): version manager for node.js, designed to be installed per-user, and invoked per-shell
- [python](https://www.python.org/downloads/): high-level, interpreted, general-purpose programming language

## Install

```sh
$ sudo apt update && sudo apt upgrade
$ sudo apt install \
    i3 py3status feh \
    lightdm lightdm-webkit2-greeter \
    rxvt-unicode \
    pavucontrol imagemagick vlc qiv arandr \
    tree cloc xclip git ssh
```

Follow official website to setup `zsh`, `oh-my-zsh`, `nvim`, `vscode`, `spotify`, `docker`, `go`, `nvm` 

Addiontals install:
- [diff so fancy](https://github.com/so-fancy/diff-so-fancy): strives to make your diffs human readable instead of machine readable (prefer npm install)
- [Powerline fonts](https://github.com/powerline/fonts): pre-patched and adjusted fonts for usage with the Powerline statusline plugin (prefer manual install)
- [Noto emoji](https://github.com/googlefonts/noto-emoji): Color and Black-and-White Noto emoji fonts, and tools for working with them

## Configure

### Global

```sh
$ rm -f $HOME/.Xdefaults && ln -s $HOME/.dotfiles/.Xdefaults $HOME/.Xdefaults
$ rm -f $HOME/.zshrc && ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc
$ ln -s $HOME/.dotfiles/.gitconfig $HOME/.gitconfig
$ rm -f $HOME/.config/i3/config && ln -s $HOME/.dotfiles/i3config $HOME/.config/i3/config
$ mkdir -p $HOME/.config/i3status && ln -s $HOME/.dotfiles/py3status $HOME/.config/i3status/config
$ ln -s $HOME/.dotfiles/images/background.jpg $HOME/.config/i3/background.png
$ ln -s $HOME/.dotfiles/images/lock-background.png $HOME/.config/i3/lock-background.png
$ mkdir -p $HOME/.config/nvim && ln -s $HOME/.dotfiles/init.vim $HOME/.config/nvim/init.vim 
$ sudo ln -s /home/manawasp/.dotfiles/images/inlog-background.png /etc/lightdm/inlog-background.png
```

### Zsh

See `cat ~/.zshrc` header to complete zsh plugins install

### nvim

See [vim-plug](https://github.com/junegunn/vim-plug) to activate plugins support and run `:PlugInstall` to configure plugins


