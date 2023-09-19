## up: starts all containers in the background without forcing build
up:
	@echo "Starting docker images..."
	docker-compose -f ./docker-compose.yml --env-file ./.env up -d
	@echo "Docker images started!"

## down: stop docker compose
down:
	@echo "Stopping docker images..."
	docker-compose -f ./docker-compose.yml --env-file ./.env down
	@echo "Docker stopped!"

## help: displays help
help: Makefile
	@echo " Choose a command:"
	@sed -n 's/^##//p' $< | column -t -s ':' |  sed -e 's/^/ /'