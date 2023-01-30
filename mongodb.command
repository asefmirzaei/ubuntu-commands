# ================================================== install ==================================================
sudo apt update -y
wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | sudo apt-key add -
# you can select version here
Create a /etc/apt/sources.list.d/mongodb-org-6.0.list file
  deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse

sudo apt-get update
sudo apt-get install -y mongodb-org
sudo systemctl start mongod
sudo systemctl enable mongod
sudo systemctl status mongod
# ================================================== commands =================================================
sudo systemctl stop mongod
sudo systemctl start mongod
sudo systemctl restart mongod
sudo systemctl reload mongod
sudo systemctl disable mongod
sudo systemctl enable mongod
sudo systemctl status mongod
