FROM debian:buster

RUN apt-get update
RUN apt-get install -y mariadb-server mariadb-client 
EXPOSE 3306
CMD ["mysqld_safe"]