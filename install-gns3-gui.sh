#Leandro Ricardo <leandroricardo@ua.pt>
#!/bin/bash
# Check if the script is being run by root
if [ "$(id -u)" != "0" ]; then
        echo "This script must be run as root" 1>&2
        exit 1
fi

# Install gns3-gui via pip3
pip3 install gns3-gui
