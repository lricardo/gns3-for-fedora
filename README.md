# GNS3 Installer Scripts for Fedora - Beta

Tested and working on Fedora 23!

What's included
---------------
* Dynamips
* gns3-server
* gns3-gui
* vpcs
* iouyap
* GUI shortcut (not working in the last release)

Installation steps
------------------
#####AIO (GNS3 full installation)

```bash
$ git clone https://github.com/lricardo/gns3-for-fedora.git
$ cd gns3-for-fedora
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
