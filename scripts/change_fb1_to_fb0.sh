sed -i -e s@/dev/fb1@/dev/fb0@g /etc/X11/xorg.conf.d/99-fbdev.conf
sed -i -e s@/dev/fb1@/dev/fb0@g /etc/systemd/system/zynthian.service
sed -i -e s@/dev/fb1@/dev/fb0@g /etc/systemd/system/splash-screen.service
sed -i -e s@/dev/fb1@/dev/fb0@g /etc/systemd/system/zynthian_debug.service

