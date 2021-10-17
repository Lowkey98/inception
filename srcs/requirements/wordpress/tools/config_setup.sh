#config 
    echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf
#service start
apt-get install gettext-base
cd wordpress
# envsubst < wp-config.php > tmp
envsubst '${DB_NAME}, ${DB_USER}, ${DB_PASSWORD}, ${DB_HOST}' < wp-config.php > tmp
cat tmp > wp-config.php
rm tmp
service php7.3-fpm start
service php7.3-fpm stop
/usr/sbin/php-fpm7.3 --nodaemonize