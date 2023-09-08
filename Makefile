name = 42-inception

all:
	@echo "Configuring..."
	@docker-compose -f ./srcs/docker-compose.yml --env-file srcs/.env up -d --build 
