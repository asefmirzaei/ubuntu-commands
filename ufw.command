sudo apt update -y
sudo apt upgrade -y
sudo apt install -y ufw
go to  /etc/default/ufw   set IPV6=yes
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow https
sudo ufw start
sudo ufw enable -y
sudo ufw status
sudo ufw status verbose
sudo ufw reload

sudo ufw stop
sudo ufw start
sudo ufw restart
sudo ufw reload
sudo ufw disable
sudo ufw enable -y
sudo ufw status
