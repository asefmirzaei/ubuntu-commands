# install mariadb
# install php


server {
    server_name rollbox.ir;
    root /var/www/apps;
    listen 80;
    
    location / {
        root /var/www/apps/blog;
        index index.html index.xhtml index.php;
        try_files $uri $uri/ =404;
        access_log  /var/log/nginx/blog.ahanmelal.access.log;
        error_log  /var/log/nginx/blog.ahanmelal.error.log;
    }

    location ~ \.php$ {
        fastcgi_split_path_info ^(.+\.php)(/.+)$;
        fastcgi_index index.php;
        fastcgi_pass unix:/run/php/php7.4-fpm.sock;
        fastcgi_param SCRIPT_FILENAME $realpath_root$fastcgi_script_name;
        include fastcgi_params;
    }

    location ~ /\.ht {
        deny all;
    }

    location /blog-downloads {
        alias /var/www/apps/blog_storages;
    }

    error_page 404 /404.html;
    error_page 501 502 503 /500.html;
}


# insyall phpmyadmin
