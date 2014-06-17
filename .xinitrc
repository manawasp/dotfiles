DEFAULT=SESSION=awesome

exec awesome

case $1 in
  awesome )
    exec awesome /home/kyndt/.config/awesome/rc.lua
  ;;
  i3 )
    exec i3
  ;;
esac
