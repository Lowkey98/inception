if [ ! -d "/var/lib/mysql/wordpress" ]; then 
    service mysql start
        mysql -u root -e "CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"
        mysql -u root -e "CREATE DATABASE $DB_NAME;"
        mysql -u root -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$MYSQL_USER'@'%'; "
        mysql -u root -e "FLUSH PRIVILEGES;"
        mysql -u $MYSQL_USER --password=$MYSQL_PASSWORD $DB_NAME < wp.sql 
        mysqladmin --user=root password ${MSQL_ROOT_PASS}
    service mysql stop
fi
    mysqld_safe