sudo apt update -y
sudo apt upgrade -y
sudo apt install -y apache2
sudo apache2 -version
sudo systemctl is-active apache2
sudo systemctl is-enabled apache2.service
sudo ufw app list
sudo ufw allow 'Apache'
sudo ufw allow 'Apache Full'
sudo ufw status
sudo systemctl start apache2
sudo systemctl enable apache2
sudo systemctl status apache2



sudo systemctl stop apache2
sudo systemctl start apache2
sudo systemctl restart apache2
sudo systemctl reload apache2
sudo systemctl disable apache2
sudo systemctl enable apache2
sudo systemctl status apache2
