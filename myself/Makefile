all : up

up :
	sudo mkdir -p /home/jake/data/wp /home/jake/data/DB_PATH
	sudo echo "127.0.0.1	jim.42.fr"
	docker compose -f ./srcs/docker-compose.yml up --build

down:
	docker compose -f ./srcs/docker-compose.yml down

clean:
	docker compose -f ./srcs/docker-compose.yml down -v --rmi all

fclean: clean
	sudo rm -rf -f /home/jake/data/wp /home/jake/data/db

re: fclean all

.PHONY: all up down clean fclean re