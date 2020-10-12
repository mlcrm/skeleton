start:
	@docker-compose -p app up --build -d
stop:
	@docker-compose -p app down
build:
	@docker-compose -p app build
perm:
	@sudo chown -R ${USER}:${USER} ./docker/db
	@sudo chown -R ${USER}:${USER} ./docker/nginx/logs
show:
	@echo "==================== all containers ======================== "
	@docker ps -a
	@echo "==================== all build images ====================== "
	@docker images
	@echo "==================== all networks ========================== "
	@docker network ls
migration:
	@docker exec -it php-fpm php bin/console make:migration
migrate:
	@docker exec -it php-fpm php bin/console doctrine:migrations:migrate