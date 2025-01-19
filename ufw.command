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
sudo ufw enable
sudo ufw status
sudo ufw status verbose
sudo ufw reload

sudo ufw stop
sudo ufw start
sudo ufw reset
sudo ufw reload
sudo ufw disable
sudo ufw enable
sudo ufw status

sudo ufw status numbered
sudo ufw delete {rule-number-here}

sudo ufw deny {port_with_protocol}
sudo ufw delete deny {port_with_protocol}
