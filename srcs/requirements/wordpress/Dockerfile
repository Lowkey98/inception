FROM debian:buster

RUN apt-get update
# tools
RUN apt-get install -y curl tar

# php
RUN apt install php-fpm php-mysql -y

#RUN apt install -y php-fpm php-gd php-mysql php-cli php-common php-curl php-opcache php-json php-imap php-mbstring php-xml

WORKDIR /var/www
RUN curl -LO https://wordpress.org/latest.tar.gz
RUN tar xzvf latest.tar.gz
#RUN cp -R wordpress/ /var/www/
RUN rm latest.tar.gz

EXPOSE 9000

#CMD ["php7.3-fpm",-]
#CMD service php-fpm start
#CMD ["service","php7.3-fpm", "start", "--nodaemonize"]
CMD tail -f /dev/null

#CMD service php7.3-fpm start
