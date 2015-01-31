# GNS3 Installer Script for Fedora - Beta

After compiling GNS3 from source (because there aren't any up-to-date repos or rpms for Fedora), I've built a set of basic scripts to automatize the installation process.

*Tested* on: Fedora 21 Workstation, Fedora 21 XFCE

To install GNS3 with GUI you will need to execute all given scripts, as root.

Installation steps
-------------------

The first script, installs dynamips:
<pre>
<code>
./install-dynamips.sh
</code>
</pre>

The second script, installs GNS3-server:
<pre>
<code>
./install-gns3-server.sh
</code>
</pre>

The third script, installs GNS3-gui:
<pre>
<code>
./install-gns3-gui.sh 
</code>
</pre>

The last and optional script, installs a shotcut:
<pre>
<code>
./install-gns3-gui-shortcut.sh 
</code>
</pre>

VPCS
----
For those who need VPCS, my solution was to install the package in /opt/vpcs - because it's optional software and it's easy to maintain.

You need to configure GNS3 to the following path:

<pre>
<code>
/opt/vpcs/src/vpcs
</code>
</pre>


Missing features
-----------------
* Uninstaller
* "AIO" script
