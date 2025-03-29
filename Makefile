# Makefile для Docker Compose

PROJECT_NAME = nginx-proxy

up:
	docker-compose up -d --build

down:
	docker-compose down

logs:
	docker-compose logs -f

restart:
	docker-compose down
	docker-compose up -d --build

ps:
	docker-compose ps

clean:
	docker-compose down -v --rmi all --remove-orphans
