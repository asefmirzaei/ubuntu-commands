# first install nginx
mysql -u root -p
CREATE DATABASE Database_Name CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE USER USER_NAME@localhost;
SET PASSWORD FOR USER_NAME@localhost= PASSWORD("USER_PASSWORD");
GRANT ALL PRIVILEGES ON DATABASE_NAME.* TO USER_NAME@localhost IDENTIFIED BY 'USER_PASSWORD';
FLUSH PRIVILEGES;
exit;

wget https://fa.wordpress.org/latest-fa_IR.tar.gz
tar xf latest-fa_IR.tar.gz
sudo mkdir -p /var/www/sitename
sudo mv /root/wordpress/* /var/www/sitename
sudo chown -R nginx: /var/www/sitename
cp /var/www/sitename/wp-config-sample.php /var/www/sitename/wp-config.php
Edit wp-config.php and user and database configoration

# use with nginx :
Set this nginx configoration in /etc/nginx/conf.d/sitename.com.conf
sudo nginx -t
sudo systemctl restart nginx
Go to http://sitename.com/wp-admin/install.php
