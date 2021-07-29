service mysql start
#mysql -u root -e "CREATE DATABASE wordpress"
#mysql -u root -e "CREATE USER '$MYSQL_USER'@'localhost' IDENTIFIED BY '$MYSQL_PASSWORD'"
#mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO '$MYSQL_USER'@'localhost' IDENTIFIED BY '$MYSQL_PASSWORD'"
#service mysql stop
ps -e | grep mysqld | awk '{print $1}' > a
kill -kill `cat a`
sleep 2
mysqld_safe --user=root