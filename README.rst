SSH helper scripts
==================

dropbear-copy-id
----------------
This script installs an SSH public key to a machine, where the required
destination is not ~/.ssh/authorized_keys, but
/etc/dropbear/authorized_keys.

ssh2cisco
---------
Reformats an OpenSSH key to be pasted into a Cisco CLI config.

DISCLAIMER
==========

These scripts are made for my personal use.
They can and will destroy your dear software configurations.
 
DO NOT USE THEM ON MACHINES, WHERE YOU CANNOT RECOVER THE ORIGINAL
SSH/DROPBEAR CONFIGURATION.

Yes, this means: Do not use them, unless you (a) have a backup of your
configuration or (b) you do not care for the configuration.
Additionally, in case of an incident, you need to be able to access the
machine without the use of SSH.
