name = 42-inception

all:
	@echo "Configuring..."
	@docker-compose -f ./srcs/docker-compose.yml --env-file srcs/.env up -d

build:
	@echo "Building..."
	@docker-compose -f ./srcs/docker-compose.yml --env-file srcs/.env up -d --build
down:
	@echo "Shutdown..."
	@docker-compose -f ./srcs/docker-compose.yml --env-file srcs/.env down
clean: down
	@echo "Deleting Images..."
	@docker system prune -a
fclean:
	@echo "Stopping and Deleting..."
	@docker stop $$(docker ps -qa)
	@docker system prune --all --force --volumes
	@docker network prune --force
	@docker volume prune --force
.PHONNY: all fclean clean down build
