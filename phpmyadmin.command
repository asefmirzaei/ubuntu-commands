sudo apt update -y
sudo apt upgrade -y
sudo apt install -y phpmyadmin
not select a web server and press ok
select database configure and click yes
set phpmyadmin password and confirm it
go   to /usr/share/phpmyadmin
copy   sudo mv /usr/share/phpmyadmin/config.sample.inc.php /usr/share/phpmyadmin/config.inc.php
edite config.inc.php file and set in into it $cfg['blowfish_secret'] = 'CfX1la/aG83gx1{7rADus,iqz8RzeV8x'; /* YOU MUST FILL IN THIS FOR COOKIE AUTH! */
set phpmyadmin configuration storage settings like like below


/**
 * phpMyAdmin configuration storage settings.
 */

/* User used to manipulate with storage */
$cfg['Servers'][$i]['controlhost'] = 'localhost';
// $cfg['Servers'][$i]['controlport'] = '';
$cfg['Servers'][$i]['controluser'] = 'pmauser';
$cfg['Servers'][$i]['controlpass'] = 'mypmapass';

sudo phpenmod mbstring
