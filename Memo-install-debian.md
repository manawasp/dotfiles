# Memo Install


> Distrib

[Wiki Debian](http://fr.wikipedia.org/wiki/Debian)

> Environnement Graphique

[Tilling Window Manager](http://en.wikipedia.org/wiki/Tiling_window_manager)  
[Wiki Awesome](http://awesome.naquadah.org/wiki/Main_Page)  
[Wiki i3](3wm.org/docs/userguide.html)  


## Installation Debian

Preferez la version Wheezy (testing).
Ne pas oublier de decocher le bureau graphique (Gnome...)

### Wifi-Debian-Intel

Installer le paquet firmware-wifi (paquet non-free)
* fichier de conf /etc/wpa_supplicant/
connexion a un reseau cache
>  `ctrl_interface=DIR=/sbin/  
   network={  
   ssid="iit-wifi"  
   scan_ssid=1  
   key_mgmt=WPA-EAP  
   eap=PEAP  
   identity=""  
   password=""  
   phase1="peaplabel=0"  
   phase2="auth=MSCHAPV2"  
 }  `


* Ajouter la configuration à /etc/network/interfaces
`iface iit-wifi inet dhcp
wpa_conf /etc/wpa_supplicant/iit-wifi.conf`

* `ifup wlan0='itt-wifi'`

> mount, su, dpkg -i


### Paramètrage & upgrade

* `aptitude update`
* `aptitude safe-upgrade`
* `aptitude install sudo`


## Paramètrage environnement (Windows Manager i3)

### Installation

* `aptitude install i3 awesome xorg slim`

### Le son & Beep

* `aptitude install alsa`

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
* openoffice.org : openoffice
* tree : une arborescence
* valgrind
* gdb
* clang : compilateur c & c++
* ruby
* mpd
* ncpmcpp
* svn
* mysql
* php
* ghc-ghci : Haskell
* ocaml
* rxvt-unicode-256colors
* mutt


### Installation Annexe +

* Configuration de vim, rxterm-unicode-256colors, powerline : vim/README.rd
* Configuration de i3 : i3/README.rd
* Configuration de slim : slim-theme-steingate/README.rd



