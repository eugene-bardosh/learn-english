 .ONESHELL:

 SHELL := bash

deafult:
	docker-compose ps -a
build:
	docker-compose build

db:
	docker-compose up db


app:
	CURRENT_UID=`id -u`:`id -g` docker-compose up app


app-shell:
	CURRENT_UID=`id -u`:`id -g` docker-compose run --rm app /bin/bash

app-ipython:
	CURRENT_UID=`id -u`:`id -g` docker-compose run --rm app python manage.py shell -i ipython

down:
	docker-compose down

down-all:
	docker-compose down -v --remove-orphans