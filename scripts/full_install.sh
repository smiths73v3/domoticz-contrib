#
#Disable Swap
dphys-swapfile swapoff
dphys-swapfile uninstall
systemctl disable dphys-swapfile

#Fetch files and install apt packages
wget https://github.com/smiths73v3/overlayFS/raw/master/scripts/get_files.sh
chmod a+rx get_files.sh
./get_files.sh
apt-get install fuse lsof

#start the installs
./install_parts.sh
systemctl daemon-reload
systemctl enable syncoverlayfs.service

#fixup /boot/cmdline.txt
sed -i.bak -e "s/$/ noswap fastboot ro/" /boot/cmdline.txt

#update fstab
./fixup_fstab.sh

#move fs
echo "Long Operation in progress, moving filesystems"
./movefs.sh

#mounts
mount /home
mount /root
mount /var

