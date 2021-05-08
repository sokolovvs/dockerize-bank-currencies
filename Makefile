start:
		bash ./installation.sh
		docker-compose up --build --remove-orphans -d
build:
	go mod download && CGO_ENABLED=0 GOOS=linux go build -o ./.bin/app ./cmd/app/main.go
stop:
		docker ps -aq --filter="name=dockerize-bcr-dev" | xargs -r docker stop
migration:
		bash ./create-migration.sh
migrate:
		docker-compose start flyway