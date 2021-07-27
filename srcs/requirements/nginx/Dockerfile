FROM debian:buster
# update packages
RUN apt-get update
RUN apt-get upgrade
# tools
RUN apt-get install -y vim
# install nginx
RUN apt-get install -y nginx
# SSL key
COPY conf/ssl.crt /etc/ssl/
COPY conf/ssl.key /etc/ssl/
# nginx conf file
COPY conf/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80 443
CMD ["nginx", "-g","daemon off;"]
