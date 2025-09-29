.PHONY: build-prod run-prod stop-prod logs-prod restart-prod startup-prod \
        run-dev logs-dev stop-dev

### --- Production Commands (Nginx) ---

# Build the production images
build-prod:
	docker compose build frontend backend db

# Run production containers in detached mode
run-prod:
	docker compose up -d frontend backend db

# Stop and remove production containers
stop-prod:
	docker compose down

# View logs of production containers
logs-prod:
	docker compose logs -f frontend backend db

# Restart production containers
restart-prod: stop-prod run-prod

# Build and run production in one step
startup-prod: build-prod run-prod


### --- Development Commands (Hot Reload with Vite) ---

# Run dev containers (hot reload + backend + db)
run-dev:
	docker compose up frontend-dev backend db

# View logs of dev containers
logs-dev:
	docker compose logs -f frontend-dev backend db

# Stop only the dev containers
stop-dev:
	docker compose stop frontend-dev backend db
