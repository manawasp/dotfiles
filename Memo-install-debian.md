# Memo technique debian/i3wm


> Qu'est-ce que Debian ?

[Wikipedia Debian](http://fr.wikipedia.org/wiki/Debian)

> Debian || Ubuntu ?

Certain dise que Ubuntu est plus simple de prise en main que Debian.
N'ayant jamais testé pleinement Ubuntu je ne dirai rien, totu ce que je sais c'est qu'Ubuntu est basé sur Debian donc pourquoi installer un intermédiaire ?
De plus au vue des crash d'Ubuntu de mon entourage je m'en passerais.

> Qu'est-ce que i3wm ?

i3wm est un Window Manager qui gère les fenêtres d'une façon magnifique, très léger comparé à gnome.
L'un des gros avanatage d'i3 est que tout se pilote au clavier via des raccourcis, on pourrait très bien se passer de la souris.
Une bar d'information personalisable, des workspaces et des fenêtres, c'est tout ! Pas de bureau, de menu démarrer.
Une barre de recherche de programme tout de même, (mod+d).
[i3 official site screens](http://i3wm.org/screenshots/#)

> i3 || Gnome & compagnie

Lorsque je suis sous Debian ce n'est pas pour jouer à Gw2 du coup pas besoin d'un environnement graphique évolué.
Au début j'adorais Gnome mais je me suis rendu compte que l'on y perd pas mal au niveau de l'apprentissage :
Network-manager qui demande juste le nom et password de la box, le moutage de vos usb/cd du premier coup et d'autres...

## Installation Debian

Surtout pensez à décocher le bureau graphique si vous ne souhaitez pas GNOME.
Vive la simplicité et légéreté.


### Se connecter à internet avec le wi-fi

Installer le paquet firmware-iwlwifi.deb (Ne pas oublier de le mettre à porter de main, comme une clé usb)
* Configurer la conf dans : /etc/wpa_supplicant/
* Ajouter la configuration à /etc/network/interfaces
* `ifup wlan0='NomDeMaConf'`

Et le tour est joué

NOTE: vos meilleurs amis mount, su, dpkg -i


### Paramètrage & upgrade

Modifier la source-list dans /etc/apt/ et y mettre les depots Wheezy.

> Pourquoi la wheezy ?

J'utilise actuellement la powerline pour vim, l'encodage ne fonctionne pas correctement sous xterm et sous la version Squeezy que j'avais, rxvt possèdait l'encodage mais pas les 256 couleurs (pour limiter les prises de tête, l'encodage de la police ma suffit, je suis passé sous la wheezy).

Ndla: Noyau Linux - Wheezy 3.20 - Squeezy 2.64

* `aptitude update`
* `aptitude upgrade`
* `reboot`

une fois de retour un petit ajout de votre utilisateur dans /etc/sudoers

* `aptitude install sudo`

Vous pouvez enfin quitter l'utilisateur root.



## Paramètrage environnement (Windows Manager i3)


### Installation

* `aptitude install i3 xorg slim`
* `reboot`


### Google-chrome

Prévoir le paquet .deb sinon installez un navigateur open source pour le dl.
Tentez de l'installer, récupérez les lib manquante et les installer.
Installez.


### Le son & Beep

* `aptitude install alsamixergui alsa-base`

Lancez alsamixergui, activez tous les haut-parleurs.
Lancez alsamixer, se rendre sur la dernière barre "Beep" appuyez sur 'm' pour la mute.


### Le micro & Webcam

Avoir google+.
Lancez un Hangout, télécharger et installer le paquet proposé.


### Les vidéos flash

Allez sur adobe et téléchargez ainsi qu'installez le plugin adobe flash player.

### Installation Annexe de Base

* qiv : visonneur d'image dans le terminal
* imagemagick : permet de resizer/convertir des images
* vlc : rien de mieux
* gimp : photoshop :'(
* git
* ssh
* xclip
* feh : permet de mettre un fond d'ecran
* vim ou emacs : rien n'equivaux ces deux là.
* openoffice
* tree : une arborescence
* valgrind

> Vérifiez que gcc et toute la bande sont bien installés

### Installation Annexe +

* Configuration de vim, rxterm-unicode-256colors, powerline : vim/README.rd
* Configuration de i3 : i3/README.rd
* Configuration de slim : slim-theme-steingate/README.rd



