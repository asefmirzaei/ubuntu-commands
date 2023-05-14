# ================================================== install ==================================================
sudo apt update -y
sudo apt upgrade -y
sudo apt -y install redis-server
go to    /etc/redis/redis.conf set   supervised systemd
find port 36277 and change port YOUR_PORT .
find bind 127.0.0.1 in /etc/redis.conf and add your ip at end of it.
find requirepass in /etc/redis.conf and uncomment  requirepass  and set pass with it.
sudo systemctl start redis-server.service
sudo systemctl enable redis-server.service
sudo systemctl status redis-server.service
sudo ufw allow YOUR_PORT/tcp
sudo ufw reload
redis-cli ping
sudo systemctl restart redis-server.service
# ================================================== commands =================================================
sudo systemctl stop redis
sudo systemctl start redis
sudo systemctl restart redis
sudo systemctl reload redis
sudo systemctl disable redis
sudo systemctl enable redis
sudo systemctl status redis
