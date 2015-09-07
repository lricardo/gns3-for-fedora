# GNS3 Installer Scripts for Fedora - Beta

Tested and working on Fedora 22!

What's included
---------------
* Dynamips
* gns3-server
* gns3-gui
* vpcs
* iouyap
* GUI shortcut

Installation steps
------------------
#####AIO (GNS3 full installation)

```bash
$ git clone https://github.com/lricardo/gns3-fedora-installer-script.git
$ cd gns3-fedora-installer-script.git
$ ./aio-install.sh
```
About VPCS
----------
For those who need VPCS, my solution was to install the package in /opt/vpcs - because it's optional software and it's easy to maintain.

You need to configure GNS3 to the following path:

```
/opt/vpcs/src/vpcs
```

Missing features
-----------------
* Uninstaller
