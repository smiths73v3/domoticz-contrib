sed -i.orig -e "s/\(PARTUUID.*\)\(defaults\)/\1ro/" /etc/fstab
echo "mount_overlay	/home	fuse	nofail,defaults	0	0" >>/etc/fstab
echo "mount_overlay	/root	fuse	nofail,defaults	0	0" >>/etc/fstab
echo "mount_overlay	/var	fuse	nofail,defaults	0	0" >>/etc/fstab
echo "none		/tmp	tmpfs	defaults	0	0" >>/etc/fstab

