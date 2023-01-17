all : up

up :
	sudo mkdir -p ${HOME}/data/wp ${HOME}/data/db
	sudo echo "127.0.0.1	jim.42.fr"
	sudo docker-compose -f srcs/docker-compose.yml up --build

down:
	sudo docker-compose -f srcs/docker-compose.yml down

clean:
	sudo docker-compose -f srcs/docker-compose.yml down -v --rmi all

fclean: clean
	sudo rm -rf -f /home/jake/data/wp /home/jake/data/db

re: fclean all

.PHONY: all up down clean fclean re
