sudo apt update -y
sudo apt upgrade -y
sudo apt install -y software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt install -y php7.4
sudo apt install -y php7.4-cli php7.4-json php7.4-common php7.4-mysql php7.4-zip php7.4-gd php7.4-mbstring php7.4-curl php7.4-xml php7.4-bcmath php7.4-fpm php7.4-mcrypt php7.4-gettext
php -v
sudo systemctl start php7.4-fpm
sudo systemctl enable php7.4-fpm
sudo systemctl status php7.4-fpm



sudo systemctl stop php7.4-fpm
sudo systemctl start php7.4-fpm
sudo systemctl restart php7.4-fpm
sudo systemctl reload php7.4-fpm
sudo systemctl disable php7.4-fpm
sudo systemctl enable php7.4-fpm
sudo systemctl status php7.4-fpm
