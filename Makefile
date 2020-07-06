.ONESHELL:
SHELL = /bin/bash

build: build-level1project-components build-level1project-tools

petclinic: pull up

build-level1project-components:
	DOCKER_BUILDKIT=1 docker-compose build

build-level1project-tools:
	DOCKER_BUILDKIT=1 docker build --tag rayanah/level-1-project .

pull:
	docker pull rayanah/department-server
	docker pull rayanah/office-service
	docker pull rayanah/person-service
	docker pull rayanah/role-service
	docker pull rayanah/project-assessment-site

run:
	docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock rayanah/level-1-project

cbuild:
	docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock rayanah/level-1-project build

up:
	docker-compose up -d

down:
	docker-compose down

clean:
	docker rm -f $(docker ps -qa)

logs:
	docker-compose logs -f
