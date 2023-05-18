sudo apt update -y
sudo apt upgrade -y
sudo apt install -y brotli git build-essential debhelper po-debconf libexpat-dev libgd-dev libgeoip-dev libhiredis-dev libluajit-5.1-dev libmaxminddb-dev libmhash-dev libpam0g-dev libperl-dev libssl-dev libxslt1-dev quilt dpkg-dev curl gnupg2  zlib1g-dev libpcre3 libpcre3-dev unzip
mkdir /tmp/nginx-build
cd /tmp/nginx-build
download installed nginx source
sudo tar xvf nginx-<VERSION>
git clone https://github.com/google/ngx_brotli.git
cd ngx_brotli/
git submodule update --init --recursive
cd ../
cd /tmp/nginx-build/nginx-<VERSION>
./configure --with-compat --add-dynamic-module=../ngx_brotli
make modules
mkdir /etc/nginx/modules/
cp /tmp/nginx-build/nginx-<VERSION>/objs/*.so /etc/nginx/modules/

add  load_module /etc/nginx/modules/ngx_http_brotli_filter_module.so;
     load_module /etc/nginx/modules/ngx_http_brotli_static_module.so;
to nginx.conf file.

add   brotli on;
      brotli_comp_level 4;
      brotli_buffers 32 8k;
      brotli_min_length 100;
      brotli_static on;
      brotli_types application/atom+xml application/json application/ld+json application/rss+xml application/geo+json application/xml application/rdf+xml application/wasm application/manifes+json application/x-web-app-manifest+json application/msword application/vnd.ms-excel application/vnd.ms-powerpoint application/vnd.ms-fontobject application/java-archive application/mac-binhex40 application/octet-stream application/pdf application/postscript application/rtf application/vnd.google-earth.kml+xml application/vnd.google-earth.kmz application/vnd.wap.wmlc application/x-7z-compressed application/x-bb-appworld application/x-bittorrent application/x-chrome-extension application/x-cocoa application/x-java-archive-diff application/x-java-jnlp-file application/x-makeself application/x-opera-extension application/x-perl application/x-pilot application/x-rar-compressed application/x-redhat-package-manager application/x-sea application/x-shockwave-flash application/x-stuffit application/x-tcl application/x-x509-ca-cert application/x-xpinstall application/xhtml+xml application/xslt+xml application/zip text/cache-manifest text/javascript text/calendar text/css text/csv text/markdown text/mathml text/plain text/vcard text/vnd.rim.location.xloc text/vnd.sun.j2me.app-descriptor text/vnd.wap.wml text/vtt text/x-component audio/midi audio/mp4 audio/mpeg  audio/ogg audio/x-realaudio audio/x-wav image/apng image/avif image/bmp image/gif image/jpeg image/jxl image/jxr image/png image/svg+xml image/tiff image/vnd.wap.wbmp image/webp image/x-jng image/x-icon video/3gpp video/mp4 video/mpeg video/ogg video/quicktime video/webm video/x-flv video/x-mng video/x-ms-asf video/x-msvideo font/woff font/woff2 font/ttf font/collection font/otf;
to domain and subdomains config files.

nginx -t

     
