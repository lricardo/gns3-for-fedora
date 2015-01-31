#Leandro Ricardo <leandro.j.c.ricardo@gmail.com>
#!/bin/bash

# Check if the script is being run by root
if [[ $USER != "root" ]]; then
	echo "This scripts must be run as root" 1>&2
	exit 1
fi

# Update system
yum -y update

# Install dynamips dependencies
yum -y install glibc-static
yum -y install xterm

# Create a temporary folder on /tmp
cd /opt/

# Clone repo from github
git clone https://github.com/GNS3/vpcs.git
cd vpcs/src
sh mk.sh
chmod +rx -R /opt/vpcs

# Warning
echo "**************************************"
echo " Install directory: /opt/vpcs/src     "
echo " Please, define it in your GNS3-GUI   "
echo "**************************************"
