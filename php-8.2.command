
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y software-properties-common ca-certificates lsb-release apt-transport-https wget gnupg2
sudo add-apt-repository ppa:ondrej/php -y
sudo apt update -y
sudo apt install -y php8.2
sudo apt install -y php8.2-cli php8.2-common php8.2-mysql php8.2-zip php8.2-gd php8.2-mbstring php8.2-curl php8.2-xml php8.2-bcmath php8.2-fpm php8.2-mcrypt php8.2-gettext php8.2-intl php8.2-gmp php8.2-xmlrpc
php -v
php -m
sudo systemctl start php8.2-fpm
sudo systemctl enable php8.2-fpm
sudo systemctl status php8.2-fpm

sudo update-alternatives --config php

sudo systemctl stop php8.2-fpm
sudo systemctl start php8.2-fpm
sudo systemctl restart php8.2-fpm
sudo systemctl reload php8.2-fpm
sudo systemctl disable php8.2-fpm
sudo systemctl enable php8.2-fpm
sudo systemctl status php8.2-fpm
