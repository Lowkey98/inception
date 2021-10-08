
service mysql start
    mysql -u root -e "CREATE USER 'ayoub'@'%' IDENTIFIED BY 'ayoub';"
    mysql -u root -e "CREATE DATABASE wordpress;"
    mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'ayoub'@'%'; "
    mysql -u root -e "FLUSH PRIVILEGES;"
service mysql stop
mysqld_safe