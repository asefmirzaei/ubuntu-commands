# ================================================== install ==================================================
sudo apt update -y
sudo apt -y install redis-server
go to    /etc/redis/redis.conf set   supervised systemd
sudo systemctl enable redis-server.service
sudo systemctl start redis-server.service
sudo systemctl status redis-server.service
find bind 127.0.0.1 in /etc/redis.conf and add your ip at end of it.
find requirepass in /etc/redis.conf and uncomment  requirepass  and set pass with it.
redis-cli ping

sudo firewall-cmd --permanent --new-zone=redis
sudo firewall-cmd --permanent --zone=redis --add-port=6379/tcp
sudo firewall-cmd --permanent --zone=redis --add-source=client_server_private_IP
sudo firewall-cmd --reload

sudo systemctl restart redis-server.service
# ================================================== commands =================================================
sudo systemctl stop redis
sudo systemctl start redis
sudo systemctl restart redis
sudo systemctl reload redis
sudo systemctl disable redis
sudo systemctl enable redis
sudo systemctl status redis
