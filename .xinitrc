DEFAULT=SESSION=awesome

xrdb $HOME/.Xdefault
exec awesome

case $1 in
  awesome )
    exec awesome /home/kyndt/.config/awesome/rc.lua
  ;;
  i3 )
    exec i3
  ;;
esac
