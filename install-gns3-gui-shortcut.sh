#Leandro Ricardo <leandro.j.c.ricardo@gmail.com>
#!/bin/bash

# Check if the script is being run by root
if [[ $USER != "root" ]]; then
	echo "This scripts must be run as root" 1>&2
	exit 1
fi

cd /tmp

#Download file from the official website
wget http://www.gns3.com/images/gns3_logo.png
#Dirty fix...
mv gns3_logo.png /usr/share/icons/hicolor/scalable/apps/

echo "[Desktop Entry]
Type=Application
Name=GNS3
GenericName=Graphical Network Simulator
Comment=Graphical Network simulator
Icon=/usr/share/icons/hicolor/scalable/apps/gns3_logo.png
TryExec=/usr/bin/gns3
Exec=/usr/bin/gns3 %f
Terminal=false
MimeType=application/vnd.tcpdump.pcap;application/x-pcapng;application/x-snoop;application/x-iptrace;application/x-lanalyzer;application/x-nettl;application/x-radcom;application/x-etherpeek;application/x-visualnetworks;application/x-netinstobserver;application/x-5view;
Categories=Application;Network;" > /usr/share/applications/gns3.desktop
