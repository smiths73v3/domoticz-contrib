for D in /var /root /home
do
	mv -v ${D} ${D}_org
	cd ${D}_org
	find . | cpio -pdum ${D}_stage
	mkdir -v ${D} ${D}_rw ${D}/.overlaysync ${D}_org/.overlaysync
done
exit

