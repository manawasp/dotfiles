# Configuration VIM

Pour utiliser pleinement cette configuration il vous faudra un terminal en 256 couleurs et qui supporte l'unicode.
Cela est du à vim-powerline qui rend vim plus 'design' (on met un peu de couleur ailleurs que dans le code ).

Il est possible d'obtenir cette barre sous, par exemple, xterm sans supporter l'unicode.
Je vous redirige vers le GitHub de ce projet [ici](http://github.com/Lokaltog/vim-powerline).
Vous y trouverez des screens.

J'utilise le terminal rxvt-unicode-256colors qui est très simple à configurer voir mon fichier .Xdefaults
Si vous souhaitez patcher vos propres polices il faudra le paquet `python-fontforge` et la patch donné dans le clone du lien précedemment.
N'oubliez pas de faire un `fc-cache -vf` plutot qu'un `sudo fc-cache -vf` si vous mettez vos polices patchées dans le dossier .fonts qui se trouve dans votre /home/$USER au lieu du /home/root (la commande avec le sudo ne passera pas dans votre répertoir).

## .vimrc

Ma configuration n'est pas extraordinaire je vous laisse la lire.
Lancement de NERDTree si pas de fichier en paramètre
Fermeture de vim si il n'y a que NERDTree d'ouvert
Powerline complé à vim vous indique la branch dans laquel vous vous trouvez.
Colorscheme de base xoria256

### Raccourci

Maj+T           créer un nouvelle onglet
Ctrl+a          aller à l'onglet précédent
Ctrl+p          aller à l'onglet suivant
Ctrl+c Ctrl+x   sauvegarde et quitte
Maj+M           ouvre/ferme NERDTree
