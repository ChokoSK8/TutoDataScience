YML	= srcs/docker-compose.yml

all:
	docker-compose -p "PYTHON" -f $(YML) up --build

down:
	docker-compose -f $(YML) down

re: fclean all

clean:
	docker-compose -f $(YML) rm $(docker ps -a)

fclean:	clean
	docker-compose -f $(YML) down --rmi all -v

.PHONY: all re down clean fclean
