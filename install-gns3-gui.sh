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
dnf -y install python3-qt5
dnf -y install redhat-rpm-config

#dnf -y install pycryptopp
dnf install python3-pip
python3 -m pip install pycrypto
python3 -m pip install psutil
python3 -m pip install raven
python3 -m pip install paramiko


#Clone GitHub repository
mkdir -p /tmp/install-gns3-gui
cd /tmp/install-gns3-gui
git clone https://github.com/GNS3/gns3-gui.git
cd gns3-gui

#Install
python3 setup.py install

rm -rf /tmp/install-gns3-gui
