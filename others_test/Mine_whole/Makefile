all: up

up:
	sudo mkdir -p /home/jake/data/wp /home/jake/data/db
	sudo echo "127.0.01	jim.42.kr"
	docker-compose -f ./src/docker-comppose.yml up --build

down:
	docker-compose -f ./src/docker-compose.yml down

clean:
	docker-compose -f ./src/docker-compose.yml down -v --rmi all

fclean: clean
	sudo rm -fr -f /home/jake/data/wp /home/jake/data/db

re:	fclean all

.PHONY: all up down clean fclean re