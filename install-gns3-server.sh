#Leandro Ricardo <leandroricardo@ua.pt>
#!/bin/bash

# Check if the script is being used by root
if [[ $USER != "root" ]]; then
        echo "This script must be run as root" 1>&2
        exit 1
fi

#Update system
dnf update

#Install gns3-server dependencies
dnf -y install python3
dnf -y install python3-devel
dnf -y install python3-zmq
pip3 install netifaces

#Clone GitHub repository
mkdir -p /tmp/build-gns3-server
cd /tmp/build-gns3-server

git clone https://github.com/GNS3/gns3-server.git
cd gns3-server

#Install
python3 setup.py install

#Remove folders
rm -rf /tmp/build-gns3-server

