FROM node:lts-alpine3.10

EXPOSE 80 

RUN apk add docker-compose make bash git

RUN git clone https://github.com/rayanah/level-1-project 

WORKDIR /level-1-project

ENV DOCKER_BUILDKIT=1

ENTRYPOINT ["/usr/bin/make"]

cmd ["level-1-project"]
