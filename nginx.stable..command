sudo apt update -y
sudo apt upgrade -y
sudo apt install -y software-properties-common python-software-properties
sudo add-apt-repository ppa:nginx/stable
sudo apt update -y
sudo apt install -y nginx
nginx -v
