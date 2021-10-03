all:
	docker-compose -f srcs/docker-compose.yml up --build
wordpress:
	docker build . -f srcs/requirements/wordpress/Dockerfile