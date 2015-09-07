#Leandro Ricardo <leandro.j.c.ricardo@gmail.com>
#!/bin/bash

# Check if the script is being run by root
if [[ $USER != "root" ]]; then
	echo "This scripts must be run as root" 1>&2
	exit 1
fi

# Update system
dnf -y update

# Install dynamips dependencies
dnf -y install gcc
dnf -y install cmake
dnf -y install elfutils-libelf-devel
dnf -y install libuuid-devel
dnf -y install libpcap-devel

# Create a temporary folder on /tmp
mkdir -p /tmp/build-dynamips
cd /tmp/build-dynamips

# Clone repo from github
git clone git://github.com/GNS3/dynamips.git
cd dynamips
mkdir build
cd build
cmake ..

# Install
make
make install

# Remove folder
rm -rf /tmp/build-dynamips
