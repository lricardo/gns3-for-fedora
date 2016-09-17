#Leandro Ricardo <leandro.j.c.ricardo@gmail.com>
#!/bin/bash

# Check if the script is being run by root
if [ "$(id -u)" != "0" ]; then
	echo "This scripts must be run as root" 1>&2
	exit 1
fi

# Update system
dnf -y update

# Install dynamips dependencies
dnf install git bison flex

cd /tmp
git clone http://github.com/ndevilla/iniparser.git
cd iniparser
make
sudo cp libiniparser.* /usr/lib/
sudo cp src/iniparser.h /usr/local/include
sudo cp src/dictionary.h /usr/local/include
cd ..

git clone https://github.com/GNS3/iouyap.git
cd iouyap
make
sudo make install


