all: up

up:
	sudo echo "127.0.0.1	jim.42.fr"
	docker compose -f ./srcs/docker-compose.yml up --build

# mkdir -p /home/jin/data/wp /home/jim/data/db
down:
	docker compose -f ./srcs/docker-compose.yml down

clean:
	docker compose -f ./srcs/docker-compose.yml down -v --rmi all

fclean: clean
	rm -fr -f /home/jim/data/wp /home/jim/data/db

re: fclean all

.PHONY: all up down clean fclean re