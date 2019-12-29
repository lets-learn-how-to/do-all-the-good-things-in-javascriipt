start:
	@yarn start

start-frontend:
	@cd frontend && yarn start

test: test-frontend test-backend

test-frontend:
	@echo "Testing Frontend..."
	@cd frontend && CI=true yarn test

test-backend:
	@echo "Testing Backend..."
	@CI=true yarn test
