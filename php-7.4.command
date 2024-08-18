sudo apt update -y
sudo apt upgrade -y
sudo add-apt-repository ppa:ondrej/php -y
sudo apt install -y software-properties-common ca-certificates lsb-release apt-transport-https wget curl gnupg2
sudo apt update -y
sudo apt install -y php7.4 php7.4-cli php7.4-json php7.4-common php7.4-mysql php7.4-zip php7.4-mbstring php7.4-curl php7.4-xml php7.4-bcmath php7.4-fpm php7.4-mcrypt php7.4-gettext php7.4-intl php7.4-gmp php7.4-xmlrpc php7.4-zip
# gcc-12-base (= 12.1.0-2ubuntu1~22.04) but 12.3.0-1ubuntu1~22.04 is to be installed     ==> php7.4-gd
php -v
php -m
sudo systemctl start php7.4-fpm
sudo systemctl enable php7.4-fpm
sudo systemctl status php7.4-fpm
sudo update-alternatives --config php

sudo systemctl stop php7.4-fpm
sudo systemctl start php7.4-fpm
sudo systemctl restart php7.4-fpm
sudo systemctl reload php7.4-fpm
sudo systemctl disable php7.4-fpm
sudo systemctl enable php7.4-fpm
sudo systemctl status php7.4-fpm
