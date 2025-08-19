# Manawasp's Dotfiles

## Overview

### System

- [debian](https://www.debian.org/devel/debian-installer/): linux distribution composed of free and open-source software.
- [LightDM](https://wiki.archlinux.org/title/LightDM): cross-desktop display manager.
- [sway](https://github.com/swaywm/sway): i3-compatible Wayland compositor.
- [waybar](https://github.com/Alexays/Waybar): Highly customizable Wayland bar for Sway and Wlroots based compositors.
- [tofi](https://github.com/philj56/tofi/tree/master): Tiny dynamic menu for Wayland.

### User

- [alacritty](https://alacritty.org/): modern terminal emulator that comes with sensible defaults, but allows for extensive configuration.
- [zsh](https://www.zsh.org/): shell designed for interactive use, although it is also a powerful scripting language.
- [starship](https://starship.rs/guide/): minimal, blazing-fast, and infinitely customizable prompt.
- [eza](https://github.com/eza-community/eza): a modern replacement for ls.
- [zoxide](https://github.com/ajeetdsouza/zoxide): a smarter cd command, inspired by z and autojump.
- [fg](https://github.com/sharkdp/fd): A simple, fast and user-friendly alternative to 'find'
- [ripgrep](https://github.com/BurntSushi/ripgrep): recursively searches directories for a regex pattern while respecting your gitignore
- [jq](https://github.com/jqlang/jq): Command-line JSON processor
- [bat](https://github.com/sharkdp/bat): cat(1) clone with syntax highlighting and Git integration.
- [zed](https://github.com/zed-industries/zed): Zed is a high-performance, multiplayer code editor from the creators of Atom and Tree-sitter.
- [nvim](https://neovim.io/): hyperextensible Vim-based text editor.
- [spotify](https://www.spotify.com/fr/download/linux/): audio streaming and media services provider.

### Programming

- [docker](https://docs.docker.com/engine/install/debian/): OS-level virtualization to deliver software in packages called containers.
- [nvm](https://github.com/nvm-sh/nvm): version manager for node.js, designed to be installed per-user, and invoked per-shell.
- [python](https://www.python.org/downloads/): high-level, interpreted, general-purpose programming language.
- [rust](https://www.rust-lang.org/tools/install): multi-paradigm, general-purpose programming language that emphasizes performance, type safety, and concurrency.
- [go](https://go.dev/doc/install): statically typed, compiled programming language.

## Install

```sh
sudo apt update && sudo apt upgrade &&  sudo apt install \
    gcc curl tree cloc xclip git ssh \
    sway waybar swaylock swayidle tofi lightdm \
    zsh ripgrep fd-find fonts-noto eza tmux bat jq \
    pavucontrol imagemagick vlc qiv
```

Follow official website to setup:
- [`oh-my-zsh`via curl](https://ohmyz.sh/#install)
- [`zed` via curl](https://zed.dev/download)
- [`spotify` via apt](https://www.spotify.com/us/download/linux/)
- [`docker` via apt](https://docs.docker.com/engine/install/debian/)
- [`docker compose` via apt](https://docs.docker.com/compose/install/linux/#install-using-the-repository)
- [`go` via tarball](https://go.dev/doc/install)
- [`rust` (& `cargo`) via curl](https://www.rust-lang.org/tools/install)
- [`nvm` via curl](https://github.com/nvm-sh/nvm#installing-and-updating)
- [`alacritty` via cargo](https://github.com/alacritty/alacritty/blob/master/INSTALL.md)
- [`neovim`](https://github.com/neovim/neovim/blob/master/INSTALL.md) prefer nighty and install it in `~/.local/bin/`
- [`starship` via curl](https://starship.rs/guide/)
- [`bat` setup symlink](https://github.com/sharkdp/bat?tab=readme-ov-file#on-ubuntu-using-apt)
- [`zoxide` via curl](https://github.com/ajeetdsouza/zoxide?tab=readme-ov-file#installation)

Additional install:
- [diff so fancy](https://github.com/so-fancy/diff-so-fancy): strives to make your diffs human readable instead of machine readable (prefer install in `~/.local/bin`)

## Configure

### Global

```sh
# Go to HOME dir to execute all command
cd $HOME

# Clean & prepare directory
rm -rf .alacritty.toml .config/starship.toml .zshrc .config/sway .config/waybar .config/zed

# Inject all symbolic link
ln -s .dotfiles/alacritty/alacritty.toml .alacritty.toml && \
    ln -s .dotfiles/starship/starship.toml .config/starship.toml && \
    ln -s .dotfiles/zshrc/zshrc .zshrc && \
    ln -s .dotfiles/gitconfig/.gitconfig .gitconfig && \
    ln -s .dotfiles/sway .config/sway && \
    ln -s .dotfiles/waybar .config/waybar && \
    ln -s .dotfiles/tofi .config/tofi && \
    ln -s .dotfiles/zed .config/zed && \
    ln -s .dotfiles/nvim .config/nvim
```

### Fonts

- [JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads): JetBrains officially created font for developers
- [Font Awesome v7](https://fontawesome.com/download): The internet's favorite icon library just expanded the menu. _(Needed by my waybar config)._

Download and unzip fonts into `~/.local/share/fonts` and reload font cache `fc-cache -f -v`

### zsh plugins

See `cat ~/.zshrc` header to complete zsh plugins install


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
sudo cp .dotfiles/wallpaper/inlog.png /usr/share/pixmaps/inlog-background.png
```

