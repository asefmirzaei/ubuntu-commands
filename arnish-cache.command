sudo apt update -y
sudo apt upgrade -y
sudo apt install -y debian-archive-keyring curl gnupg apt-transport-https
curl -fsSL https://packagecloud.io/varnishcache/varnish70/gpgkey|sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/varnish.gpg

sudo tee /etc/apt/sources.list.d/varnishcache_varnish70.list > /dev/null <<-EOF
deb https://packagecloud.io/varnishcache/varnish70/ubuntu/ focal main
deb-src https://packagecloud.io/varnishcache/varnish70/ubuntu/ focal main
EOF

sudo apt update -y
sudo apt install -y varnish
sudo cp /lib/systemd/system/varnish.service /etc/systemd/system/
cat /etc/systemd/system/varnish.service

sudo vim /etc/systemd/system/varnish.service
ExecStart=/usr/sbin/varnishd \
	  -a :80 \
	  -a localhost:8443,PROXY \
	  -p feature=+http2 \
	  -f /etc/varnish/default.vcl \
	  -s malloc,2g

sudo systemctl daemon-reload
sudo systemctl start varnish
audo systemctl status varnish
