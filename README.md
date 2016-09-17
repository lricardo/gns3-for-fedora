# GNS3 Installer Scripts for Fedora - Beta

Tested and working on Fedora 23, 24!

## Warning

There are versions of GNS3 on RPM Fusion. In this last version, the script uses pip to install both
gns3-server and gns-gui. 
These scripts include dynamips (if you want to use Cisco images) and iouyap.
You can install all (using the aio script) or you can run each one, one by one.

What's included
---------------
* dynamips
* iouyap
* gns3-server
* gns3-gui
* vpcs
* GUI shortcut

Installation steps
------------------
#####AIO (GNS3 full installation)

```bash
$ git clone https://github.com/lricardo/gns3-for-fedora.git
$ cd gns3-for-fedora
# ./aio-install.sh
```
About VPCS
----------
For those who need VPCS, my solution was to install the package in /opt/vpcs - because it's optional software and it's easy to maintain.

You need to configure GNS3 to the following path:

```
/opt/vpcs/src/vpcs
```

Note: VPCS is installed from the GNS3 git, which means it's generally more stable than the version which is delivered through some distros.

Missing features
-----------------
* Uninstaller
