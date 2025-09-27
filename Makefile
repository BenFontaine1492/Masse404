.PHONY: build-prod run-prod stop-prod logs-prod restart-prod startup-prod dev dev-logs dev-stop

### --- Production Commands (Nginx) ---

# Build the production image
build-prod:
	docker compose build

# Run production container in detached mode
run-prod:
	docker compose up -d frontend

# Stop and remove production containers
stop-prod:
	docker compose down

# View logs of the production container
logs-prod:
	docker compose logs -f frontend

# Restart the production container
restart-prod: stop-prod run-prod

# Build and run in one step
startup-prod: build-prod run-prod


### --- Development Commands (Hot Reload with Vite) ---

# Run development container (hot reload)
run-dev:
	docker compose up frontend-dev

# View logs of the dev container
logs-dev:
	docker compose logs -f frontend-dev

# Stop only the dev container
stop-dev:
	docker compose stop frontend-dev
