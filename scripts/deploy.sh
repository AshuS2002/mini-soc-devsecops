#!/bin/bash

echo "[+] Deploying SOC configuration..."

sudo cp fail2ban/jail.local /etc/fail2ban/jail.local

echo "[+] Validating configuration..."
sudo fail2ban-server -t || exit 1

sudo systemctl restart fail2ban

echo "[+] Deployment completed successfully"
sudo fail2ban-client status sshd
