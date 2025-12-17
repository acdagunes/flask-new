
.PHONY: help build up down restart logs clean test health ps shell

help:
	@echo "Available commands:"
	@echo "  build       - Build Docker images"
	@echo "  up          - Start all services"
	@echo "  down        - Stop all services"
	@echo "  restart     - Restart services"
	@echo "  logs        - View logs"
	@echo "  test        - Run API tests"
	@echo "  health      - Check health"
	@echo "  ps          - Show containers"
	@echo "  clean       - Clean everything"

build:
	docker compose build

up:
	docker compose up -d
	@echo "Waiting for services..."
	@sleep 5
	@make health

down:
	docker compose down

restart:
	docker compose restart

logs:
	docker compose logs -f

logs-flask:
	docker compose logs -f flask

logs-nginx:
	docker compose logs -f nginx

clean:
	docker compose down -v
	docker system prune -f

test:
	@echo "Testing health endpoint..."
	@curl -sf http://localhost/health | jq || echo "Failed"
	@echo "\nTesting version endpoint..."
	@curl -sf http://localhost/version | jq || echo "Failed"
	@echo "\nTesting main endpoint..."
	@curl -sf http://localhost/ | jq || echo "Failed"

health:
	@curl -sf http://localhost/health | jq

ps:
	docker compose ps

shell:
	docker compose exec flask sh
