# Manawasp's Dotfiles

## Overview

### System

- [debian](https://www.debian.org/devel/debian-installer/): linux distribution composed of free and open-source software.
- [LightDM](https://wiki.archlinux.org/title/LightDM): cross-desktop display manager.
- [i3](https://i3wm.org/): dynamic tiling window manager.
- [py3status](https://py3status.readthedocs.io/en/latest/): extensible i3status wrapper written in Python.

### User

- [alacritty](https://alacritty.org/): modern terminal emulator that comes with sensible defaults, but allows for extensive configuration.
- [zsh](https://www.zsh.org/): shell designed for interactive use, although it is also a powerful scripting language.
- [starship](https://starship.rs/guide/): minimal, blazing-fast, and infinitely customizable prompt.
- [nvim](https://neovim.io/): hyperextensible Vim-based text editor.
- [eza](https://github.com/eza-community/eza): a modern replacement for ls.
- [zoxide](https://github.com/ajeetdsouza/zoxide): a smarter cd command, inspired by z and autojump.
- [vscode](https://code.visualstudio.com/insiders/): code editor redefined and optimized for building and debugging modern web and cloud applications.
- [spotify](https://www.spotify.com/fr/download/linux/): audio streaming and media services provider.

### Programming

- [docker](https://docs.docker.com/engine/install/debian/): OS-level virtualization to deliver software in packages called containers.
- [go](https://go.dev/doc/install): statically typed, compiled programming language.
- [nvm](https://github.com/nvm-sh/nvm): version manager for node.js, designed to be installed per-user, and invoked per-shell.
- [python](https://www.python.org/downloads/): high-level, interpreted, general-purpose programming language.
- [rust](https://www.rust-lang.org/tools/install): multi-paradigm, general-purpose programming language that emphasizes performance, type safety, and concurrency.

## Install

```sh
$ sudo apt update && sudo apt upgrade
$ sudo apt install \
    gcc curl tree cloc xclip git ssh \
    i3 py3status feh lightdm \
    zsh fonts-noto eza tmux \
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
- [`starship` via curl](https://starship.rs/guide/)

Additional install:
- [diff so fancy](https://github.com/so-fancy/diff-so-fancy): strives to make your diffs human readable instead of machine readable (prefer install in `~/.local/bin`)
- [Powerline fonts](https://github.com/powerline/fonts): pre-patched and adjusted fonts for usage with the Powerline statusline plugin (prefer manual install)

## Configure

### Global

```sh
# Go to HOME dir to execute all command
$ cd $HOME

# Clean & prepare directory
$ rm -rf .alacritty.toml .config/starship.toml .zshrc .config/i3 .config/i3status

# Inject all symbolic link
$ ln -s .dotfiles/alacritty/alacritty.toml .alacritty.toml && \
    ln -s .dotfiles/starship/starship.toml .config/starship.toml && \
    ln -s .dotfiles/zshrc/zshrc .zshrc && \
    ln -s .dotfiles/gitconfig/.gitconfig .gitconfig && \
    ln -s .dotfiles/i3/i3config .config/i3/config && \
    ln -s .dotfiles/i3/i3status .config/i3status && \
    ln -s .dotfiles/i3/images/background.jpg .config/i3/background.jpg && \
    ln -s .dotfiles/nvim .config/nvim && \
    ln -s .dotfiles/tmux/tmux.conf .tmux.conf && \
    ln -s .dotfiles/tmux .config/tmux

# Dedicated command as it required sudo
$ sudo ln -s /home/manawasp/.dotfiles/images/inlog-background.png /etc/lightdm/inlog-background.png
```

### Tmux

```sh
$ mkdir -p ~/.tmux/plugins
$ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
$ tmux source ~/.tmux.conf
# Then in tmux install plugins: Ctrl+B I
```

### Fonts

Download and unzip the JetBrainsMono Nerd Font: https://www.nerdfonts.com/font-downloads
Move it inside `~/.local/share/fonts` and reload font cache `fc-cache -f -v`

### zsh plugins

See `cat ~/.zshrc` header to complete zsh plugins install

### vscode

```sh
# The code editor must have been opened before
# Also I am using the insiders version
$ cd $HOME/.dotfiles/.vscode/ && cat extensions.list | grep -v '^#' | xargs -L1 code --install-extension
$ ln -s $HOME/.dotfiles/vscode/settings.json $HOME/.config/Code/User/settings.json
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
background=/usr/share/pixmaps/inlog-background.png
```

And copy the background:

```sh
sudo cp .dotfiles/i3/images/inlog-background.png /usr/share/pixmaps/inlog-background.png
```

