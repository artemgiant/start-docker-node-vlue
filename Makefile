# Makefile для Docker Compose

PROJECT_NAME = nginx-proxy

# ==== DEV =====

up-dev:
	docker-compose -f docker-compose.dev.yml up -d --build

down-dev:
	docker-compose -f docker-compose.dev.yml down  --remove-orphans

logs-dev:
	docker-compose -f docker-compose.dev.yml logs -f

restart-dev:
	docker-compose -f docker-compose.dev.yml down  --remove-orphans
	docker-compose -f docker-compose.dev.yml up -d --build

ps-dev:
	docker-compose -f docker-compose.dev.yml ps

clean-dev:
	docker-compose -f docker-compose.dev.yml down -v --rmi all --remove-orphans

db-connect-dev:
	docker-compose -f docker-compose.dev.yml exec db psql -U admin -d nginxproxy_db

# ==== PROD =====

up-prod:
	docker-compose -f docker-compose.prod.yml up -d --build

down-prod:
	docker-compose -f docker-compose.prod.yml down

logs-prod:
	docker-compose -f docker-compose.prod.yml logs -f

restart-prod:
	docker-compose -f docker-compose.prod.yml down
	docker-compose -f docker-compose.prod.yml up -d --build

ps-prod:
	docker-compose -f docker-compose.prod.yml ps

clean-prod:
	docker-compose -f docker-compose.prod.yml down -v --rmi all --remove-orphans


# ==== COMMON =====

ch-per:
	sudo chmod -R 777 frontend/dist/

free-port:
	sudo fuser -k 8080/tcp || true


connect-backend:
	docker exec -it $$(docker ps -qf "name=backend") sh

connect-frontend:
	docker exec -it $$(docker ps -qf "name=frontend") sh
