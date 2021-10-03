#config 
    echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf
#service start
service php7.3-fpm start
service php7.3-fpm stop
/usr/sbin/php-fpm7.3 --nodaemonize