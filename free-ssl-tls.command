# first you need to config nginx
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y certbot python3-certbot-nginx
certbot --version
sudo certbot --nginx
  enter your email : admin@site.com
press y
press n
press enter
sudo certbot renew --dry-run
nginx -t
sudo systemctl reload nginx
