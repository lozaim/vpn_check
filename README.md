# vpn_check
Check VPN connection, disable Hotspot if connection lost

1. Create a Shell Script
Put vpn_check.sh in /usr/bin/
make the script executable:
sudo chmod +x /usr/bin/vpn_check.sh

2. Create a Systemd Unit File
Put vpn-check.service it /lib/systemd/system/

3. Enable the New Service
sudo systemctl start vpn-check.service

Enable the service to start on system boot
sudo systemctl enable vpn-check.service

Finally verify the script is up and running as a systemd service.
sudo systemctl status vpn-check.service
