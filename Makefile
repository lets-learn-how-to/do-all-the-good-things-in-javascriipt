export CI=true

start:
	@yarn start

test: test-frontend test-backend

test-frontend:
	@cd frontend && yarn test

test-backend:
	@yarn test
