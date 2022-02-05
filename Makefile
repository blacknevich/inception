all:
	docker-compose -f ./srcs/docker-compose.yml up -d
clean:
	docker-compose -f ./srcs/docker-compose.yml down
re: fclean
	docker-compose -f ./srcs/docker-compose.yml up -d
nginx:
	docker-compose -f ./srcs/docker-compose.yml up --no-deps -d --build nginx
mariadb:
	sudo rm -Rf data/mariadb/*
	sudo rm -Rf data/wordpress/*
	docker-compose -f ./srcs/docker-compose.yml up --no-deps -d --build mariadb
wordpress:
	sudo rm -Rf data/mariadb/*
	sudo rm -Rf data/wordpress/*
	docker-compose -f ./srcs/docker-compose.yml up --no-deps -d --build wordpress
inginx:
	docker exec -it $$(docker ps -qf name=nginx_container) bin/bash
imariadb:
	docker exec -it $$(docker ps -qf name=mariadb_container) bin/bash
iwordpress:
	docker exec -it $$(docker ps -qf name=wordpress_container) bin/bash
lnginx:
	docker logs $$(docker ps -qf name=nginx_container)
lmariadb:
	docker logs $$(docker ps -qf name=mariadb_container)
lwordpress:
	docker logs $$(docker ps -qf name=wordpress_container)
rnginx:
	docker-compose -f ./srcs/docker-compose.yml down
	docker-compose -f ./srcs/docker-compose.yml up --no-deps -d --build nginx
	docker-compose -f ./srcs/docker-compose.yml down
	docker-compose -f ./srcs/docker-compose.yml up -d
rmariadb:
	docker-compose -f ./srcs/docker-compose.yml down
	sudo rm -Rf data/mariadb/*
	docker-compose -f ./srcs/docker-compose.yml up --no-deps -d --build mariadb
	docker-compose -f ./srcs/docker-compose.yml down
	docker-compose -f ./srcs/docker-compose.yml up -d
rwordpress:
	docker-compose -f ./srcs/docker-compose.yml down
	sudo rm -Rf data/wordpress/*
	docker-compose -f ./srcs/docker-compose.yml up --no-deps -d --build wordpress
	docker-compose -f ./srcs/docker-compose.yml down
	docker-compose -f ./srcs/docker-compose.yml up -d
fclean: clean
	#sudo docker rm -vf $$(sudo docker ps -aq)
	#sudo docker image prune --all --force
	#sudo docker rmi -f $$(sudo docker images -aq)
	sudo docker system prune -a --force
	sudo docker volume rm $$(sudo docker volume ls -q)
	sudo rm -Rf data/mariadb/*
	sudo rm -Rf data/wordpress/*
