start:
		bash ./installation.sh
		docker-compose up --build --remove-orphans -d
stop:
		docker ps -aq --filter="name=dockerize-bcr-dev" | xargs -r docker stop
migration:
		bash ./create-migration.sh
migrate:
		docker-compose start flyway