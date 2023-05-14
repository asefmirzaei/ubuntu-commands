sudo apt update -y
sudo apt upgrade -y
sudo apt install -y software-properties-common
sudo add-apt-repository ppa:nginx/stable
sudo apt update -y
sudo apt install -y nginx
nginx -v


sudo ufw app list
sudo ufw allow 'Nginx HTTP'
sudo ufw allow 'Nginx HTTPS'
sudo ufw allow 'Nginx Full'
sudo ufw reload
sudo ufw status verbose
sudo systemctl start nginx
sudo systemctl enable nginx
sudo systemctl status nginx
nginx -v
sudo chown -R www-data:www-data /var/www/
sudo chmod -R 755 /var/www/
sudo chown -R $USER:$USER /var/www/your_domain
sudo ln -s /etc/nginx/sites-available/yorsite.com.conf /etc/nginx/sites-enabled/
sudo nginx -t
sudo systemctl reload nginx


sudo systemctl stop nginx
sudo systemctl start nginx
sudo systemctl restart nginx
sudo systemctl reload nginx
sudo systemctl disable nginx
sudo systemctl enable nginx
sudo systemctl status nginx
