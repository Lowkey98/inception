service mysql start
mysql -u root -e "CREATE DATABASE wordpress"
mysql -u root -e "CREATE USER 'ayoub'@'localhost' IDENTIFIED BY 'ayoub'"
mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'ayoub'@'%' IDENTIFIED BY 'ayoub'"
#service mysql stop
ps -e | grep mysqld | awk '{print $1}' > a
kill -kill `cat a`
sleep 2
mysqld_safe --user=root