mv saveoverlays-stretch saveoverlays
chmod a+rx saveoverlays mount_overlay rootro movefs.sh fixup_fstab.sh
cp mount_overlay /usr/local/bin/
cp saveoverlays /etc/init.d/ 
cp rootro /usr/local/bin/ 
ln -s rootro /usr/local/bin/rootrw 
cp syncoverlayfs.service /lib/systemd/system/

