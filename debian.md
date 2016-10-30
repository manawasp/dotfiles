# Memo Install


> Distrib

[Wiki Debian](http://fr.wikipedia.org/wiki/Debian)

> Environnement Graphique

[Tilling Window Manager](http://en.wikipedia.org/wiki/Tiling_window_manager)
[Wiki Awesome](http://awesome.naquadah.org/wiki/Main_Page)


## Installation Debian

Preferez la version Wheezy (testing).
Ne pas oublier de decocher le bureau graphique (Gnome...)

### Wifi-Debian-Intel

Installer le paquet firmware-wifi (paquet non-free)
* fichier de conf /etc/wpa_supplicant/
* Ajouter la configuration à /etc/network/interfaces

### Paramètrage & upgrade

* `aptitude update`
* `aptitude safe-upgrade`
* `aptitude install sudo`


## Paramètrage environnement

### Installation

* `aptitude install xorg awesome slim`

### Le son & Beep

* `aptitude install alsa-utils alsa-tools alsamixergui pulseaudio`

Lancer `sudo alsamixer`, unmute les hauts-parleurs et mute le beep.


### Les vidéos flash

Aller sur adobe et télécharger/installer le plugin adobe flash player.

### Installation Annexe de Base

* qiv : visonneur d'image dans le terminal
* imagemagick : permet de resizer/convertir des images
* vlc : lecteur video
* gimp : retouche d'image
* git : gestionnaire de version
* ssh : generateur de keys
* xclip
* feh : fond d'ecran
* vim/emacs : editeur de texte
* tree : une arborescence
* valgrind
* gdb
* clang : compilateur c & c++
* ghc-ghci : Haskell
* ocaml
* rxvt-unicode-256colors
* htop
* python3.x

