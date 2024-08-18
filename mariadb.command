########## WithScript ##########
curl -sS https://downloads.mariadb.com/MariaDB/mariadb_repo_setup | sudo bash


########## With Command ##########
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y mariadb-server mariadb-client mariadb-common mariadb-backup libmariadb3 galera-4 software-properties-common
sudo systemctl start mariadb.service
sudo systemctl enable mariadb.service
sudo systemctl status mariadb.service
sudo mysql_secure_installation
Switch to unix_socket authentication [Y/n] y
Change the root password? [Y/n] y
Remove anonymous users? [Y/n] y
Disallow root login remotely? [Y/n] y
Remove test database and access to it? [Y/n] y
Reload privilege tables now? [Y/n] y
sudo mysql -V
sudo mysqld --print-defaults
sudo mysql -u root -p



sudo systemctl stop mariadb.service
sudo systemctl start mariadb.service
sudo systemctl restart mariadb.service
sudo systemctl reload mariadb.service
sudo systemctl disable mariadb.service
sudo systemctl enable mariadb.service
sudo systemctl status mariadb.service
