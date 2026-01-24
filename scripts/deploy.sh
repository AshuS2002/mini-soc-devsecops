#!/bin/bash

echo "[+] Deploying Fail2Ban configuration..."

sudo cp fail2ban/jail.local /etc/fail2ban/jail.local
sudo systemctl restart fail2ban

echo "[+] Fail2Ban restarted successfully"
sudo fail2ban-client status sshd
