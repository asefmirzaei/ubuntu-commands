sudo apt update -y
sudo apt upgrade -y
sudo apt install vsftpd -y
sudo systemctl status vsftpd
sudo ufw allow 21
sudo ufw reload
sed -i 's/anonymous_enable=NO/anonymous_enable=YES/' /etc/vsftpd.conf
sed -i 's/#write_enable=YES/write_enable=YES/' /etc/vsftpd.conf
sudo systemctl restart vsftpd
sudo adduser upload
sudo mkdir -p /home/upload/ftp
sudo chmod -R 750 /home/upload/ftp
sudo chown upload: /home/upload/ftp
