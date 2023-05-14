sudo apt update -y
sudo apt upgrade -y
wget -O- https://nginx.org/keys/nginx_signing.key | sudo gpg --dearmor | sudo tee /usr/share/keyrings/nginx-archive-keyring.gpg
echo deb [arch=amd64,arm64 signed-by=/usr/share/keyrings/nginx-archive-keyring.gpg] http://nginx.org/packages/ubuntu `lsb_release -cs` nginx | sudo tee /etc/apt/sources.list.d/nginx-stable.list
echo deb-src [arch=amd64,arm64 signed-by=/usr/share/keyrings/nginx-archive-keyring.gpg] http://nginx.org/packages/ubuntu `lsb_release -cs` nginx | sudo tee -a /etc/apt/sources.list.d/nginx.list
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
