#!/bin/bash
set -e

echo "Uninstalling Remote BBA Monitor..."

# Stop and disable service
systemctl stop remote_bba_mode.service || true
systemctl disable remote_bba_mode.service || true
rm -f /etc/systemd/system/remote_bba_mode.service
systemctl daemon-reload

# Remove script
rm -f /home/pi/dreampi/remote_bba_mode.py

# Remove rsyslog rule and log file
rm -f /etc/rsyslog.d/10-iptables.conf
rm -f /var/log/iptables.log
systemctl restart rsyslog

echo "Uninstallation complete."

