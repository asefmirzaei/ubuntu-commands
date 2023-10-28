# ================================================== install ==================================================
sudo apt update -y
sudo apt upgrade -y
apt install build-essential tcl make -y
curl -O http://download.redis.io/redis-stable.tar.gz
tar xzvf redis-stable.tar.gz
cd redis-stable
make
make test
sudo make install
mkdir /etc/redis
cp /tmp/redis-stable/redis.conf /etc/redis

edite /etc/redis/redis.conf file and set :
*************************************************************************************
supervised systemd
dir /var/lib/redis
find port 36277 and change port YOUR_PORT .
find bind 127.0.0.1 in /etc/redis.conf and add your ip at end of it.
find requirepass in /etc/redis.conf and uncomment  requirepass  and set pass with it.
*************************************************************************************

create /etc/systemd/system/redis.service file and put this into it :
***********************************************************
[Unit]
Description=Redis In-Memory Data Store
After=network.target

[Service]
User=redis
Group=redis
ExecStart=/usr/local/bin/redis-server /etc/redis/redis.conf
ExecStop=/usr/local/bin/redis-cli shutdown
Restart=always

[Install]
WantedBy=multi-user.target
***********************************************************

adduser --system --group --no-create-home redis
mkdir /var/lib/redis
chown redis:redis /var/lib/redis
chmod 770 /var/lib/redis

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
