#Leandro Ricardo <leandroricardo@ua.pt>
#!/bin/bash
# Check if the script is being run by root
if [ "$(id -u)" != "0" ]; then
        echo "This script must be run as root" 1>&2
        exit 1
fi

#Update system
dnf update

#Install gns3-server dependencies
dnf -y install python3-PyQt4
dnf -y install pycryptopp

#Clone GitHub repository
mkdir -p /tmp/install-gns3-gui
cd /tmp/install-gns3-gui
git clone https://github.com/GNS3/gns3-gui.git
cd gns3-gui

#Install
python3 setup.py install

rm -rf /tmp/install-gns3-gui
