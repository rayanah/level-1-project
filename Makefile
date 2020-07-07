.ONESHELL:
SHELL = /bin/bash

build: build-level-1-project-components build-level-1-project-tools

level-1-project: pull up

build-level-1-project-components:
	DOCKER_BUILDKIT=1 docker-compose build

build-level-1-project-tools:
	docker build --tag rayanah/level-1-project .

pull:
	docker pull rayanah/level-1-project
	docker pull rayanah/department-service
	docker pull rayanah/office-service
	docker pull rayanah/person-service
	docker pull rayanah/role-service
	docker pull rayanah/project-assessment-site

run:
	docker run -it --rm rayanah/level-1-project


up:
	docker-compose up -d

down:
	docker-compose down

clean:
	docker rm -f $$(docker ps -qa)

logs:
	docker-compose logs -f
