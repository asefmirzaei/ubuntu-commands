Connect to Your Server via SSH.
sudo nano /etc/ssh/sshd_config
Find the line that reads #Port 22.
Delete the number and # and replace it with the new SSH port number you want to use.
Then save the changes.
sudo ufw allow YOUR_PORT/tcp
sudo ufw reload
sudo systemctl restart sshd
ss -tulpn | grep YOUR_PORT
