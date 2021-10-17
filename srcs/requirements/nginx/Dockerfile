FROM debian:buster
# update packages
    RUN apt-get update -y

# tools
    RUN apt-get install -y vim

# install nginx
    RUN apt-get install -y nginx

# SSL key
    COPY conf/ssl.crt /etc/ssl/
    COPY conf/ssl.key /etc/ssl/
# nginx conf file
    COPY conf/default /etc/nginx/sites-available/default
    COPY conf/index.php /var/www/html/
CMD ["nginx", "-g","daemon off;"]