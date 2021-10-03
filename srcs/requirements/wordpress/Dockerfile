FROM debian:buster

RUN apt-get update -y

RUN apt-get install curl -y

#PHP
RUN apt-get install -y php7.3-fpm php7.3-mysql

#WP
    # WORKDIR /var/www/html/
    # RUN curl -LO https://wordpress.org/latest.tar.gz
    # RUN tar xzvf latest.tar.gz
    # RUN rm latest.tar.gz


#copy script for php configuration and 
COPY  tools/config_setup.sh /tmp/
CMD ["/bin/bash", "/tmp/config_setup.sh"]