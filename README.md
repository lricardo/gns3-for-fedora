# GNS3 Installer Script for Fedora

After compiling GNS3 from source (because there aren't any up-to-date repos or rpms for Fedora), I've built a set of basic scripts to automatize the installation process.

To install GNS3 with GUI you will need to execute all given scripts, as root:
<pre>
<code>
#Install dynamips
./install-dynamips.sh
#Install GNS3-Server
./install-gns3-server.sh
#Install GNS3-GUI
./install-gns3-gui.sh 
#Optional: Install a shortcut
./install-gns3-gui-shortcut.sh
</code>
</pre>
