FROM debian:buster

RUN apt-get update
RUN apt-get install -y \
    mariadb-server \
    mariadb-client 
EXPOSE 3306
COPY ./conf/setup.sh .
#CMD sh setup.sh
#CMD ["mysqld_safe"]
RUN service mysql start && \
    mysql -e "CREATE DATABASE wordpress;" && \
    mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'hahowa'@'localhost' IDENTIFIED BY 'hahia';" 
CMD ["mysqld_safe"]
