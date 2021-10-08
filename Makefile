all:
	docker-compose -f srcs/docker-compose.yml up --build
wordpress:
	docker build . -f srcs/requirements/wordpress/Dockerfile
clean:
	docker rm -f $(docker ps -a -q)
	docker rmi $(docker images -a)
	docker volume rm $(docker volume ls -a)
down:
	docker-compose -f srcs/docker-compose.yml down -v --rmi all
