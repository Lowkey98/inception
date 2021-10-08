FROM debian:buster

RUN apt-get update -y

RUN apt-get install mariadb-server -y

COPY conf/my.cnf  /etc/mysql

COPY tools/setup.sh setup.sh
CMD ["sh", "setup.sh"]