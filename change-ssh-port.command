Connect to Your Server via SSH.
nano /lib/systemd/system/ssh.socket
Find the port number in ListenStream and change it.
sudo systemctl daemon-reload 
sudo nano /etc/ssh/sshd_config
Find the line that reads #Port 22.
Delete the number and # and replace it with the new SSH port number you want to use.
Then save the changes.
sudo systemctl restart ssh 
sudo systemctl status ssh 
ss -tulpn | grep YOUR_PORT
sudo ufw allow YOUR_PORT/tcp
sudo ufw reload
