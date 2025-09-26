# Remote BBA Monitor for Dreamcast

This project monitors DNS traffic from a Dreamcast console using Raspberry Pi and triggers Dreamcast Now sessions automatically.

## Features

- Detects Dreamcast DNS queries via iptables logging
- Starts and stops Dreamcast Now sessions based on traffic
- Automatically disables monitoring if `dreampi.service` is active
- Logs DNS and Dreamcast traffic to `/var/log/iptables.log`
- Integrated with `systemd` and `rsyslog`

## Download direct to RaspberryPi
wget https://github.com/scrivanidc/remote_bba_mode_for_dreampi/raw/main/remote_bba_mode_installer.zip

## Installation
chmod +x install.sh 
sudo ./install.sh

## Uninstallation
chmod +x uninstall.sh
sudo ./uninstall.sh
