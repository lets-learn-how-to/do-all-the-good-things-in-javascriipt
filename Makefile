start: build
	@yarn start

start-frontend:
	@cd frontend && yarn start

.PHONY: build
build: build-frontend

build-frontend: frontend/node_modules frontend/build

frontend/build:
	@echo "Building Frontend"
	@cd frontend && yarn build

.PHONY: test
test: install test-frontend test-backend

test-frontend:
	@echo "Testing Frontend..."
	@cd frontend && CI=true yarn test

test-backend:
	@echo "Testing Backend..."
	@CI=true yarn test

.PHONY: install
install: node_modules frontend/node_modules

node_modules:
	@yarn install
frontend/node_modules:
	@cd frontend && yarn install
