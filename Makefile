all:
	docker-compose -f ./srcs/docker-compose.yml up -d
clean:
	docker-compose -f ./srcs/docker-compose.yml down
re:
	docker-compose -f ./srcs/docker-compose.yml --build -d
fclean: clean
	#sudo docker rm -vf $(sudo docker ps -aq)
	#sudo docker image prune --all --force
	#sudo docker rmi -f $(sudo docker images -aq)
	#sudo docker volume rm $(sudo docker volume ls -q)
	sudo docker system prune -a --force
	sudo rm -Rf data/mariadb/*
	sudo rm -Rf data/wordpress/*
