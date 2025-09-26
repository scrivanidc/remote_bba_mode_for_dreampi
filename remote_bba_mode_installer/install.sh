#!/bin/bash
set -e

echo "Installing Remote BBA Monitor..."

# Copy script
cp remote_bba_mode.py /home/pi/dreampi/
chmod +x /home/pi/dreampi/remote_bba_mode.py

# Copy systemd service
cp remote_bba_mode.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable remote_bba_mode.service
systemctl start remote_bba_mode.service

# Configure rsyslog
cp 10-iptables.conf /etc/rsyslog.d/
touch /var/log/iptables.log
chmod 666 /var/log/iptables.log
systemctl restart rsyslog

echo "Installation complete. Service is running."

