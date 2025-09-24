.PHONY: build run stop logs dev restart startup

# Build the production image
build:
	docker compose build

# Run production container in detached mode
run:
	docker compose up -d frontend

# Stop and remove containers
stop:
	docker compose down

# View logs
logs:
	docker compose logs -f frontend

# Restart the production container
restart: stop run

# Build and run in one step
startup: build run
