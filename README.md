# GNS3 Installer Script for Fedora - Beta

After compiling GNS3 from source (because there aren't any up-to-date repos or rpms for Fedora), I've built a set of basic scripts to automatize the installation process.

These scripts were tested and work on Fedora 21.

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
* iouyap
