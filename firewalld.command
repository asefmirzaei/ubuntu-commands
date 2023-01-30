# ================================================== install ==================================================
sudo apt update -y
sudo apt install -y firewalld
sudo systemctl enable firewalld
sudo systemctl start firewalld
sudo systemctl status firewalld
sudo ufw disable
sudo firewall-cmd --get-active-zones
sudo firewall-cmd --list-all
sudo firewall-cmd --permanent --add-service=ssh
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https
sudo systemctl reload firewalld
sudo firewall-cmd --list-all
sudo reboot
# ================================================== commands =================================================
# open a port : 
sudo firewall-cmd --permanent --add-port=3000/tcp
# or
sudo firewall-cmd --permanent --add-port=53/udp

# remove a port : 
sudo firewall-cmd --permanent --remove-port=3000/tcp
# or
sudo firewall-cmd --permanent --remove-port=53/udp


sudo systemctl stop firewalld
sudo systemctl start firewalld
sudo systemctl restart firewalld
sudo systemctl reload firewalld
sudo systemctl disable firewalld
sudo systemctl enable firewalld
sudo systemctl status firewalld
