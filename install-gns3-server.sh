#Leandro Ricardo <leandroricardo@ua.pt>
#!/bin/bash

# Check if the script is being used by root
if [ "$(id -u)" != "0" ]; then
        echo "This script must be run as root" 1>&2
        exit 1
fi

#Update system
dnf update

#Install gns3-server dependencies
dnf -y install python3-devel redhat-rpm-config

#Install using pip3
pip3 install gns3-server
